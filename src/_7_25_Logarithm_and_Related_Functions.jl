#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 7.25 Logarithm and Related Functions #
########################################
export gsl_sf_log, gsl_sf_log_e, gsl_sf_log_abs, gsl_sf_log_abs_e,
       gsl_sf_complex_log_e, gsl_sf_log_1plusx, gsl_sf_log_1plusx_e,
       gsl_sf_log_1plusx_mx, gsl_sf_log_1plusx_mx_e


# These routines compute the logarithm of x, \log(x), for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_log(x::Cdouble)
    ccall( (:gsl_sf_log, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the logarithm of x, \log(x), for x > 0.
# 
#   Returns: Cint
function gsl_sf_log_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_log_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the logarithm of the magnitude of x, \log(|x|), for x
# \ne 0.
# 
#   Returns: Cdouble
function gsl_sf_log_abs(x::Cdouble)
    ccall( (:gsl_sf_log_abs, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the logarithm of the magnitude of x, \log(|x|), for x
# \ne 0.
# 
#   Returns: Cint
function gsl_sf_log_abs_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_log_abs_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the complex logarithm of z = z_r + i z_i. The results
# are returned as lnr, theta such that \exp(lnr + i \theta) = z_r + i z_i,
# where \theta lies in the range [-\pi,\pi].
# 
#   Returns: Cint
function gsl_sf_complex_log_e(zr::Cdouble, zi::Cdouble)
    lnr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    theta = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_complex_log_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lnr, theta )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(lnr) ,unsafe_ref(theta)
end


# These routines compute \log(1 + x) for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function gsl_sf_log_1plusx(x::Cdouble)
    ccall( (:gsl_sf_log_1plusx, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(1 + x) for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function gsl_sf_log_1plusx_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_log_1plusx_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute \log(1 + x) - x for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function gsl_sf_log_1plusx_mx(x::Cdouble)
    ccall( (:gsl_sf_log_1plusx_mx, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(1 + x) - x for x > -1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function gsl_sf_log_1plusx_mx_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_log_1plusx_mx_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
