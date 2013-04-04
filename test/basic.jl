# Very basic tests

using GSL
using Test

#Check that the two forms of the special functions agree
x=randn()
for sf in (:sf_bessel_J0,)
    @eval begin
        v=$(symbol(string(sf, "_e")))(x)
        @test_approx_eq_eps $sf(x) v.val v.err
    end
end
