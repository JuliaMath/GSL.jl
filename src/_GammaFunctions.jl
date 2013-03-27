#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 7.19.1 Gamma Functions #
##########################
export gsl_sf_gamma, gsl_sf_gamma_e, gsl_sf_lngamma, gsl_sf_lngamma_e,
       gsl_sf_lngamma_sgn_e, gsl_sf_gammastar, gsl_sf_gammastar_e,
       gsl_sf_gammainv, gsl_sf_gammainv_e, gsl_sf_lngamma_complex_e


# These routines compute the Gamma function \Gamma(x), subject to x not being a
# negative integer or zero.  The function is computed using the real Lanczos
# method. The maximum value of x such that \Gamma(x) is not considered an
# overflow is given by the macro GSL_SF_GAMMA_XMAX and is 171.0.
# 
#   exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EROUND 
#   Returns: Cdouble
function gsl_sf_gamma (x::Cdouble)
    ccall( (:gsl_sf_gamma, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the Gamma function \Gamma(x), subject to x not being a
# negative integer or zero.  The function is computed using the real Lanczos
# method. The maximum value of x such that \Gamma(x) is not considered an
# overflow is given by the macro GSL_SF_GAMMA_XMAX and is 171.0.
# 
#   Returns: Cint
function gsl_sf_gamma_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gamma_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the logarithm of the Gamma function, \log(\Gamma(x)),
# subject to x not being a negative integer or zero.  For x<0 the real part of
# \log(\Gamma(x)) is returned, which is equivalent to \log(|\Gamma(x)|).  The
# function is computed using the real Lanczos method.
# 
#   exceptions: GSL_EDOM, GSL_EROUND 
#   Returns: Cdouble
function gsl_sf_lngamma (x::Cdouble)
    ccall( (:gsl_sf_lngamma, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the logarithm of the Gamma function, \log(\Gamma(x)),
# subject to x not being a negative integer or zero.  For x<0 the real part of
# \log(\Gamma(x)) is returned, which is equivalent to \log(|\Gamma(x)|).  The
# function is computed using the real Lanczos method.
# 
#   Returns: Cint
function gsl_sf_lngamma_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lngamma_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# This routine computes the sign of the gamma function and the logarithm of its
# magnitude, subject to x not being a negative integer or zero.  The function
# is computed using the real Lanczos method.  The value of the gamma function
# and its error can be reconstructed using the relation \Gamma(x) = sgn *
# \exp(result\_lg), taking into account the two components of result_lg.
# 
#   exceptions: GSL_EDOM, GSL_EROUND 
#   Returns: Cint
function gsl_sf_lngamma_sgn_e (x::Cdouble, result_lg::Ptr{gsl_sf_result}, sgn::Ptr{Cdouble})
    ccall( (:gsl_sf_lngamma_sgn_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}, Ptr{Cdouble}), x, result_lg, sgn )
end


# These routines compute the regulated Gamma Function \Gamma^*(x) for x > 0.
# The regulated gamma function is given by,                 \Gamma^*(x) =
# \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))                       = (1 +
# (1/12x) + ...)  for x \to \infty  and is a useful suggestion of Temme.
# 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_gammastar (x::Cdouble)
    ccall( (:gsl_sf_gammastar, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regulated Gamma Function \Gamma^*(x) for x > 0.
# The regulated gamma function is given by,                 \Gamma^*(x) =
# \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))                       = (1 +
# (1/12x) + ...)  for x \to \infty  and is a useful suggestion of Temme.
# 
#   Returns: Cint
function gsl_sf_gammastar_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gammastar_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the reciprocal of the gamma function, 1/\Gamma(x)
# using the real Lanczos method.
# 
#   exceptions: GSL_EUNDRFLW, GSL_EROUND 
#   Returns: Cdouble
function gsl_sf_gammainv (x::Cdouble)
    ccall( (:gsl_sf_gammainv, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the reciprocal of the gamma function, 1/\Gamma(x)
# using the real Lanczos method.
# 
#   Returns: Cint
function gsl_sf_gammainv_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gammainv_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# This routine computes \log(\Gamma(z)) for complex z=z_r+i z_i and z not a
# negative integer or zero, using the complex Lanczos method.  The returned
# parameters are lnr = \log|\Gamma(z)| and arg = \arg(\Gamma(z)) in (-\pi,\pi].
# Note that the phase part (arg) is not well-determined when |z| is very large,
# due to inevitable roundoff in restricting to (-\pi,\pi].  This will result in
# a GSL_ELOSS error when it occurs.  The absolute value part (lnr), however,
# never suffers from loss of precision.
# 
#   exceptions: GSL_EDOM, GSL_ELOSS 
#   Returns: Cint
function gsl_sf_lngamma_complex_e (zr::Cdouble, zi::Cdouble, lnr::Ptr{gsl_sf_result}, arg::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lngamma_complex_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lnr, arg )
end