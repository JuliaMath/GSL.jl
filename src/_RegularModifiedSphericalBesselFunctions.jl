#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 7.5.7 Regular Modified Spherical Bessel Functions #
#####################################################
export gsl_sf_bessel_i0_scaled, gsl_sf_bessel_i0_scaled_e,
       gsl_sf_bessel_i1_scaled, gsl_sf_bessel_i1_scaled_e,
       gsl_sf_bessel_i2_scaled, gsl_sf_bessel_i2_scaled_e,
       gsl_sf_bessel_il_scaled, gsl_sf_bessel_il_scaled_e,
       gsl_sf_bessel_il_scaled_array


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
# 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_bessel_i0_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_i0_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
# 
#   Returns: Cint
function gsl_sf_bessel_i0_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_i0_scaled_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
# 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_i1_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_i1_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
# 
#   Returns: Cint
function gsl_sf_bessel_i1_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_i1_scaled_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
# 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_i2_scaled (x::Cdouble)
    ccall( (:gsl_sf_bessel_i2_scaled, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
# 
#   Returns: Cint
function gsl_sf_bessel_i2_scaled_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_i2_scaled_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
# 
#   Domain: l >= 0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_il_scaled (l::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_il_scaled, "libgsl"), Cdouble, (Cint, Cdouble),
        l, x )
end


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
# 
#   Returns: Cint
function gsl_sf_bessel_il_scaled_e (l::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_il_scaled_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), l, x, result )
end


# This routine computes the values of the scaled regular modified cylindrical
# Bessel functions \exp(-|x|) i_l(x) for l from 0 to lmax inclusive for  lmax
# >= 0, storing the results in the array result_array.  The values are computed
# using recurrence relations for efficiency, and therefore may differ slightly
# from the exact values.
# 
#   {$lmax \geq 0$} 
#   Domain: lmax >= 0 
#   Conditions: l=0,1,...,lmax 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cint
function gsl_sf_bessel_il_scaled_array (lmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_il_scaled_array, "libgsl"), Cint, (Cint,
        Cdouble, Cdouble), lmax, x, result_array )
end