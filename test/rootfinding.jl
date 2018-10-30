using Test
using GSL

# Target function and derivative
function myfun(x)
    return x^5+1
end
function myfun_deriv(x)
    return 5*x^4
end

# Function forms that GSL accepts
function myfun_f(x::Cdouble, params::Ptr{Cvoid})
    return myfun(x)
end
function myfun_df(x::Cdouble, params::Ptr{Cvoid})
    return myfun_deriv(x)
end
function myfun_fdf(x::Cdouble, params::Ptr{Cvoid}, f::Ptr{Cdouble}, df::Ptr{Cdouble})
    unsafe_store!(f, myfun(x))
    unsafe_store!(df, myfun_deriv(x))
    return nothing
end

# Wrapping structs
f = @gsl_function(myfun_f)
fdf = @gsl_function_fdf(myfun_f, myfun_df, myfun_fdf)

# They can explicitly be constructed this way:
# f = gsl_function( @cfunction(myfun_f, Cdouble, (Cdouble, Ptr{Cvoid})),
#                   0 )
# fdf = gsl_function_fdf( @cfunction( myfun_f,   Cdouble, (Cdouble, Ptr{Cvoid})),
#                         @cfunction( myfun_df,  Cdouble, (Cdouble, Ptr{Cvoid})),
#                         @cfunction( myfun_fdf, Cvoid, (Cdouble, Ptr{Cvoid}, Ptr{Cdouble}, Ptr{Cdouble})),
#                         0 )

@testset "RootFinding" begin

    @testset "Names" begin
        # Test that algorithms loaded OK
        function algorithm_name(f::Ptr{gsl_root_fsolver_type})
            unsafe_string(unsafe_load(f).name)
        end
        @test algorithm_name(gsl_root_fsolver_bisection) == "bisection"
        @test algorithm_name(gsl_root_fsolver_brent) == "brent"
        @test algorithm_name(gsl_root_fsolver_falsepos) == "falsepos"
        @test algorithm_name(gsl_root_fdfsolver_newton) == "newton"
        @test algorithm_name(gsl_root_fdfsolver_secant) == "secant"
        @test algorithm_name(gsl_root_fdfsolver_steffenson) == "steffenson"
    end

    @testset "Secant method" begin
        T = gsl_root_fsolver_bisection
        @testset "alloc/free" begin
            A = gsl_root_fsolver_alloc(T)
            gsl_root_fsolver_free(A)
        end
        @testset "Solve" begin
            solver = gsl_root_fsolver_alloc(T)
            gsl_root_fsolver_set(solver, f, -10, 10)

            status = GSL_CONTINUE
            while status == GSL_CONTINUE
                gsl_root_fsolver_iterate(solver)
                x = gsl_root_fsolver_root(solver)
                status = gsl_root_test_residual(myfun(x), 1e-10)
            end
            @test status == GSL_SUCCESS
            x = gsl_root_fsolver_root(solver)
            @test abs(myfun(x)) < 1e-10
            gsl_root_fsolver_free(solver)
        end
    end

    @testset "Newton's method" begin               
        T = gsl_root_fdfsolver_newton

        @testset "alloc/free" begin
            A = gsl_root_fdfsolver_alloc(T)
            gsl_root_fdfsolver_free(A)
        end

        @testset "Solve" begin
            solver = gsl_root_fdfsolver_alloc(T)
            gsl_root_fdfsolver_set(solver, fdf, 5)

            status = GSL_CONTINUE
            while status == GSL_CONTINUE
                gsl_root_fdfsolver_iterate(solver)
                x = gsl_root_fdfsolver_root(solver)
                status = gsl_root_test_residual(myfun(x), 1e-10)
            end
            @test status == GSL_SUCCESS
            x = gsl_root_fdfsolver_root(solver)
            @test abs(myfun(x)) < 1e-10
            gsl_root_fdfsolver_free(solver)
        end       
    end
end
