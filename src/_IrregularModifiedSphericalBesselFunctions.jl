#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.5.8 Irregular Modified Spherical Bessel Functions #
#######################################################
export gsl_sf_bessel_k0_scaled, gsl_sf_bessel_k0_scaled_e,
       gsl_sf_bessel_k1_scaled, gsl_sf_bessel_k1_scaled_e,
       gsl_sf_bessel_k2_scaled, gsl_sf_bessel_k2_scaled_e,
       gsl_sf_bessel_kl_scaled, gsl_sf_bessel_kl_scaled_e,
       gsl_sf_bessel_kl_scaled_array


# These routines compute the scaled irregular modified spherical Bessel
# function of zeroth order, \exp(x) k_0(x), for x>0.
# 
#   Domain: x > 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_k0_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_k0_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the scaled irregular modified spherical Bessel
# function of zeroth order, \exp(x) k_0(x), for x>0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_k0_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_k0_scaled_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
# 
#   Domain: x > 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_k1_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_k1_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_k1_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_k1_scaled_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
# 
#   Domain: x > 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_k2_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_k2_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_k2_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_k2_scaled_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
# 
#   Domain: x > 0.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_kl_scaled (l::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_kl_scaled, "libgsl"), Cdouble, (Cint, Cdouble),
        l, x )
end


### Function uses unknown type; disabled
### # These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_kl_scaled_e (l::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_kl_scaled_e, "libgsl"), Cint, (Cint, Cdouble,
###         Ptr{gsl_sf_result}), l, x, result )
### end


# This routine computes the values of the scaled irregular modified spherical
# Bessel functions \exp(x) k_l(x) for l from 0 to lmax inclusive for  lmax >= 0
# and x>0, storing the results in the array result_array.  The values are
# computed using recurrence relations for efficiency, and therefore may differ
# slightly from the exact values.
# 
#   {$lmax \geq 0$} 
#   Domain: lmax >= 0 
#   Conditions: l=0,1,...,lmax 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cint
function gsl_sf_bessel_kl_scaled_array (lmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_kl_scaled_array, "libgsl"), Cint, (Cint,
        Cdouble, Cdouble), lmax, x, result_array )
end