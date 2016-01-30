using GSL
using Base.Test

let
    f(x) = x^3
    x = 1.0
    h = 1e-3
    @test GSL.deriv_central(f, x, h) == (2.999999999985127,3.035415081613547e-10)
    @test GSL.deriv_forward(f,x,h) == (3.000000118166138,6.922361397388152e-7)
    @test GSL.deriv_backward(f,x,h) == (3.000000024449814,8.395277874648078e-7)
end

