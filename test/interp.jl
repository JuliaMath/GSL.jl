using Test
using GSL

@testset "Linear Interpolation" begin
    # Data
    xa = [0.0, 1.0, 2.0, 3.0]
    ya = [10.0, 20.0, 40.0, 80.0]
    n = length(xa)
    # Alloc and setup
    obj = interp_alloc(gsl_interp_linear, n)
    acc = interp_accel_alloc()
    interp_init(obj, xa, ya, n)
    # Interpolate
    x = 1.5
    y = interp_eval(obj, xa, ya, x, acc)
    # Test
    @test isapprox(y, 30.0, rtol=1e-14)
    # Free
    interp_accel_free(acc)
    interp_free(obj)
end
