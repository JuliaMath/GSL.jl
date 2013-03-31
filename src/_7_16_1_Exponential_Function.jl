#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.16.1 Exponential Function #
###############################
export gsl_sf_exp, gsl_sf_exp_e, gsl_sf_exp_e10_e, gsl_sf_exp_mult,
       gsl_sf_exp_mult_e, gsl_sf_exp_mult_e10_e


# These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
#   Returns: Cdouble
function gsl_sf_exp(x::Cdouble)
    ccall( (:gsl_sf_exp, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
#   Returns: Cint
function gsl_sf_exp_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_exp_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function computes the exponential \exp(x) using the gsl_sf_result_e10
# type to return a result with extended range.  This function may be useful if
# the value of \exp(x) would overflow the  numeric range of double.
# 
#   Returns: Cint
function gsl_sf_exp_e10_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_exp_e10_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result_e10}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
#   Returns: Cdouble
function gsl_sf_exp_mult(x::Cdouble, y::Cdouble)
    ccall( (:gsl_sf_exp_mult, :libgsl), Cdouble, (Cdouble, Cdouble), x, y )
end


# These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
#   Returns: Cint
function gsl_sf_exp_mult_e(x::Cdouble, y::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_exp_mult_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), x, y, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function computes the product y \exp(x) using the gsl_sf_result_e10 type
# to return a result with extended numeric range.
# 
#   Returns: Cint
function gsl_sf_exp_mult_e10_e(x::Cdouble, y::Cdouble)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_exp_mult_e10_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result_e10}), x, y, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
