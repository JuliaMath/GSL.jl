using Test
using GSL

# Target function and derivative
function myfun(x)
    return x^5+1
end
function myfun_deriv(x)
    return 5*x^4
end
# Combo function
function myfun_fdf(x::Cdouble)
    return myfun(x), myfun_deriv(x)
end


# Wrapping structs
f = @gsl_function(myfun)
fdf = @gsl_function_fdf(myfun, myfun_deriv, myfun_fdf)
fdf2 = @gsl_function_fdf(myfun, myfun_deriv)


@testset "RootFinding" begin

    @testset "Names" begin
        # Test that algorithms loaded OK
        function algorithm_name(f)
            unsafe_string(f[].name)
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
            A = root_fsolver_alloc(T)
            root_fsolver_free(A)
        end
        @testset "Solve" begin
            solver = root_fsolver_alloc(T)
            root_fsolver_set(solver, f, -10, 10)

            status = GSL_CONTINUE
            maxiter = 40
            iter = 0
            while status == GSL_CONTINUE
                root_fsolver_iterate(solver)
                x = root_fsolver_root(solver)
                status = root_test_residual(myfun(x), 1e-10)
                iter += 1
                if iter==maxiter
                    error("No convergence")
                end
            end
            @test status == GSL_SUCCESS
            x = root_fsolver_root(solver)
            @test abs(myfun(x)) < 1e-10
            root_fsolver_free(solver)
        end
    end

    @testset "Newton's method" begin               
        T = gsl_root_fdfsolver_newton

        @testset "alloc/free" begin
            A = root_fdfsolver_alloc(T)
            root_fdfsolver_free(A)
        end

        @testset "Solve" begin
            solver = root_fdfsolver_alloc(T)
            root_fdfsolver_set(solver, fdf, 5)

            status = GSL_CONTINUE
            iter, maxiter = 0,20
            while status == GSL_CONTINUE
                root_fdfsolver_iterate(solver)
                x = root_fdfsolver_root(solver)
                status = root_test_residual(myfun(x), 1e-10)
                iter += 1
                if iter==maxiter
                    error("No convergence")
                end                
            end
            @test status == GSL_SUCCESS
            x = root_fdfsolver_root(solver)
            @test abs(myfun(x)) < 1e-10
            root_fdfsolver_free(solver)
        end

        @testset "Solve / simplestruct" begin
            solver = root_fdfsolver_alloc(T)
            root_fdfsolver_set(solver, fdf2, 5)

            status = GSL_CONTINUE
            iter, maxiter = 0,20
            while status == GSL_CONTINUE
                root_fdfsolver_iterate(solver)
                x = root_fdfsolver_root(solver)
                status = root_test_residual(myfun(x), 1e-10)
                iter += 1
                if iter==maxiter
                    error("No convergence")
                end                
            end
            @test status == GSL_SUCCESS
            x = root_fdfsolver_root(solver)
            @test abs(myfun(x)) < 1e-10
            root_fdfsolver_free(solver)
        end       
        
    end
end
