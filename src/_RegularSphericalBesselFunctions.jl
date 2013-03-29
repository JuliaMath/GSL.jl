#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 7.5.5 Regular Spherical Bessel Functions #
############################################
export gsl_sf_bessel_j0, gsl_sf_bessel_j0_e, gsl_sf_bessel_j1,
       gsl_sf_bessel_j1_e, gsl_sf_bessel_j2, gsl_sf_bessel_j2_e,
       gsl_sf_bessel_jl, gsl_sf_bessel_jl_e, gsl_sf_bessel_jl_array,
       gsl_sf_bessel_jl_steed_array


# These routines compute the regular spherical Bessel function of zeroth order,
# j_0(x) = \sin(x)/x.
# 
#   Returns: Cdouble
function gsl_sf_bessel_j0 (x::Cdouble)
    ccall( (:gsl_sf_bessel_j0, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular spherical Bessel function of zeroth order,
# j_0(x) = \sin(x)/x.
# 
#   Returns: Cint
function gsl_sf_bessel_j0_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_j0_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the regular spherical Bessel function of first order,
# j_1(x) = (\sin(x)/x - \cos(x))/x.
# 
#   Returns: Cdouble
function gsl_sf_bessel_j1 (x::Cdouble)
    ccall( (:gsl_sf_bessel_j1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular spherical Bessel function of first order,
# j_1(x) = (\sin(x)/x - \cos(x))/x.
# 
#   Returns: Cint
function gsl_sf_bessel_j1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_j1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the regular spherical Bessel function of second order,
# j_2(x) = ((3/x^2 - 1)\sin(x) - 3\cos(x)/x)/x.
# 
#   Returns: Cdouble
function gsl_sf_bessel_j2 (x::Cdouble)
    ccall( (:gsl_sf_bessel_j2, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular spherical Bessel function of second order,
# j_2(x) = ((3/x^2 - 1)\sin(x) - 3\cos(x)/x)/x.
# 
#   Returns: Cint
function gsl_sf_bessel_j2_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_j2_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the regular spherical Bessel function of order l,
# j_l(x), for  l >= 0 and  x >= 0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_jl (l::Cint, x::Cdouble)
    ccall( (:gsl_sf_bessel_jl, "libgsl"), Cdouble, (Cint, Cdouble), l, x )
end


# These routines compute the regular spherical Bessel function of order l,
# j_l(x), for  l >= 0 and  x >= 0.
# 
#   Returns: Cint
function gsl_sf_bessel_jl_e (l::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_jl_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), l, x, result )
end


# This routine computes the values of the regular spherical Bessel functions
# j_l(x) for l from 0 to lmax inclusive  for  lmax >= 0 and  x >= 0, storing
# the results in the array result_array.  The values are computed using
# recurrence relations for efficiency, and therefore may differ slightly from
# the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_jl_array (lmax::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_bessel_jl_array, "libgsl"), Cint, (Cint, Cdouble,
        Cdouble), lmax, x, result_array )
end


# This routine uses Steed's method to compute the values of the regular
# spherical Bessel functions j_l(x) for l from 0 to lmax inclusive for  lmax >=
# 0 and  x >= 0, storing the results in the array result_array.  The
# Steed/Barnett algorithm is described in Comp. Phys. Comm. 21, 297 (1981).
# Steed's method is more stable than the recurrence used in the other functions
# but is also slower.
# 
#   Returns: Cint
function gsl_sf_bessel_jl_steed_array (lmax::Cint, x::Cdouble, result_array::Ptr{Cdouble})
    ccall( (:gsl_sf_bessel_jl_steed_array, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{Cdouble}), lmax, x, result_array )
end
