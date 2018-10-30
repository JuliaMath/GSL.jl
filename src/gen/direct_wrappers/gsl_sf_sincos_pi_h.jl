#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_sincos_pi.h #######################################################


"""
    gsl_sf_sin_pi_e(x, result) -> Cint

C signature:
`int gsl_sf_sin_pi_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_sin_pi_e(x, result)
    ccall((:gsl_sf_sin_pi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_sin_pi(x) -> Cdouble

C signature:
`double gsl_sf_sin_pi(const double x)`
"""
function gsl_sf_sin_pi(x)
    ccall((:gsl_sf_sin_pi, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_cos_pi_e(x, result) -> Cint

C signature:
`int gsl_sf_cos_pi_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_cos_pi_e(x, result)
    ccall((:gsl_sf_cos_pi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_cos_pi(x) -> Cdouble

C signature:
`double gsl_sf_cos_pi(const double x)`
"""
function gsl_sf_cos_pi(x)
    ccall((:gsl_sf_cos_pi, libgsl), Cdouble, (Cdouble,), x)
end

