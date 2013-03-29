#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.3 Hyperbolic Integrals #
###############################
export gsl_sf_Shi, gsl_sf_Shi_e, gsl_sf_Chi, gsl_sf_Chi_e


# These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
#   {$\hbox{Shi}(x) = \int_0^x dt \sinh(t)/t$} 
#   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_Shi (x::Cdouble)
    ccall( (:gsl_sf_Shi, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the integral  Shi(x) = \int_0^x dt \sinh(t)/t.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_Shi_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_Shi_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
###         x, result )
### end


# These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
#   {$\hbox{Chi}(x) := \Re[ \gamma_E + \log(x) + \int_0^x dt (\cosh(t)-1)/t]$} 
#   Domain: x != 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_Chi (x::Cdouble)
    ccall( (:gsl_sf_Chi, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the integral   Chi(x) := \Re[ \gamma_E + \log(x) +
# \int_0^x dt (\cosh(t)-1)/t] , where \gamma_E is the Euler constant (available
# as the macro M_EULER).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_Chi_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_Chi_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
###         x, result )
### end