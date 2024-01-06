using Test
using GSL

@testset "1d minimization" begin
    f = x -> cos(x) + one(x)
    @testset "fminimizer $name" for (alg, name) in [
        (gsl_min_fminimizer_goldensection, "goldensection")
        (gsl_min_fminimizer_brent, "brent")
        (gsl_min_fminimizer_quad_golden, "quad-golden")
    ]
        m, m_exact = 2.0, pi
        a, b = 0.0, 6.0
        epsabs, epsrel = 1e-3, 0e-0
        s = GSLMinFMinimizer(alg)
        @test min_fminimizer_name(s) == name
        min_fminimizer_set(s, f, m, a, b)

        maxiter = 100
        status = converged = 0
        for i in 1:maxiter
            status = min_fminimizer_iterate(s)
            m = min_fminimizer_x_minimum(s)
            a = min_fminimizer_x_lower(s)
            b = min_fminimizer_x_upper(s)
            converged = min_test_interval(a, b, epsabs, epsrel)
            status == converged == GSL_SUCCESS && break
        end
        @test status == converged == GSL_SUCCESS
        @test m ≈ m_exact atol=epsabs rtol=epsrel
    end
end
