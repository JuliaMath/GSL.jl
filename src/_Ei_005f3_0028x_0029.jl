#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 7.17.4 Ei_3(x) #
##################
export gsl_sf_expint_3, gsl_sf_expint_3_e


# These routines compute the third-order exponential integral  Ei_3(x) =
# \int_0^xdt \exp(-t^3) for  x >= 0.
# 
#   {${\rm Ei}_3(x) = \int_0^xdt \exp(-t^3)$} 
#   {$x \ge 0$} 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_expint_3 (x::Cdouble)
    ccall( (:gsl_sf_expint_3, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the third-order exponential integral  Ei_3(x) =
# \int_0^xdt \exp(-t^3) for  x >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_expint_3_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_expint_3_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end