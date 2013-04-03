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
#   Returns: Cdouble
function gsl_sf_gamma(x::Real)
    ccall( (:gsl_sf_gamma, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_gamma


# These routines compute the Gamma function \Gamma(x), subject to x not being a
# negative integer or zero.  The function is computed using the real Lanczos
# method. The maximum value of x such that \Gamma(x) is not considered an
# overflow is given by the macro GSL_SF_GAMMA_XMAX and is 171.0.
# 
#   Returns: Cint
function gsl_sf_gamma_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_gamma_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_gamma_e


# These routines compute the logarithm of the Gamma function, \log(\Gamma(x)),
# subject to x not being a negative integer or zero.  For x<0 the real part of
# \log(\Gamma(x)) is returned, which is equivalent to \log(|\Gamma(x)|).  The
# function is computed using the real Lanczos method.
# 
#   Returns: Cdouble
function gsl_sf_lngamma(x::Real)
    ccall( (:gsl_sf_lngamma, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_lngamma


# These routines compute the logarithm of the Gamma function, \log(\Gamma(x)),
# subject to x not being a negative integer or zero.  For x<0 the real part of
# \log(\Gamma(x)) is returned, which is equivalent to \log(|\Gamma(x)|).  The
# function is computed using the real Lanczos method.
# 
#   Returns: Cint
function gsl_sf_lngamma_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lngamma_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_lngamma_e


# This routine computes the sign of the gamma function and the logarithm of its
# magnitude, subject to x not being a negative integer or zero.  The function
# is computed using the real Lanczos method.  The value of the gamma function
# and its error can be reconstructed using the relation \Gamma(x) = sgn *
# \exp(result\_lg), taking into account the two components of result_lg.
# 
#   Returns: Cint
function gsl_sf_lngamma_sgn_e(x::Real)
    result_lg = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    sgn = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_lngamma_sgn_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}, Ptr{Cdouble}), x, result_lg, sgn )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_lg)[1] ,unsafe_ref(sgn)[1]
end
@vectorize_1arg Number gsl_sf_lngamma_sgn_e


# These routines compute the regulated Gamma Function \Gamma^*(x) for x > 0.
# The regulated gamma function is given by,                 \Gamma^*(x) =
# \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))                       = (1 +
# (1/12x) + ...)  for x \to \infty  and is a useful suggestion of Temme.
# 
#   Returns: Cdouble
function gsl_sf_gammastar(x::Real)
    ccall( (:gsl_sf_gammastar, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_gammastar


# These routines compute the regulated Gamma Function \Gamma^*(x) for x > 0.
# The regulated gamma function is given by,                 \Gamma^*(x) =
# \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))                       = (1 +
# (1/12x) + ...)  for x \to \infty  and is a useful suggestion of Temme.
# 
#   Returns: Cint
function gsl_sf_gammastar_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_gammastar_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_gammastar_e


# These routines compute the reciprocal of the gamma function, 1/\Gamma(x)
# using the real Lanczos method.
# 
#   Returns: Cdouble
function gsl_sf_gammainv(x::Real)
    ccall( (:gsl_sf_gammainv, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_gammainv


# These routines compute the reciprocal of the gamma function, 1/\Gamma(x)
# using the real Lanczos method.
# 
#   Returns: Cint
function gsl_sf_gammainv_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_gammainv_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_gammainv_e


# This routine computes \log(\Gamma(z)) for complex z=z_r+i z_i and z not a
# negative integer or zero, using the complex Lanczos method.  The returned
# parameters are lnr = \log|\Gamma(z)| and arg = \arg(\Gamma(z)) in (-\pi,\pi].
# Note that the phase part (arg) is not well-determined when |z| is very large,
# due to inevitable roundoff in restricting to (-\pi,\pi].  This will result in
# a GSL_ELOSS error when it occurs.  The absolute value part (lnr), however,
# never suffers from loss of precision.
# 
#   Returns: Cint
function gsl_sf_lngamma_complex_e(zr::Real, zi::Real)
    lnr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    arg = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lngamma_complex_e, :libgsl), Cint,
        (Cdouble, Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi,
        lnr, arg )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(lnr)[1] ,unsafe_ref(arg)[1]
end
@vectorize_2arg Number gsl_sf_lngamma_complex_e
