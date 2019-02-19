# Test from original GSL.jl
# (c) 2013 Jiahao Chen <jiahao@mit.edu>


using Test
using GSL
using SpecialFunctions

@testset "Hypergeometric functions" begin

    a = 3*randn()
    b = 3*randn()
    c = 3*randn()
    x = 2*rand()-1

    # Test definition
    @test sf_hyperg_2F1_renorm(a, b, c, x) ≈ hypergeom([a, b], c, x)/gamma(c)

    # Test special cases
    @test log(1+complex(x)) ≈ x*hypergeom([1.0, 1.0], 2.0, -x)
    @test (1-x)^-a ≈ hypergeom([a, 1.0], 1.0, x)
    @test asin(x) ≈ x*hypergeom([0.5, 0.5], 1.5, x^2)
    @test (exp(x)-1)/x ≈ hypergeom(1.0, 2.0, x)
    @test (1+x)*exp(x) ≈ hypergeom(2.0, 1.0, x)

    #gsl function is unstable for b=2
    #@test x*sf_hyperg_U(1.0, 2.0, x) ≈ 1.0
    @test 1+x ≈ sf_hyperg_U(-1.0, -1.0, x)

    #"Cancellation theorem" that reduces order of hypergeometric function
    @test hypergeom([a], [a], x) ≈ hypergeom(Float64[], Float64[], x)

    c = a+b+3*rand()
    @test hypergeom([a, b], c, 1.0) ≈ (gamma(c)*gamma(c-a-b)/(gamma(c-a)*gamma(c-b)))

    #Kummer's theorem
    res = hypergeom_e([a, b], 1+a-b, -1.0)
    @test isapprox(res.val, (gamma(1+a-b)*gamma(1+a/2)/(gamma(1+a)*gamma(1+a/2-b))), atol=res.err)

    #Kummer's transformation
    @test hypergeom(a,b,x) ≈ exp(x)*hypergeom(b-a,b,-x)
    
    #NaN handling
    for (h, condition) in ((hypergeom, isnan), (hypergeom_e, r->isnan(r.val)))
        @test all(condition,
                (h((),(),NaN),
                 h((),NaN,x), h((),c,NaN),
                 h(NaN,c,x), h(a,NaN,x), h(a,c,NaN),
                 h((NaN,b),(),x), h((a,NaN),(),x), h((a,b),(),NaN),
                 h((NaN,b),c,x), h((a,NaN),c,x), h((a,b),NaN,x), h((a,b),c,NaN)
                ))
    end
end
