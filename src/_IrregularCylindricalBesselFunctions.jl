#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 7.5.2 Irregular Cylindrical Bessel Functions #
################################################
export gsl_sf_bessel_Y0, gsl_sf_bessel_Y0_e, gsl_sf_bessel_Y1,
       gsl_sf_bessel_Y1_e, gsl_sf_bessel_Yn, gsl_sf_bessel_Yn_e,
       gsl_sf_bessel_Yn_array


# These routines compute the irregular cylindrical Bessel function of zeroth
# order, Y_0(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Y0 (x::Cdouble)
    ccall( (:gsl_sf_bessel_Y0, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the irregular cylindrical Bessel function of zeroth
# order, Y_0(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Y0_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Y0_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the irregular cylindrical Bessel function of first
# order, Y_1(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Y1 (x::Cdouble)
    ccall( (:gsl_sf_bessel_Y1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the irregular cylindrical Bessel function of first
# order, Y_1(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Y1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Y1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the irregular cylindrical Bessel function of order n,
# Y_n(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Yn (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_Yn, "libgsl"), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the irregular cylindrical Bessel function of order n,
# Y_n(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Yn_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Yn_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, x, result )
end


# This routine computes the values of the irregular cylindrical Bessel
# functions Y_n(x) for n from nmin to nmax inclusive, storing the results in
# the array result_array.  The domain of the function is x>0.  The values are
# computed using recurrence relations for efficiency, and therefore may differ
# slightly from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_Yn_array (nmin::Cint, nmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_Yn_array, "libgsl"), Cint, (Cint, Cint, Cdouble,
        Cdouble), nmin, nmax, x, result_array )
end
