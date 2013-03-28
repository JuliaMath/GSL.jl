#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 7.5.6 Irregular Spherical Bessel Functions #
##############################################
export gsl_sf_bessel_y0, gsl_sf_bessel_y0_e, gsl_sf_bessel_y1,
       gsl_sf_bessel_y1_e, gsl_sf_bessel_y2, gsl_sf_bessel_y2_e,
       gsl_sf_bessel_yl, gsl_sf_bessel_yl_e, gsl_sf_bessel_yl_array


# These routines compute the irregular spherical Bessel function of zeroth
# order, y_0(x) = -\cos(x)/x.
# 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_bessel_y0 (x::Cdouble)
    ccall( (:gsl_sf_bessel_y0, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the irregular spherical Bessel function of zeroth
# order, y_0(x) = -\cos(x)/x.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_y0_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_y0_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the irregular spherical Bessel function of first
# order, y_1(x) = -(\cos(x)/x + \sin(x))/x.
# 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_y1 (x::Cdouble)
    ccall( (:gsl_sf_bessel_y1, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the irregular spherical Bessel function of first
# order, y_1(x) = -(\cos(x)/x + \sin(x))/x.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_y1_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_y1_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the irregular spherical Bessel function of second
# order, y_2(x) = (-3/x^3 + 1/x)\cos(x) - (3/x^2)\sin(x).
# 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_y2 (x::Cdouble)
    ccall( (:gsl_sf_bessel_y2, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the irregular spherical Bessel function of second
# order, y_2(x) = (-3/x^3 + 1/x)\cos(x) - (3/x^2)\sin(x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_y2_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_y2_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end


# These routines compute the irregular spherical Bessel function of order l,
# y_l(x), for  l >= 0.
# 
#   {$l \geq 0$} 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_yl (l::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_yl, "libgsl"), Cdouble, (Cint, Cdouble), l, x )
end


### Function uses unknown type; disabled
### # These routines compute the irregular spherical Bessel function of order l,
# y_l(x), for  l >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_yl_e (l::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_yl_e, "libgsl"), Cint, (Cint, Cdouble,
###         Ptr{gsl_sf_result}), l, x, result )
### end


# This routine computes the values of the irregular spherical Bessel functions
# y_l(x) for l from 0 to lmax inclusive  for  lmax >= 0, storing the results in
# the array result_array.  The values are computed using recurrence relations
# for efficiency, and therefore may differ slightly from the exact values.
# 
#   {$lmax \geq 0$} 
#   Domain: lmax >= 0 
#   Conditions: l=0,1,...,lmax 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cint
function gsl_sf_bessel_yl_array (lmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_yl_array, "libgsl"), Cint, (Cint, Cdouble,
        Cdouble), lmax, x, result_array )
end