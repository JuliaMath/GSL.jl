#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 7.5.1 Regular Cylindrical Bessel Functions #
##############################################
export gsl_sf_bessel_J0, gsl_sf_bessel_J0_e, gsl_sf_bessel_J1,
       gsl_sf_bessel_J1_e, gsl_sf_bessel_Jn, gsl_sf_bessel_Jn_e,
       gsl_sf_bessel_Jn_array


# These routines compute the regular cylindrical Bessel function of zeroth
# order, J_0(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_J0 (x::Cdouble)
    ccall( (:gsl_sf_bessel_J0, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular cylindrical Bessel function of zeroth
# order, J_0(x).
# 
#   Returns: Cint
function gsl_sf_bessel_J0_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_J0_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the regular cylindrical Bessel function of first
# order, J_1(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_J1 (x::Cdouble)
    ccall( (:gsl_sf_bessel_J1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular cylindrical Bessel function of first
# order, J_1(x).
# 
#   Returns: Cint
function gsl_sf_bessel_J1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_J1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the regular cylindrical Bessel function of order n,
# J_n(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_Jn (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_Jn, "libgsl"), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the regular cylindrical Bessel function of order n,
# J_n(x).
# 
#   Returns: Cint
function gsl_sf_bessel_Jn_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Jn_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, x, result )
end


# This routine computes the values of the regular cylindrical Bessel functions
# J_n(x) for n from nmin to nmax inclusive, storing the results in the array
# result_array.  The values are computed using recurrence relations for
# efficiency, and therefore may differ slightly from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_Jn_array (nmin::Cint, nmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_Jn_array, "libgsl"), Cint, (Cint, Cint, Cdouble,
        Cdouble), nmin, nmax, x, result_array )
end
