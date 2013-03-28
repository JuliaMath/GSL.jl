#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.1 Exponential Integral #
###############################
export gsl_sf_expint_E1, gsl_sf_expint_E1_e, gsl_sf_expint_E2,
       gsl_sf_expint_E2_e, gsl_sf_expint_En, gsl_sf_expint_En_e


# These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
#   Domain: x != 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_expint_E1 (x::Cdouble)
    ccall( (:gsl_sf_expint_E1, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_expint_E1_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_expint_E1_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
#   Domain: x != 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_expint_E2 (x::Cdouble)
    ccall( (:gsl_sf_expint_E2, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_expint_E2_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_expint_E2_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
#   Domain: x != 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_expint_En (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_expint_En, "libgsl"), Cdouble, (Cint, Cdouble), n, x )
end


### Function uses unknown type; disabled
### # These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_expint_En_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_expint_En_e, "libgsl"), Cint, (Cint, Cdouble,
###         Ptr{gsl_sf_result}), n, x, result )
### end