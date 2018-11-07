using Test
using GSL

@testset "Random number generation" begin
    # Setup a generator
    R = rng_alloc(gsl_rng_mt19937)
    @test rng_name(R) == "mt19937"
    # Generate a couple of random numbers
    for i=1:10
        x = rng_uniform_pos(R)
        @test typeof(x) == Cdouble
        @test 0 < x < 1
    end
end
