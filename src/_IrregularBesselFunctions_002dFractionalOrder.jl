#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 7.5.10 Irregular Bessel Functions—Fractional Order #
######################################################
export gsl_sf_bessel_Ynu, gsl_sf_bessel_Ynu_e


# These routines compute the irregular cylindrical Bessel function of
# fractional order \nu, Y_\nu(x).
# 
#   Exceptional Return Values: 
#   Returns: Cdouble
function gsl_sf_bessel_Ynu (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Ynu, "libgsl"), Cdouble, (Cdouble, Cdouble), nu,
        x )
end


### Function uses unknown type; disabled
### # These routines compute the irregular cylindrical Bessel function of
# fractional order \nu, Y_\nu(x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_Ynu_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_Ynu_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), nu, x, result )
### end