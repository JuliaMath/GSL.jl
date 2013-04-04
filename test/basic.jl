# Very basic tests

using GSL
using Test

#for sf in (:sf_debye_1, :sf_debye_2, :sf_debye_3, :sf_debye_4, :sf_debye_5, :sf_debye_6, :sf_dilog, :sf_hazard, :sf_Shi, :sf_Chi, :sf_Si, :sf_Ci, :sf_atanint, :sf_fermi_dirac_m1, :sf_fermi_dirac_0, :sf_fermi_dirac_1, :sf_fermi_dirac_2, :sf_fermi_dirac_mhalf, :sf_fermi_dirac_half, :sf_fermi_dirac_3half, :sf_gamma, :sf_lngamma, :sf_gammastar, :sf_gammainv, :sf_fact, :sf_doublefact, :sf_lnfact, :sf_lndoublefact, :sf_lambert_W0, :sf_lambert_Wm1, :sf_legendre_P1, :sf_legendre_P2, :sf_legendre_P3, :sf_legendre_Q0, :sf_legendre_Q1, :sf_log, :sf_log_abs, :sf_log_1plusx, :sf_log_1plusx_mx, :sf_psi_int, :sf_psi, :sf_psi_1piy, :sf_psi_1_int, :sf_psi_1, :sf_synchrotron_1, :sf_synchrotron_2, :sf_transport_2, :sf_transport_3, :sf_transport_4, :sf_transport_5, :sf_sin, :sf_cos, :sf_sinc, :sf_lnsinh, :sf_lncosh, :sf_angle_restrict_symm, :sf_angle_restrict_pos, :sf_zeta_int, :sf_zeta, :sf_zetam1_int, :sf_zetam1, :sf_airy_zero_Ai, :sf_airy_zero_Bi, :sf_airy_zero_Ai_deriv, :sf_airy_zero_Bi_deriv, :sf_bessel_zero_J0, :sf_bessel_zero_J1, :sf_bessel_J0, :sf_bessel_J1, :sf_bessel_Y0, :sf_bessel_Y1, :sf_bessel_I0, :sf_bessel_I1, :sf_bessel_I0_scaled, :sf_bessel_I1_scaled, :sf_bessel_K0, :sf_bessel_K1, :sf_bessel_K0_scaled, :sf_bessel_K1_scaled, :sf_bessel_j0, :sf_bessel_j1, :sf_bessel_j2, :sf_bessel_y0, :sf_bessel_y1, :sf_bessel_y2, :sf_bessel_i0_scaled, :sf_bessel_i1_scaled, :sf_bessel_i2_scaled, :sf_bessel_k0_scaled, :sf_bessel_k1_scaled, :sf_bessel_k2_scaled, :sf_clausen, :sf_dawson)

#Check that the two forms of the special functions agree
x=randn()
nu=abs(randn())
xabs=abs(x)
s=int(rand()*10)
t=int(rand()*10)+1+s #t>s


for sf in (
    :sf_airy_Ai, :sf_airy_Bi, :sf_airy_Ai_scaled, :sf_airy_Bi_scaled, #7.4.1 Airy functions
    :sf_airy_Ai_deriv, :sf_airy_Bi_deriv, :sf_airy_Ai_deriv_scaled, :sf_airy_Bi_deriv_scaled,#7.4.2 Derivative of Airy functions
)
    @eval begin
        u=$sf(x, PREC_DOUBLE)
        v=$(symbol(string(sf, "_e")))(x, PREC_DOUBLE)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_airy_zero_Ai, :sf_airy_zero_Bi, #7.4.3 Zeros of Airy Functions
    :sf_airy_zero_Ai_deriv, :sf_airy_zero_Bi_deriv, #7.4.4 Zeros of Derivatives of Airy Functions
    :sf_bessel_zero_J0, :sf_bessel_zero_J1, #7.5.13 Zeros of Regular Bessel Functions
    )
    @eval begin
        u=$sf(s)
        v=$(symbol(string(sf, "_e")))(s)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_bessel_J0, :sf_bessel_J1, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_I0, :sf_bessel_I1, :sf_bessel_I0_scaled, :sf_bessel_I1_scaled, #7.5.3 Regular Modified Cylindrical Bessel Functions
    :sf_bessel_j0, :sf_bessel_j1, :sf_bessel_j2, #7.5.5 Regular Spherical Bessel Functions
    :sf_bessel_i0_scaled, :sf_bessel_i1_scaled, :sf_bessel_i2_scaled,  #7.5.7 Regular Modified Spherical Bessel Functions
    :sf_clausen, #7.6 Clausen Functions
    :sf_dawson, #7.9 Dawson Function
    :sf_debye_1, :sf_debye_2, :sf_debye_3, :sf_debye_4, :sf_debye_5, :sf_debye_6, #7.10 Debye Functions
    :sf_dilog, #7.11.1 Dilogarithm of real argument
    )
    @eval begin
        u=$sf(x)
        v=$(symbol(string(sf, "_e")))(x)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_bessel_Jn, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_In, :sf_bessel_In_scaled, #7.5.3 Regular Modified Cylindrical Bessel Functions
    )
    @eval begin
        u=$sf(s, x)
        v=$(symbol(string(sf, "_e")))(s, x)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_bessel_Jn_array, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_In_array, :sf_bessel_In_scaled_array, #7.5.3 Regular Modified Cylindrical Bessel Functions
)
    @eval begin
        u=$sf(s, t, x)
        println($sf)
        for n=s:t
            y = $(symbol(string(sf)[1:end-6]))(n, x)
            println(n, '\t', y, '\t', u[n-s+1])
            @test_approx_eq y u[n-s+1]
        end
    end
end

for sf in (
    :sf_bessel_Y0, :sf_bessel_Y1, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_K0, :sf_bessel_K0_scaled, :sf_bessel_K1, :sf_bessel_K1_scaled, #7.5.4 Irregular Modified Cylindrical Bessel Functions
    :sf_bessel_y0, :sf_bessel_y1, :sf_bessel_y2, #7.5.6 Irregular Spherical Bessel Functions
    :sf_bessel_k0_scaled, :sf_bessel_k1_scaled, :sf_bessel_k2_scaled  #7.5.8 Irregular Modified Spherical Bessel Functions
)
    @eval begin
        u=$sf(xabs)
        v=$(symbol(string(sf, "_e")))(xabs)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_bessel_Yn, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_Kn, :sf_bessel_Kn_scaled, #7.5.4 Irregular Modified Cylindrical Bessel Functions
    :sf_bessel_jl, #7.5.5 Regular Spherical Bessel Functions
    :sf_bessel_yl, #7.5.6 Irregular Spherical Bessel Functions
    :sf_bessel_il_scaled, #7.5.7 Regular Modified Spherical Bessel Functions
    :sf_bessel_kl_scaled, #7.5.8 Irregular Modified Spherical Bessel Functions
    )
    @eval begin
        u=$sf(s, xabs)
        v=$(symbol(string(sf, "_e")))(s, xabs)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_bessel_Yn_array, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_Kn_array, :sf_bessel_Kn_scaled_array, #7.5.4 Irregular Modified Cylindrical Bessel Functions
)
    @eval begin
        u=$sf(s, t, xabs)
        println($sf)
        for n=s:t
            y = $(symbol(string(sf)[1:end-6]))(n, xabs)
            println(n, '\t', y, '\t', u[n-s+1])
            @test_approx_eq y u[n-s+1]
        end
    end
end

for (sf, scalar_sf) in (
    (:sf_bessel_jl_array, :sf_bessel_jl),
    (:sf_bessel_jl_steed_array, :sf_bessel_jl), #7.5.5 Regular Spherical Bessel Functions
    (:sf_bessel_yl_array, :sf_bessel_yl), #7.5.6 Irregular Spherical Bessel Functions
    (:sf_bessel_il_scaled_array, :sf_bessel_il_scaled), #7.5.7 Regular Modified Spherical Bessel Functions
    (:sf_bessel_kl_scaled_array, :sf_bessel_kl_scaled), #7.5.8 Iregular Modified Spherical Bessel Functions
    )
    @eval begin
        u=$sf(t, xabs)
        println($sf)
        for n=0:t
            y = $scalar_sf(n, xabs)
            println(n, '\t', y, '\t', u[n+1])
            @test_approx_eq y u[n+1]
        end
    end
end

for sf in (
    :sf_bessel_Jnu, #7.5.9 Regular Bessel Function—Fractional Order
    :sf_bessel_Ynu, #7.5.10 Irregular Bessel Function—Fractional Order
    :sf_bessel_Inu, :sf_bessel_Inu_scaled, #7.5.11 Regular Modified Bessel Functions—Fractional Order
    :sf_bessel_Knu, :sf_bessel_lnKnu, :sf_bessel_Knu_scaled, #7.5.12 Irregular Modified Bessel Functions—Fractional Order
    :sf_hydrogenicR_1, #7.7 Coulomb Functions
    )
    @eval begin
        u=$sf(nu, xabs)
        v=$(symbol(string(sf, "_e")))(nu, xabs)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

#TODO Wrapper broken
#xvec = abs(randn(s))
#for (sf, scalar_sf) in (
#    (:sf_bessel_sequence_Jnu_e, :sf_bessel_Jnu), #7.5.9 Regular Bessel Function—Fractional Order
#    )
#    @eval begin
#        u=$sf(nu, PREC_DOUBLE, xvec)
#        println($sf)
#        for xabs in xvec
#            y = $scalar_sf(nu, xabs)
#            println(n, '\t', y, '\t', u[n+1])
#            @test_approx_eq y u[n+1]
#        end
#    end
#end

for sf in (
    :sf_bessel_zero_Jnu, #7.5.13 Zeros of Regular Bessel Functions
    )
    @eval begin
        u=$sf(nu, s)
        v=$(symbol(string(sf, "_e")))(nu, s)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

for sf in (
    :sf_hydrogenicR, #7.7.1 Normalized Hydrogenic Bound States
    )
    @eval begin
        u=$sf(t, s, nu, xabs)
        v=$(symbol(string(sf, "_e")))(t, s, nu, xabs)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq_eps u v.val v.err
    end
end

#TODO 7.7.2 Coulomb Wave Functions

#7.7.3 Coulomb Wave Function Normalization Constant
u=sf_coulomb_CL_e(nu, xabs) 
#TODO
#v=sf_coulomb_CL_array(nu, 0, xabs) 
println('\t', u, '\t', u)

#7.8 Coupling Coefficients

#Just test some simple cases

l=int(rand()*20)
m=2*int((rand()-.5)*(l-1))+l%2
for sf in (
    :sf_coupling_3j, #7.8.1 3-j Symbols
    )
    @eval begin
        u=$sf(l, l, 0, m, -m, 0)
        v=(-1)^((l-m)/2)/sqrt(l+1)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq u v
    end
end

a,b=l,m
c=int((a+b)/4)*2
for sf in (
    :sf_coupling_6j, #7.8.2 6-j Symbols
    )
    @eval begin
        u=$sf(a, b, c, 0, c, b)
        v=(-1)^((a+b+c)/2)/sqrt((b+1)*(c+1))
        println($sf, '\t', u, '\t', v)
        @test_approx_eq u v
    end
end

#TODO Should try to test within the domain where it is not 0
a, b, c, d, J, K=2*int(rand(6)*10)
for sf in (
    :sf_coupling_9j, #7.8.3 9-j Symbols
    )
    @eval begin
        u=$sf(a, b, J, c, d, J, K, K, 0)
        v=(-1)^((b+c+J+K)/2)/sqrt((J+1)*(K+1))
        v*=sf_coupling_6j(a, b, J, d, c, K)
        println($sf, '\t', u, '\t', v)
        @test_approx_eq u v
    end
end

#TODO
#7.11.2 Dilogarithm of Complex Argument
#7.12 Elementary Operations
#gsl_sf_complex_dilog_e
