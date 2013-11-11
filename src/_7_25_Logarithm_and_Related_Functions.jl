#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 7.25 Logarithm and Related Functions #
########################################
export sf_log, sf_log_e, sf_log_abs, sf_log_abs_e, sf_complex_log_e,
       sf_log_1plusx, sf_log_1plusx_e, sf_log_1plusx_mx, sf_log_1plusx_mx_e


# These routines compute the logarithm of x, \log(x), for x > 0.
# 
#   Returns: Cdouble
function sf_log(x::Real)
    ccall( (:gsl_sf_log, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_log


# These routines compute the logarithm of x, \log(x), for x > 0.
# 
#   Returns: Cint
function sf_log_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_log_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_log_e


# These routines compute the logarithm of the magnitude of x, \log(|x|), for x
# \ne 0.
# 
#   Returns: Cdouble
function sf_log_abs(x::Real)
    ccall( (:gsl_sf_log_abs, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_log_abs


# These routines compute the logarithm of the magnitude of x, \log(|x|), for x
# \ne 0.
# 
#   Returns: Cint
function sf_log_abs_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_log_abs_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_log_abs_e


# This routine computes the complex logarithm of z = z_r + i z_i. The results
# are returned as lnr, theta such that \exp(lnr + i \theta) = z_r + i z_i,
# where \theta lies in the range [-\pi,\pi].
# 
#   Returns: Cint
function sf_complex_log_e(zr::Real, zi::Real)
    lnr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    theta = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_complex_log_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lnr, theta )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(lnr), unsafe_load(theta)
end
@vectorize_2arg Number sf_complex_log_e


# These routines compute \log(1 + x) for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function sf_log_1plusx(x::Real)
    ccall( (:gsl_sf_log_1plusx, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_log_1plusx


# These routines compute \log(1 + x) for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function sf_log_1plusx_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_log_1plusx_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_log_1plusx_e


# These routines compute \log(1 + x) - x for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function sf_log_1plusx_mx(x::Real)
    ccall( (:gsl_sf_log_1plusx_mx, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_log_1plusx_mx


# These routines compute \log(1 + x) - x for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function sf_log_1plusx_mx_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_log_1plusx_mx_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_log_1plusx_mx_e
