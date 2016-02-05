using GSL
using Base.Test

let
    lmax = 10
    m = 4
    x = -0.5

    @test length(sf_legendre_Plm_array(lmax, m, x)) == lmax - m + 1
    #XXX sf_legendre_Plm_deriv_array(lmax, m, x) ReadOnlyMemoryError
    @test length(sf_legendre_sphPlm_array(lmax, m, x)) == lmax - m + 1
    #XXX sf_legendre_sphPlm_deriv_array(lmax, m, x) ReadOnlyMemoryError

end
