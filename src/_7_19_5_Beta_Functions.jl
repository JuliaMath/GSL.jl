#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.19.5 Beta Functions #
#########################
export gsl_sf_beta, gsl_sf_beta_e, gsl_sf_lnbeta, gsl_sf_lnbeta_e


# These routines compute the Beta Function, B(a,b) =
# \Gamma(a)\Gamma(b)/\Gamma(a+b) subject to a and b not being negative
# integers.
# 
#   Returns: Cdouble
function gsl_sf_beta(a::Cdouble, b::Cdouble)
    ccall( (:gsl_sf_beta, :libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end


# These routines compute the Beta Function, B(a,b) =
# \Gamma(a)\Gamma(b)/\Gamma(a+b) subject to a and b not being negative
# integers.
# 
#   Returns: Cint
function gsl_sf_beta_e(a::Cdouble, b::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_beta_e, :libgsl), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, b, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
#   Returns: Cdouble
function gsl_sf_lnbeta(a::Cdouble, b::Cdouble)
    ccall( (:gsl_sf_lnbeta, :libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end


# These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
#   Returns: Cint
function gsl_sf_lnbeta_e(a::Cdouble, b::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lnbeta_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, b, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
