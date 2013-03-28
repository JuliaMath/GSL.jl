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
#   exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_beta (a::Cdouble, b::Cdouble)
    ccall( (:gsl_sf_beta, "libgsl"), Cdouble, (Cdouble, Cdouble), a, b )
end


### Function uses unknown type; disabled
### # These routines compute the Beta Function, B(a,b) =
# \Gamma(a)\Gamma(b)/\Gamma(a+b) subject to a and b not being negative
# integers.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_beta_e (a::Cdouble, b::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_beta_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), a, b, result )
### end


# These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_lnbeta (a::Cdouble, b::Cdouble)
    ccall( (:gsl_sf_lnbeta, "libgsl"), Cdouble, (Cdouble, Cdouble), a, b )
end


### Function uses unknown type; disabled
### # These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_lnbeta_e (a::Cdouble, b::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_lnbeta_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), a, b, result )
### end