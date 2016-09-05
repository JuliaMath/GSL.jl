#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.31.6 Trigonometric Functions With Error Estimates #
#######################################################
export sf_sin_err_e, sf_cos_err_e


# This routine computes the sine of an angle x with an associated absolute
# error dx,  \sin(x \pm dx).  Note that this function is provided in the error-
# handling form only since its purpose is to compute the propagated error.
# 
#   Returns: Cint
function sf_sin_err_e(x::Real, dx::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_sin_err_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, dx, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_sin_err_e


# This routine computes the cosine of an angle x with an associated absolute
# error dx,  \cos(x \pm dx).  Note that this function is provided in the error-
# handling form only since its purpose is to compute the propagated error.
# 
#   Returns: Cint
function sf_cos_err_e(x::Real, dx::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_cos_err_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, dx, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_cos_err_e
