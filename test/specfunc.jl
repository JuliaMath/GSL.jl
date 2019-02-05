using GSL
using SpecialFunctions
using Test

@testset "SpecialFunctions" begin
    x = 1 + rand()

    function specfun_compare(name, f1, f2, arg; rtol=10*eps())
        @testset "$name" begin
            v1 = f1(arg)
            v2 = f2(arg)
            @test isapprox(v1, v2, rtol=rtol)
        end
    end

    @testset "Error functions" begin
        specfun_compare("erf", sf_erf, erf, x)
        specfun_compare("erfc", sf_erfc, erfc, x)        
    end

    specfun_compare("dawson", sf_dawson, dawson, x)

    specfun_compare("zeta", sf_zeta, zeta, x)

    @testset "Airy functions" begin
        specfun_compare("airy ai", x -> sf_airy_Ai(x, GSL_PREC_DOUBLE), airyai, x, rtol=1e-14)
        specfun_compare("airy ai prime", x -> sf_airy_Ai_deriv(x, GSL_PREC_DOUBLE), airyaiprime, x, rtol=1e-14)
    end

    
    @testset "Bessel functions" begin
        specfun_compare("besselI0", x -> besseli(0, x), sf_bessel_I0, x )
        specfun_compare("besselI1", x -> besseli(1, x), sf_bessel_I1, x )
        for i=0:10
            specfun_compare("besselIn($i)", x -> besseli(i, x), x -> sf_bessel_In(i, x), x, rtol=15*eps() )        
        end
        for i=0:10
            specfun_compare("besselInu($i)", x -> besselix(i, x), x -> sf_bessel_Inu_scaled(i, x), x, rtol=15*eps() )        
        end

        specfun_compare("besselJ0", besselj0, sf_bessel_J0, x )
        specfun_compare("besselJ1", besselj1, sf_bessel_J1, x )
        for i=0:10
            specfun_compare("besselJn($i)", x -> besselj(i, x), x -> sf_bessel_Jn(i, x), x )        
        end
        for i=0:10
            specfun_compare("besselJnu($i)", x -> besseljx(i, x), x -> sf_bessel_Jnu(i, x), x, rtol=15*eps() )        
        end

        specfun_compare("besselK0", x -> besselk(0, x), sf_bessel_K0, x )
        specfun_compare("besselK1", x -> besselk(1, x), sf_bessel_K1, x )
        for i=0:10
            specfun_compare("besselKn($i)", x -> besselk(i, x), x -> sf_bessel_Kn(i, x), x )        
        end
        for i=0:10
            specfun_compare("besselKnu($i)", x -> besselkx(i, x), x -> sf_bessel_Knu_scaled(i, x), x )        
        end

        specfun_compare("besselY0", x -> bessely(0, x), sf_bessel_Y0, x )
        specfun_compare("besselY1", x -> bessely(1, x), sf_bessel_Y1, x )
        for i=0:10
            specfun_compare("besselYn($i)", x -> bessely(i, x), x -> sf_bessel_Yn(i, x), x )        
        end
        for i=0:10
            specfun_compare("besselYnu($i)", x -> besselyx(i, x), x -> sf_bessel_Ynu(i, x), x )        
        end
        
    end
end
