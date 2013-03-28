#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.29 Synchrotron Functions #
##############################
export gsl_sf_synchrotron_1, gsl_sf_synchrotron_1_e, gsl_sf_synchrotron_2,
       gsl_sf_synchrotron_2_e


# These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
#   {$x \int_x^\infty dt K_{5/3}(t)$} 
#   {$x \ge 0$} 
#   Domain: x >= 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_synchrotron_1 (x::Cdouble)
    ccall( (:gsl_sf_synchrotron_1, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_synchrotron_1_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_synchrotron_1_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
#   {$x K_{2/3}(x)$} 
#   {$x \ge 0$} 
#   Domain: x >= 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_synchrotron_2 (x::Cdouble)
    ccall( (:gsl_sf_synchrotron_2, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_synchrotron_2_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_synchrotron_2_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end