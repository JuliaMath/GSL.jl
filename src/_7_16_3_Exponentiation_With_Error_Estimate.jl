#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.16.3 Exponentiation With Error Estimate #
#############################################
export sf_exp_err_e, sf_exp_err_e10_e, sf_exp_mult_err_e, sf_exp_mult_err_e10_e


# This function exponentiates x with an associated absolute error dx.
# 
#   Returns: Cint
function sf_exp_err_e(x::Real, dx::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exp_err_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, dx, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_exp_err_e


# This function exponentiates a quantity x with an associated absolute error dx
# using the gsl_sf_result_e10 type to return a result with extended range.
# 
#   Returns: Cint
function sf_exp_err_e10_e(x::Real, dx::Real)
    result = Ref{gsl_sf_result_e10}()
    errno = ccall( (:gsl_sf_exp_err_e10_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result_e10}), x, dx, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_exp_err_e10_e


# This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy.
# 
#   Returns: Cint
function sf_exp_mult_err_e(x::Real, dx::Real, y::Real, dy::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exp_mult_err_e, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy using the gsl_sf_result_e10 type to return
# a result with extended range.
# 
#   Returns: Cint
function sf_exp_mult_err_e10_e(x::Real, dx::Real, y::Real, dy::Real)
    result = Ref{gsl_sf_result_e10}()
    errno = ccall( (:gsl_sf_exp_mult_err_e10_e, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, dx, y, dy,
        result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
