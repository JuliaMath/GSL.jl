using Test
using GSL
using LinearAlgebra

# Define problem
n = 5
roots = collect(1.0:5.0)
function fmulti(x::Array{Float64}, out::Array{Float64})
    out[1:n] =  (x .- roots).^2
end

@testset "Multidimensional Rootfinding" begin
    # Initial guess
    v0 = Cdouble[1.0, 5.0, 2.0, 1.5, -1.0]

    vinit = gsl_vector_alloc(n)
    for i=1:n
        gsl_vector_set(vinit, i-1, v0[i])
    end

    # Setup solver
    gsl_func = @gsl_multiroot_function(fmulti, 5)
    dnewton_solver = gsl_multiroot_fsolver_alloc(gsl_multiroot_fsolver_dnewton, n)
    gsl_multiroot_fsolver_set(dnewton_solver, gsl_func, vinit)


    # Run
    maxiter = 100
    converged, status = 0,0
    for iter = 1:maxiter
        status = gsl_multiroot_fsolver_iterate(dnewton_solver)
        x = gsl_multiroot_fsolver_root(dnewton_solver)
        dx = gsl_multiroot_fsolver_dx(dnewton_solver)
        converged = gsl_multiroot_test_delta(dx, x, 0, 1e-8)
        if status==GSL_SUCCESS && converged==GSL_SUCCESS
            break
        end
    end

    @test converged==GSL_SUCCESS
    @test status==GSL_SUCCESS
        
    vec = gsl_multiroot_fsolver_root(dnewton_solver)
    v1 = unsafe_wrap(Array{Cdouble}, gsl_vector_ptr(vec, 0), n)

    @test v1 ≈ roots atol=1e-5

    gsl_multiroot_fsolver_free(dnewton_solver)
    gsl_vector_free(vinit)
end
