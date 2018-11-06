using GSL
using Test

@testset "Legendre" begin
    lmax = 4
    x = 0.5

    @test sf_legendre_Pl_array(lmax, x) == [1.0, 0.5, -0.125, -0.4375, -0.2890625]
    @test sf_legendre_Pl_deriv_array(lmax, x) == ([1.0,0.5,-0.125,-0.4375,-0.2890625],[0.0,1.0,1.5,0.375,-1.5625])
end

@testset "Associated Legendre" begin
    lmax = 5
    m = 2
    x = 0.5


    # Using new interface. Fix indexing to use hardcoded values.
    idx = Int.(sf_legendre_array_index.(2:lmax, m+1))
    
    # these give subtly different answers on 32/64-bit.    
    @test sf_legendre_array(GSL_SF_LEGENDRE_NONE, lmax, x)[idx]         ≈ [2.25, 5.625, 4.21875, -4.921875]
    
    @test sf_legendre_deriv_array(GSL_SF_LEGENDRE_NONE, lmax, x)[1][idx] ≈ [2.25,5.625,4.21875,-4.921875]
    @test sf_legendre_deriv_array(GSL_SF_LEGENDRE_NONE, lmax, x)[2][idx] ≈ [-3.0,3.75,33.75,55.78125]
    
    @test sf_legendre_array(GSL_SF_LEGENDRE_SPHARM, lmax, x)[idx] ≈ [0.2897056515173923, 0.38324455366248106, 
                                                                     0.18816934037548766, -0.15888479843070935]
    @test sf_legendre_deriv_array(GSL_SF_LEGENDRE_SPHARM, lmax, x)[1][idx] ≈ [0.2897056515173923,0.38324455366248106,
                                                                              0.18816934037548766,-0.15888479843070935]
    @test sf_legendre_deriv_array(GSL_SF_LEGENDRE_SPHARM, lmax, x)[2][idx] ≈ [-0.38627420202318974,0.2554963691083207,
                                                                              1.5053547230039015,1.8006943822147061]
end
