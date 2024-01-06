using Test
using GSL


@testset "Chebyshev" begin
    # tests from FastChebInterp.jl
    f = x -> exp(x) / (1 + 2x^2)
    f′ = x -> f(x) * (1 - 4x/(1 + 2x^2))
    lb, ub = (-0.3, 0.9)
    x = 0.2

    p = GSLCheb(48)

    cheb_init(p, f, lb, ub)
    @test !(cheb_eval_n(p, 10, x) ≈ f(x))
    @test cheb_eval(p, x) ≈ f(x)
    cheb_init(p, f′, lb, ub)
    @test !(cheb_eval_n(p, 10, x) ≈ f′(x))
    @test cheb_eval(p, x) ≈ f′(x)
end
