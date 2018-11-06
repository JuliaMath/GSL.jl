using Test
using GSL
using LinearAlgebra
using Random

### DERIVATIVE-FREE
# Define problem
n = 5
roots = collect(1.0:5.0)
function fmulti(x::Array{Float64}, out::Array{Float64})
    out[1:n] =  (x .- roots).^2
end
@testset "Multidimensional Rootfinding without Derivative" begin
    # Initial guess
    v0 = Cdouble[1.0, 5.0, 2.0, 1.5, -1.0]

    vinit = vector_alloc(n)
    for i=1:n
        vector_set(vinit, i-1, v0[i])
    end

    # Setup solver
    gsl_func = @gsl_multiroot_function(fmulti, 5)
    dnewton_solver = multiroot_fsolver_alloc(gsl_multiroot_fsolver_dnewton, n)
    multiroot_fsolver_set(dnewton_solver, gsl_func, vinit)


    # Run
    maxiter = 100
    converged, status = 0,0
    for iter = 1:maxiter
        status = multiroot_fsolver_iterate(dnewton_solver)
        x = multiroot_fsolver_root(dnewton_solver)
        dx = multiroot_fsolver_dx(dnewton_solver)
        converged = multiroot_test_delta(dx, x, 0, 1e-8)
        if status==GSL_SUCCESS && converged==GSL_SUCCESS
            break
        end
    end

    @test converged==GSL_SUCCESS
    @test status==GSL_SUCCESS
        
    vec = multiroot_fsolver_root(dnewton_solver)
    v1 = unsafe_wrap(Array{Cdouble}, vector_ptr(vec, 0), n)

    @test v1 ≈ roots atol=1e-5

    multiroot_fsolver_free(dnewton_solver)
    vector_free(vinit)
end

### WITH DERIVATIVE
# Define problem
n = 2
function f2dim(x1, x2)
    f1 = x1*x2
    f2 = x1^2 - 1
    return f1, f2
end
function df2dim(x1, x2)
    df1dx1 = x2
    df1dx2 = x1
    df2dx1 = 2*x1
    df2dx2 = 0.0
    return df1dx1, df1dx2, df2dx1, df2dx2
end
function fdf2dim(x1, x2)
    f1 = x1*x2
    f2 = x1^2 - 1    
    df1dx1 = x2
    df1dx2 = x1
    df2dx1 = 2*x1
    df2dx2 = 0.0
    return f1, f2, df1dx1, df1dx2, df2dx1, df2dx2
end
# GSL-style wrappers
function F(x::Ptr{gsl_vector},
           p::Ptr{Cvoid},
           f::Ptr{gsl_vector})
    x1 = vector_get(x, 0)
    x2 = vector_get(x, 1)
    f1, f2 = f2dim(x1, x2)
    vector_set(f, 0, f1)
    vector_set(f, 1, f2)
    return Cint(GSL_SUCCESS)
end
function DF(x::Ptr{gsl_vector},
            p::Ptr{Cvoid},
            J::Ptr{gsl_matrix})
    x1 = vector_get(x, 0)
    x2 = vector_get(x, 1)
    df1dx1, df1dx2, df2dx1, df2dx2 = df2dim(x1, x2)    
    matrix_set(J, 0, 0, df1dx1)
    matrix_set(J, 0, 1, df1dx2)
    matrix_set(J, 1, 0, df2dx1)
    matrix_set(J, 1, 1, df2dx2)
    return Cint(GSL_SUCCESS)
end
function FDF(x::Ptr{gsl_vector},
             p::Ptr{Cvoid},
             f::Ptr{gsl_vector},
             J::Ptr{gsl_matrix})
    F(x, p, f)
    DF(x, p, J)
    return Cint(GSL_SUCCESS)
end
# Vector/matrix wrappers
function f_vec(x::Array{Float64},
               f::Array{Float64})
    x1 = x[1]
    x2 = x[2]
    f1, f2 = f2dim(x1, x2)
    f[1] = f1
    f[2] = f2    
end
function df_vec(x::Array{Float64},
                Jtrans::Array{Float64,2})
    x1 = x[1]
    x2 = x[2]
    df1dx1, df1dx2, df2dx1, df2dx2 = df2dim(x1, x2)    
    Jtrans[1,1] = df1dx1
    Jtrans[2,1] = df1dx2
    Jtrans[1,2] = df2dx1
    Jtrans[2,2] = df2dx2
end
function fdf_vec(x::Array{Float64},
                 f::Array{Float64},
                 Jtrans::Array{Float64,2})
    x1 = x[1]
    x2 = x[2]
    f1, f2, df1dx1, df1dx2, df2dx1, df2dx2 = fdf2dim(x1, x2)
    f[1] = f1
    f[2] = f2        
    Jtrans[1,1] = df1dx1
    Jtrans[2,1] = df1dx2
    Jtrans[1,2] = df2dx1
    Jtrans[2,2] = df2dx2
end


# Newton runner
function run_newton(gsl_func::gsl_multiroot_function_fdf)
    # Initial guess
    Random.seed!(1)
    v0 = rand(2)
    vinit = vector_alloc(n)
    for i=1:n
        vector_set(vinit, i-1, v0[i])
    end    
    # Setup solver
    newton_solver = multiroot_fdfsolver_alloc(gsl_multiroot_fdfsolver_newton, n)
    multiroot_fdfsolver_set(newton_solver, gsl_func, vinit)
    # Run
    abstol = 1e-14
    reltol = 1e-14    
    maxiter = 10
    converged, status = 0,0
    for iter = 1:maxiter
        status = multiroot_fdfsolver_iterate(newton_solver)
        @test status==GSL_SUCCESS
        x = multiroot_fdfsolver_root(newton_solver)
        dx = multiroot_fdfsolver_dx(newton_solver)
        converged = multiroot_test_delta(dx, x, abstol, reltol)
        if converged==GSL_SUCCESS
            break
        end
    end
    @test converged==GSL_SUCCESS
    #x = gsl_multiroot_fdfsolver_root(newton_solver)
    #@show wrap_gsl_vector(x)
    multiroot_fdfsolver_free(newton_solver)
    vector_free(vinit)
end
# Do tests
@testset "Multidimenaional Rootfinding with Derivative" begin
    @testset "GSL-style wrappers" begin
        gsl_func_direct =
            gsl_multiroot_function_fdf(
                # f
                @cfunction(F, Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector})),
                # df
                @cfunction(DF, Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_matrix})),
                # fdf
                @cfunction(FDF, Cint, (Ptr{gsl_vector}, Ptr{Cvoid}, Ptr{gsl_vector}, Ptr{gsl_matrix})),
                # n
                n,
                # params
                0
            )
        run_newton(gsl_func_direct)
    end
    @testset "Array/Matrix wrappers" begin
        @testset "3-argument macro" begin
            gsl_func_vec = @gsl_multiroot_function_fdf(f_vec, df_vec, n)
            run_newton(gsl_func_vec)
        end
        @testset "4-argument macro" begin
            gsl_func_vec = @gsl_multiroot_function_fdf(f_vec, df_vec, fdf_vec, n)
            run_newton(gsl_func_vec)
        end
    end
end
