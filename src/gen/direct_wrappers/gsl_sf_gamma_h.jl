#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_gamma.h ###########################################################


"""
    gsl_sf_lngamma_e(x, result) -> Cint

C signature:
`int gsl_sf_lngamma_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_lngamma_e(x, result)
    ccall((:gsl_sf_lngamma_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_lngamma(x) -> Cdouble

C signature:
`double gsl_sf_lngamma(const double x)`
"""
function gsl_sf_lngamma(x)
    ccall((:gsl_sf_lngamma, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_lngamma_sgn_e(x, result_lg, sgn) -> Cint

C signature:
`int gsl_sf_lngamma_sgn_e(double x, gsl_sf_result * result_lg, double *sgn)`
"""
function gsl_sf_lngamma_sgn_e(x, result_lg, sgn)
    ccall((:gsl_sf_lngamma_sgn_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), x, result_lg, sgn)
end

"""
    gsl_sf_gamma_e(x, result) -> Cint

C signature:
`int gsl_sf_gamma_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_gamma_e(x, result)
    ccall((:gsl_sf_gamma_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_gamma(x) -> Cdouble

C signature:
`double gsl_sf_gamma(const double x)`
"""
function gsl_sf_gamma(x)
    ccall((:gsl_sf_gamma, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_gammastar_e(x, result) -> Cint

C signature:
`int gsl_sf_gammastar_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_gammastar_e(x, result)
    ccall((:gsl_sf_gammastar_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_gammastar(x) -> Cdouble

C signature:
`double gsl_sf_gammastar(const double x)`
"""
function gsl_sf_gammastar(x)
    ccall((:gsl_sf_gammastar, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_gammainv_e(x, result) -> Cint

C signature:
`int gsl_sf_gammainv_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_gammainv_e(x, result)
    ccall((:gsl_sf_gammainv_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_gammainv(x) -> Cdouble

C signature:
`double gsl_sf_gammainv(const double x)`
"""
function gsl_sf_gammainv(x)
    ccall((:gsl_sf_gammainv, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_lngamma_complex_e(zr, zi, lnr, arg) -> Cint

C signature:
`int gsl_sf_lngamma_complex_e(double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`
"""
function gsl_sf_lngamma_complex_e(zr, zi, lnr, arg)
    ccall((:gsl_sf_lngamma_complex_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lnr, arg)
end

"""
    gsl_sf_taylorcoeff_e(n, x, result) -> Cint

C signature:
`int gsl_sf_taylorcoeff_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_taylorcoeff_e(n, x, result)
    ccall((:gsl_sf_taylorcoeff_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_taylorcoeff(n, x) -> Cdouble

C signature:
`double gsl_sf_taylorcoeff(const int n, const double x)`
"""
function gsl_sf_taylorcoeff(n, x)
    ccall((:gsl_sf_taylorcoeff, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_fact_e(n, result) -> Cint

C signature:
`int gsl_sf_fact_e(const unsigned int n, gsl_sf_result * result)`
"""
function gsl_sf_fact_e(n, result)
    ccall((:gsl_sf_fact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_fact(n) -> Cdouble

C signature:
`double gsl_sf_fact(const unsigned int n)`
"""
function gsl_sf_fact(n)
    ccall((:gsl_sf_fact, libgsl), Cdouble, (Cuint,), n)
end

"""
    gsl_sf_doublefact_e(n, result) -> Cint

C signature:
`int gsl_sf_doublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function gsl_sf_doublefact_e(n, result)
    ccall((:gsl_sf_doublefact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_doublefact(n) -> Cdouble

C signature:
`double gsl_sf_doublefact(const unsigned int n)`
"""
function gsl_sf_doublefact(n)
    ccall((:gsl_sf_doublefact, libgsl), Cdouble, (Cuint,), n)
end

"""
    gsl_sf_lnfact_e(n, result) -> Cint

C signature:
`int gsl_sf_lnfact_e(const unsigned int n, gsl_sf_result * result)`
"""
function gsl_sf_lnfact_e(n, result)
    ccall((:gsl_sf_lnfact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_lnfact(n) -> Cdouble

C signature:
`double gsl_sf_lnfact(const unsigned int n)`
"""
function gsl_sf_lnfact(n)
    ccall((:gsl_sf_lnfact, libgsl), Cdouble, (Cuint,), n)
end

"""
    gsl_sf_lndoublefact_e(n, result) -> Cint

C signature:
`int gsl_sf_lndoublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function gsl_sf_lndoublefact_e(n, result)
    ccall((:gsl_sf_lndoublefact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_lndoublefact(n) -> Cdouble

C signature:
`double gsl_sf_lndoublefact(const unsigned int n)`
"""
function gsl_sf_lndoublefact(n)
    ccall((:gsl_sf_lndoublefact, libgsl), Cdouble, (Cuint,), n)
end

"""
    gsl_sf_lnchoose_e(n, m, result) -> Cint

C signature:
`int gsl_sf_lnchoose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function gsl_sf_lnchoose_e(n, m, result)
    ccall((:gsl_sf_lnchoose_e, libgsl), Cint, (Cuint, Cuint, Ref{gsl_sf_result}), n, m, result)
end

"""
    gsl_sf_lnchoose(n, m) -> Cdouble

C signature:
`double gsl_sf_lnchoose(unsigned int n, unsigned int m)`
"""
function gsl_sf_lnchoose(n, m)
    ccall((:gsl_sf_lnchoose, libgsl), Cdouble, (Cuint, Cuint), n, m)
end

"""
    gsl_sf_choose_e(n, m, result) -> Cint

C signature:
`int gsl_sf_choose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function gsl_sf_choose_e(n, m, result)
    ccall((:gsl_sf_choose_e, libgsl), Cint, (Cuint, Cuint, Ref{gsl_sf_result}), n, m, result)
end

"""
    gsl_sf_choose(n, m) -> Cdouble

C signature:
`double gsl_sf_choose(unsigned int n, unsigned int m)`
"""
function gsl_sf_choose(n, m)
    ccall((:gsl_sf_choose, libgsl), Cdouble, (Cuint, Cuint), n, m)
end

"""
    gsl_sf_lnpoch_e(a, x, result) -> Cint

C signature:
`int gsl_sf_lnpoch_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_lnpoch_e(a, x, result)
    ccall((:gsl_sf_lnpoch_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_lnpoch(a, x) -> Cdouble

C signature:
`double gsl_sf_lnpoch(const double a, const double x)`
"""
function gsl_sf_lnpoch(a, x)
    ccall((:gsl_sf_lnpoch, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_lnpoch_sgn_e(a, x, result, sgn) -> Cint

C signature:
`int gsl_sf_lnpoch_sgn_e(const double a, const double x, gsl_sf_result * result, double * sgn)`
"""
function gsl_sf_lnpoch_sgn_e(a, x, result, sgn)
    ccall((:gsl_sf_lnpoch_sgn_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), a, x, result, sgn)
end

"""
    gsl_sf_poch_e(a, x, result) -> Cint

C signature:
`int gsl_sf_poch_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_poch_e(a, x, result)
    ccall((:gsl_sf_poch_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_poch(a, x) -> Cdouble

C signature:
`double gsl_sf_poch(const double a, const double x)`
"""
function gsl_sf_poch(a, x)
    ccall((:gsl_sf_poch, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_pochrel_e(a, x, result) -> Cint

C signature:
`int gsl_sf_pochrel_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_pochrel_e(a, x, result)
    ccall((:gsl_sf_pochrel_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_pochrel(a, x) -> Cdouble

C signature:
`double gsl_sf_pochrel(const double a, const double x)`
"""
function gsl_sf_pochrel(a, x)
    ccall((:gsl_sf_pochrel, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_gamma_inc_Q_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_Q_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_gamma_inc_Q_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_Q_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_gamma_inc_Q(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc_Q(const double a, const double x)`
"""
function gsl_sf_gamma_inc_Q(a, x)
    ccall((:gsl_sf_gamma_inc_Q, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_gamma_inc_P_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_P_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_gamma_inc_P_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_P_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_gamma_inc_P(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc_P(const double a, const double x)`
"""
function gsl_sf_gamma_inc_P(a, x)
    ccall((:gsl_sf_gamma_inc_P, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_gamma_inc_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_e(const double a, const double x, gsl_sf_result * result)`
"""
function gsl_sf_gamma_inc_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

"""
    gsl_sf_gamma_inc(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc(const double a, const double x)`
"""
function gsl_sf_gamma_inc(a, x)
    ccall((:gsl_sf_gamma_inc, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

"""
    gsl_sf_lnbeta_e(a, b, result) -> Cint

C signature:
`int gsl_sf_lnbeta_e(const double a, const double b, gsl_sf_result * result)`
"""
function gsl_sf_lnbeta_e(a, b, result)
    ccall((:gsl_sf_lnbeta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, result)
end

"""
    gsl_sf_lnbeta(a, b) -> Cdouble

C signature:
`double gsl_sf_lnbeta(const double a, const double b)`
"""
function gsl_sf_lnbeta(a, b)
    ccall((:gsl_sf_lnbeta, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

"""
    gsl_sf_lnbeta_sgn_e(x, y, result, sgn) -> Cint

C signature:
`int gsl_sf_lnbeta_sgn_e(const double x, const double y, gsl_sf_result * result, double * sgn)`
"""
function gsl_sf_lnbeta_sgn_e(x, y, result, sgn)
    ccall((:gsl_sf_lnbeta_sgn_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), x, y, result, sgn)
end

"""
    gsl_sf_beta_e(a, b, result) -> Cint

C signature:
`int gsl_sf_beta_e(const double a, const double b, gsl_sf_result * result)`
"""
function gsl_sf_beta_e(a, b, result)
    ccall((:gsl_sf_beta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, result)
end

"""
    gsl_sf_beta(a, b) -> Cdouble

C signature:
`double gsl_sf_beta(const double a, const double b)`
"""
function gsl_sf_beta(a, b)
    ccall((:gsl_sf_beta, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

"""
    gsl_sf_beta_inc_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_beta_inc_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function gsl_sf_beta_inc_e(a, b, x, result)
    ccall((:gsl_sf_beta_inc_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

"""
    gsl_sf_beta_inc(a, b, x) -> Cdouble

C signature:
`double gsl_sf_beta_inc(const double a, const double b, const double x)`
"""
function gsl_sf_beta_inc(a, b, x)
    ccall((:gsl_sf_beta_inc, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

