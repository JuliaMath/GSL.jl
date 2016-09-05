#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.16.1 Exponential Function #
###############################
export sf_exp, sf_exp_e, sf_exp_e10_e, sf_exp_mult, sf_exp_mult_e,
       sf_exp_mult_e10_e


# These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
#   Returns: Cdouble
function sf_exp(x::Real)
    ccall( (:gsl_sf_exp, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_exp


# These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
#   Returns: Cint
function sf_exp_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exp_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_exp_e


# This function computes the exponential \exp(x) using the gsl_sf_result_e10
# type to return a result with extended range.  This function may be useful if
# the value of \exp(x) would overflow the  numeric range of double.
# 
#   Returns: Cint
function sf_exp_e10_e(x::Real)
    result = Ref{gsl_sf_result_e10}()
    errno = ccall( (:gsl_sf_exp_e10_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result_e10}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_exp_e10_e


# These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
#   Returns: Cdouble
function sf_exp_mult(x::Real, y::Real)
    ccall( (:gsl_sf_exp_mult, libgsl), Cdouble, (Cdouble, Cdouble), x, y )
end
Compat.@dep_vectorize_2arg Number sf_exp_mult


# These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
#   Returns: Cint
function sf_exp_mult_e(x::Real, y::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exp_mult_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_exp_mult_e


# This function computes the product y \exp(x) using the gsl_sf_result_e10 type
# to return a result with extended numeric range.
# 
#   Returns: Cint
function sf_exp_mult_e10_e(x::Real, y::Real)
    result = Ref{gsl_sf_result_e10}()
    errno = ccall( (:gsl_sf_exp_mult_e10_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result_e10}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_exp_mult_e10_e
