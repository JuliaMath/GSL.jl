#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.31.6 Trigonometric Functions With Error Estimates #
#######################################################
export gsl_sf_sin_err_e, gsl_sf_cos_err_e


# This routine computes the sine of an angle x with an associated absolute
# error dx,  \sin(x \pm dx).  Note that this function is provided in the error-
# handling form only since its purpose is to compute the propagated error.
# 
#   Returns: Cint
function gsl_sf_sin_err_e(x::Cdouble, dx::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_sin_err_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), x, dx, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the cosine of an angle x with an associated absolute
# error dx,  \cos(x \pm dx).  Note that this function is provided in the error-
# handling form only since its purpose is to compute the propagated error.
# 
#   Returns: Cint
function gsl_sf_cos_err_e(x::Cdouble, dx::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_cos_err_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), x, dx, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
