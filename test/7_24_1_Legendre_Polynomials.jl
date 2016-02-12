using GSL
using Base.Test

let
    lmax = 4
    x = 0.5

    @test sf_legendre_Pl_array(lmax, x) == [1.0, 0.5, -0.125, -0.4375, -0.2890625]
    @test sf_legendre_Pl_deriv_array(lmax, x) == ([1.0,0.5,-0.125,-0.4375,-0.2890625],[0.0,1.0,1.5,0.375,-1.5625])

end
