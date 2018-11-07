using GSL
using Compat

try
    # Replace with `@isdefined` check on 0.7
    VERBOSE
catch
    @eval VERBOSE = true
end

# Very basic tests
#Check that the two forms of the special functions agree
include("testfunctions.jl")

x=randn()
nu=abs(randn())
xabs=abs(x)
s=round(Int, rand()*10)+1
t=round(Int, rand()*10)+1+s #t>s

for sf in (
    :sf_airy_Ai, :sf_airy_Bi, :sf_airy_Ai_scaled, :sf_airy_Bi_scaled, #7.4.1 Airy functions
    :sf_airy_Ai_deriv, :sf_airy_Bi_deriv, :sf_airy_Ai_deriv_scaled, :sf_airy_Bi_deriv_scaled,#7.4.2 Derivative of Airy functions
)
    for mode in (PREC_SINGLE, PREC_DOUBLE, PREC_APPROX)
        @eval @sf_test $sf $x $mode
    end
end

for sf in (
    :sf_airy_zero_Ai, :sf_airy_zero_Bi, #7.4.3 Zeros of Airy Functions
    :sf_airy_zero_Ai_deriv, :sf_airy_zero_Bi_deriv, #7.4.4 Zeros of Derivatives of Airy Functions
    :sf_bessel_zero_J0, :sf_bessel_zero_J1, #7.5.13 Zeros of Regular Bessel Functions
    )
    @eval @sf_test $sf $s
end

for sf in (
    :sf_bessel_J0, :sf_bessel_J1, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_I0, :sf_bessel_I1, :sf_bessel_I0_scaled, :sf_bessel_I1_scaled, #7.5.3 Regular Modified Cylindrical Bessel Functions
    :sf_bessel_j0, :sf_bessel_j1, :sf_bessel_j2, #7.5.5 Regular Spherical Bessel Functions
    :sf_bessel_i0_scaled, :sf_bessel_i1_scaled, :sf_bessel_i2_scaled,  #7.5.7 Regular Modified Spherical Bessel Functions
    :sf_clausen, #7.6 Clausen Functions
    :sf_dawson, #7.9 Dawson Function
    :sf_dilog, #7.11.1 Dilogarithm of real argument
    )
    @eval @sf_test $sf $x
end

for sf in (
    :sf_bessel_Jn, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_In, :sf_bessel_In_scaled, #7.5.3 Regular Modified Cylindrical Bessel Functions
    )
    @eval @sf_test $sf $s $x
end

for sf in (
    :sf_bessel_Jn_array, #7.5.1 Regular Cylindrical Bessel Functions
    :sf_bessel_In_array, :sf_bessel_In_scaled_array, #7.5.3 Regular Modified Cylindrical Bessel Functions
)
    @eval begin
        u=$sf(s, t, x)
        VERBOSE && println($sf)
        for n=s:t
            y = $(Symbol(string(sf)[1:end-6]))(n, x)
            VERBOSE && println(n, '\t', y, '\t', u[n-s+1])
            @test y ≈ u[n-s+1]
        end
    end
end

for sf in (
    :sf_bessel_Y0, :sf_bessel_Y1, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_K0, :sf_bessel_K0_scaled, :sf_bessel_K1, :sf_bessel_K1_scaled, #7.5.4 Irregular Modified Cylindrical Bessel Functions
    :sf_bessel_y0, :sf_bessel_y1, :sf_bessel_y2, #7.5.6 Irregular Spherical Bessel Functions
    :sf_bessel_k0_scaled, :sf_bessel_k1_scaled, :sf_bessel_k2_scaled, #7.5.8 Irregular Modified Spherical Bessel Functions
    :sf_debye_1, :sf_debye_2, :sf_debye_3, :sf_debye_4, :sf_debye_5, :sf_debye_6, #7.10 Debye Functions
)
    @eval @sf_test $sf $xabs
end

for sf in (
    :sf_bessel_Yn, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_Kn, :sf_bessel_Kn_scaled, #7.5.4 Irregular Modified Cylindrical Bessel Functions
    :sf_bessel_jl, #7.5.5 Regular Spherical Bessel Functions
    :sf_bessel_yl, #7.5.6 Irregular Spherical Bessel Functions
    :sf_bessel_il_scaled, #7.5.7 Regular Modified Spherical Bessel Functions
    :sf_bessel_kl_scaled, #7.5.8 Irregular Modified Spherical Bessel Functions
    )
    @eval @sf_test $sf $s $xabs
end

for sf in (
    :sf_bessel_Yn_array, #7.5.2 Irregular Cylindrical Bessel Functions
    :sf_bessel_Kn_array, :sf_bessel_Kn_scaled_array, #7.5.4 Irregular Modified Cylindrical Bessel Functions
)
    @eval begin
        u=$sf(s, t, xabs)
        VERBOSE && println($sf)
        for n=s:t
            y = $(Symbol(string(sf)[1:end-6]))(n, xabs)
            VERBOSE && println(n, '\t', y, '\t', u[n-s+1])
            @test y ≈ u[n-s+1]
        end
    end
end

for (sf, scalar_sf) in (
    (:sf_bessel_jl_array, :sf_bessel_jl),
    (:sf_bessel_jl_steed_array, :sf_bessel_jl), #7.5.5 Regular Spherical Bessel Functions
    (:sf_bessel_yl_array, :sf_bessel_yl), #7.5.6 Irregular Spherical Bessel Functions
    (:sf_bessel_il_scaled_array, :sf_bessel_il_scaled), #7.5.7 Regular Modified Spherical Bessel Functions
    (:sf_bessel_kl_scaled_array, :sf_bessel_kl_scaled), #7.5.8 Irregular Modified Spherical Bessel Functions
    )
    @eval begin
         u=$sf(t, xabs)
         VERBOSE && println($sf)
         for n=0:t
             y = $scalar_sf(n, xabs)
             VERBOSE && println(n, '\t', y, '\t', u[n+1])
             @test y ≈ u[n+1]
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
    @eval @sf_test $sf $nu $xabs
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
#            @test y ≈ u[n+1]
#        end
#    end
#end

#7.5.13 Zeros of Regular Bessel Functions
@eval @sf_test sf_bessel_zero_Jnu $nu $s

#7.7.1 Normalized Hydrogenic Bound States
@eval @sf_test sf_hydrogenicR $t $s $nu $xabs

#TODO 7.7.2 Coulomb Wave Functions

#7.7.3 Coulomb Wave Function Normalization Constant
#TODO
#u=sf_coulomb_CL_e(nu, xabs)
#v=sf_coulomb_CL_array(nu, 0, xabs)
#println('\t', u, '\t', u)

#7.8 Coupling Coefficients

#Just test some simple cases

l=rand(1:20)
m=2*round(Int, (rand()-.5)*(l-1))+l%2
for sf in (
    :sf_coupling_3j, #7.8.1 3-j Symbols
    )
    @eval begin
        u=$sf(l, l, 0, m, -m, 0)
        v=(-1)^((l-m)/2)/sqrt(l+1)
        VERBOSE && println($sf, '\t', u, '\t', v)
        @test u ≈ v
    end
end

a,b=l,m
c=round(Int, (a+b)/4)*2
#XXX fail
#for sf in (
#    :sf_coupling_6j, #7.8.2 6-j Symbols
#    )
#    @eval begin
#        u=$sf(a, b, c, 0, c, b)
#        v=(-1)^((a+b+c)/2)/sqrt((b+1)*(c+1))
#        VERBOSE && println($sf, '\t', u, '\t', v)
#        @test u ≈ v
#    end
#end

#TODO Should try to test within the domain where it is not 0
a, b, c, d, J, K = Int[2 * round(Int, rand() * 10) for i in 1:6]
for sf in (
    :sf_coupling_9j, #7.8.3 9-j Symbols
    )
    @eval begin
        u=$sf(a, b, J, c, d, J, K, K, 0)
        v=(-1)^((b+c+J+K)/2)/sqrt((J+1)*(K+1))
        v*=sf_coupling_6j(a, b, J, d, c, K)
        VERBOSE && println($sf, '\t', u, '\t', v)
        @test u ≈ v
    end
end

#7.11.2 Dilogarithm of Complex Argument
y=sf_dilog_e(xabs)
z=sf_complex_dilog_e(xabs,0.0)
VERBOSE && println(y, z)
@test z[1].val == y.val
@test z[1].err == y.err

#7.12 Elementary Operations
y=randn()
z=sf_multiply_e(x, y)
@test z.val == x*y
w=sf_multiply_err_e(x, 0., y, 0.)
@test z.val == w.val
@test z.err == w.err

#7.13 Elliptic integrals

begin
    local x=2rand()-1
    for sf in (
            :sf_ellint_Kcomp, :sf_ellint_Ecomp, #7.13.3 Legendre Form of Complete Elliptic Integrals
        )
        for mode in (PREC_DOUBLE, PREC_SINGLE, PREC_APPROX)
            @eval @sf_test $sf $x $mode
        end
    end

    local y=2rand()-1
    for sf in (:sf_ellint_Pcomp,
            :sf_ellint_F, :sf_ellint_E, #7.13.4 Legendre Form of Incomplete Elliptic Integrals
            )
        for mode in (PREC_DOUBLE, PREC_SINGLE, PREC_APPROX)
            @eval @sf_test $sf $x $y $mode
        end
    end

    #7.13.5 Carlson Forms
    for mode in (PREC_DOUBLE, PREC_SINGLE, PREC_APPROX)
        @eval @sf_test sf_ellint_RC $xabs $(abs(y)) $mode
    end

    z=rand()
    for sf in (
            :sf_ellint_D, #7.13.4 Legendre Form of Incomplete Elliptic Integrals
            :sf_ellint_RD, :sf_ellint_RF, #7.13.5 Carlson Forms
            )
        for mode in (PREC_DOUBLE, PREC_SINGLE, PREC_APPROX)
            @eval @sf_test $sf $xabs $(abs(y)) $(abs(z)) $mode
        end
    end

    w=abs(randn())
    for sf in (:sf_ellint_RJ,) #7.13.5 Carlson Forms
        for mode in (PREC_DOUBLE, PREC_SINGLE, PREC_APPROX)
            @eval @sf_test $sf $(abs(x)) $(abs(y)) $(abs(z)) $w $mode
        end
    end
end

#7.14 Elliptic Functions (Jacobi)
#TODO test
#sf_elljac_e(xabs, abs(y))

#7.15 Error Functions
for sf in (
        :sf_erf, #7.15.1 Error Function
        :sf_erfc,#7.15.2 Complementary Error Function
        :sf_log_erfc, #7.15.3 Log Complementary Error Function
        :sf_erf_Z, :sf_erf_Q, :sf_hazard, #7.15.4 Probability functions
        )
    @eval @sf_test $sf $x
end

#7.16 Exponential Functions
#7.17 Exponential Integrals
#7.18 Fermi-Dirac Function
for sf in (
        :sf_exp, #7.16.1 Exponential Function
        )
    @eval begin
        u = $sf(x)
        v = $(Symbol(sf, "_e"))(x)
        #XXX cause bus error
        #p = $(Symbol(sf, "_e10_e"))(x)
        #7.16.3 Exponentiation With Error Estimate
        a = $(Symbol(sf, "_err_e"))(x, 0)
        #XXX cause bus error
        #b = $(Symbol(sf, "_err_e10_e"))(x, 0)
        @test isapprox(u, v.val, atol=v.err)
        #@test u ≈ p.val*10^p.e10
        @test isapprox(u, a.val, atol=a.err)
        #@test u ≈ b.val*10^b.e10
    end
end

for sf in (
        :sf_exp_mult, #7.16.1 Exponential Function
        )
    @eval begin
        u = $sf(x, y)
        v = $(Symbol(sf, "_e"))(x, y)
        #XXX These functions cause bus error
        #p = $(Symbol(sf, "_e10_e"))(x, y)
        @test isapprox(u, v.val, atol=v.err)
        #@test u ≈ p.val*10^p.e10
    end
end

for sf in (
        :sf_expm1, :sf_exprel, :sf_exprel_2, #7.16.2 Relative Exponential Functions
        :sf_expint_E1, :sf_expint_E2, #7.17.1 Exponential Integral
        :sf_expint_Ei, #7.17.2 Ei(x)
        :sf_Shi, :sf_Chi, #7.17.3 Hyperbolic Integrals
        :sf_Si, #7.17.5 Trigonometric Integrals
        :sf_atanint, #7.17.6 Arctangent Integral
        #:sf_fermi_dirac_m1, :sf_fermi_dirac_0, :sf_fermi_dirac_1, :sf_fermi_dirac_2, :sf_fermi_dirac_mhalf, :sf_fermi_dirac_half, #7.18.1 Complete Fermi-Dirac Integrals
        )
    @eval @sf_test $sf $x
end

for sf in (
        :sf_expint_3, #7.17.4 Ei_3(x)
        :sf_Ci, #7.17.5 Trigonometric Integrals
        )
    @eval @sf_test $sf $xabs
end

#7.18.2 Incomplete Fermi-Dirac Integrals
@eval @sf_test sf_fermi_dirac_inc_0 $(abs(x)) $(abs(y))

n=rand(1:20)
for sf in (
        :sf_exprel_n, #7.16.2 Relative Exponential Functions
        :sf_fermi_dirac_int, #7.18.1 Complete Fermi-Dirac Integrals
        )
    @eval @sf_test $sf $n $x
end
for sf in (:sf_expint_En,) #7.17.1 Exponential Integral
    @eval @sf_test $sf $n $xabs
end

#7.19 Gamma and Beta Functions
for sf in (
        :sf_gamma, :sf_gammainv, #7.19.1 Gamma Functions
        )
    @eval @sf_test $sf $x
end

for sf in (
        :sf_lngamma, #7.19.1 Gamma Functions
        )
    @eval begin
        u = $sf(x)
        v = $(Symbol(sf, "_e"))(x)
        w = $(Symbol(sf, "_sgn_e"))(x)
        VERBOSE && println($sf, "\t", u, "\t", v)
        @test isapprox(u, v.val, atol=v.err)
        @test isapprox(u, w[1].val, atol=w[1].err)
    end
end

#7.19.1 Gamma Functions
@eval @sf_test sf_gammastar $xabs

w=sf_lngamma_complex_e(xabs, 0)
v=sf_lngamma_e(xabs)
@test isapprox(v.val, w[1].val, atol=v.err + w[1].err)
@test isapprox(0, w[2].val, atol=max(eps(), w[2].err))
w=sf_lngamma_complex_e(-xabs, 0)
v=sf_lngamma_e(-xabs)
@test isapprox(v.val, w[1].val, atol=v.err+w[1].err)

#7.19.2 Factorials
for sf in (
        :sf_fact, :sf_doublefact, :sf_lnfact, :sf_lndoublefact, #7.19.2 Factorials
        )
    @eval @sf_test $sf $n
end

m=rand(1:20)
for sf in (:sf_choose, :sf_lnchoose,) #7.19.2 Factorials
    @eval @sf_test $sf $(m+n) $n
end

@eval @sf_test sf_taylorcoeff $n $xabs

for sf in (:sf_poch, :sf_pochrel,) #7.19.3 Pochhammer Symbol
    @eval @sf_test $sf $x $y
end

for sf in (:sf_lnpoch,) #7.19.1 Gamma Functions
    @eval begin
        u = $sf(abs(x), abs(y))
        v = $(Symbol(sf, "_e"))(abs(x), abs(y))
        w = $(Symbol(sf, "_sgn_e"))(abs(x), abs(y))
        VERBOSE && println($sf, "\t", u, "\t", v)
        @test isapprox(u, v.val, atol=v.err)
        @test isapprox(u, w[1].val, atol=w[1].err)
    end
end

q=rand()
for sf in (
        :sf_gamma_inc, :sf_gamma_inc_Q, :sf_gamma_inc_P, #7.19.4 Incomplete Gamma Functions
        )
    @eval @sf_test $sf $xabs $q
end

#7.19.5 Beta Functions
@eval @sf_test sf_beta $x $y
@eval @sf_test sf_lnbeta $xabs $(abs(y))
@eval @sf_test sf_beta_inc $x $y $q

#7.20 Gegenbauer Functions
for sf in (
        :sf_gegenpoly_1, :sf_gegenpoly_2, :sf_gegenpoly_3,
        )
    @eval @sf_test $sf $x $y
end
@eval @sf_test sf_gegenpoly_n $s $xabs $y

for sf in (:sf_gegenpoly_array,)
    @eval begin
        VERBOSE && println($sf)
        u=$sf(s, xabs, y)
        for n=0:s
            local n
            yy = $(Symbol(string(sf)[1:end-6], "_n"))(n, xabs, y)
            @test yy ≈ u[n+1]
            VERBOSE && println(n,"\t",yy,"\t",u[n+1])
        end
    end
end

#7.21 Hypergeometric Functions
@eval @sf_test sf_hyperg_0F1 $x $y
@eval @sf_test sf_hyperg_1F1_int $s $t $x
@eval @sf_test sf_hyperg_1F1 $x $y $z
@eval @sf_test sf_hyperg_U_int $s $(min(t,2)) $xabs #TODO test e10
@eval @sf_test sf_hyperg_U $xabs $y $(abs(z)) #TODO test e10
for sf in (
    :sf_hyperg_2F1, :sf_hyperg_2F1_conj, :sf_hyperg_2F1_renorm,
    :sf_hyperg_2F1_conj_renorm
)
    local sgn = sign(rand()-.5)
    try
        @eval @sf_test $sf $x $y $z $q
    catch crap
        println(crap)
        rethrow(crap)
    end
end

@eval @sf_test sf_hyperg_2F0 $x $y $(-abs(z))
@test sf_hyperg_2F0(x,y,-abs(z)) ≈ (1/abs(z))^x* sf_hyperg_U(x,1+x-y,1/abs(z))

#7.22 Laguerre Functions
for sf in (:sf_laguerre_1, :sf_laguerre_2, :sf_laguerre_3)
    @eval @sf_test $sf $x $y
end
@eval @sf_test sf_laguerre_n $s $xabs $y

#7.23 Lambert W Functions
for sf in (:sf_lambert_W0, :sf_lambert_Wm1)
    @eval @sf_test $sf $xabs
end

#7.24 Legendre Functions and Spherical Harmonics
begin
    local x=2rand()-1

    #7.24.1 Legendre Polynomials
    for sf in (:sf_legendre_P1, :sf_legendre_P2, :sf_legendre_P3,
               :sf_legendre_Q0, :sf_legendre_Q1,)
        @eval @sf_test $sf $x
    end

    for sf in (:sf_legendre_Pl, :sf_legendre_Ql,)
        @eval @sf_test $sf $s $x
    end

    #TODO
    #sf_legendre_Pl_array
    #sf_legendre_Pl_deriv_array

    #7.24.2 Associated Legendre Polynomials and Spherical Harmonics
    for sf in (:sf_legendre_Plm, :sf_legendre_sphPlm)
        @eval @sf_test $sf $t $s $x
    end

    #TODO
    #sf_legendre_Plm_array
    #sf_legendre_Plm_deriv_array
    #sf_legendre_sphPlm_array
    #sf_legendre_sphPlm_deriv_array
    #sf_legendre_array_size
    #@test sf_legendre_array_size(m+n, n) == m+1
end

#7.24.3 Conical Functions
begin
    local y=abs(randn())-1
    for sf in (:sf_conicalP_half, :sf_conicalP_mhalf, :sf_conicalP_0, :sf_conicalP_1)
        @eval @sf_test $sf $x $y
    end

    for sf in (:sf_conicalP_sph_reg, :sf_conicalP_cyl_reg)
        @eval @sf_test $sf $(s-1) $x $y
    end
end

#7.24.4 Radial Functions for Hyperbolic Space
begin
    local lambda=randn()
    local eta=abs(randn())

    for sf in (:sf_legendre_H3d_0, :sf_legendre_H3d_1)
        @eval @sf_test $sf $lambda $eta
    end

    @eval @sf_test sf_legendre_H3d $n $lambda $eta
    #TODO sf_legendre_H3d_array
end

#7.25 Logarithm and Related Functions
begin
    local x=abs(randn())
    for sf in (:sf_log, :sf_log_abs, :sf_log_1plusx, :sf_log_1plusx_mx)
        @eval @sf_test $sf $x
    end

    local w=sf_complex_log_e(x,0)
    @test isapprox(sf_log(x), w[1].val, atol=w[1].err)
    @test isapprox(0, w[2].val, atol=w[2].err)
end

#TODO 7.26 Mathieu Functions

#7.27 Power Function
@eval @sf_test sf_pow_int $x $n

#7.28 Psi (Digamma) Function
begin
    #7.28.1 Digamma Function
    @eval @sf_test sf_psi_int $n
    @eval @sf_test sf_psi $x
    @eval @sf_test sf_psi_1piy $y
    #7.28.2 Trigamma Function
    @eval @sf_test sf_psi_1_int $n
    @eval @sf_test sf_psi_1 $x
    #7.28.3 Polygamma Function
    @eval @sf_test sf_psi_n $n $xabs
end

#7.29 Synchrotron Functions
for sf in (:sf_synchrotron_1, :sf_synchrotron_2)
    @eval @sf_test $sf $xabs
end

#7.30 Transport Functions
for sf in (:sf_transport_2, :sf_transport_3, :sf_transport_4, :sf_transport_5)
    @eval @sf_test $sf $xabs
end

#7.31 Trigonometric Functions
#7.31.1 Circular Trigonometric Functions
for sf in (:sf_sin, :sf_cos, :sf_sinc)
    @eval @sf_test $sf $x
end
@eval @sf_test sf_hypot $x $y

#TODO 7.31.2 Trigonometric Functions for Complex Arguments
#7.31.3 Hyperbolic Trigonometric Functions
@eval @sf_test sf_lnsinh $xabs
@eval @sf_test sf_lncosh $x

#TODO 7.31.4 Conversion Functions
#TODO 7.31.5 Restriction Functions
#TODO 7.31.6 Trigonometric Functions With Error Estimates

#7.32 Zeta Functions
#7.32.1 Riemann Zeta Function
@eval @sf_test sf_zeta_int $(n+2)
@eval @sf_test sf_zeta $x
#7.32.2 Riemann Zeta Function Minus One
@eval @sf_test sf_zetam1_int $(n+2)
@eval @sf_test sf_zetam1 $x
#7.32.3 Hurwitz Zeta Function
@eval @sf_test sf_hzeta $(1+xabs) $(abs(y))
#7.32.4 Eta Function
@eval @sf_test sf_eta_int $(n+2)
@eval @sf_test sf_eta $x

