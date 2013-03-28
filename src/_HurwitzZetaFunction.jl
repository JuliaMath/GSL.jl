#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.32.3 Hurwitz Zeta Function #
################################
export gsl_sf_hzeta, gsl_sf_hzeta_e


# These routines compute the Hurwitz zeta function \zeta(s,q) for s > 1, q > 0.
# 
#   Domain: s > 1.0, q > 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_hzeta (s::Cdouble, q::Cdouble)
    ccall( (:gsl_sf_hzeta, "libgsl"), Cdouble, (Cdouble, Cdouble), s, q )
end


### Function uses unknown type; disabled
### # These routines compute the Hurwitz zeta function \zeta(s,q) for s > 1, q > 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hzeta_e (s::Cdouble, q::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hzeta_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), s, q, result )
### end