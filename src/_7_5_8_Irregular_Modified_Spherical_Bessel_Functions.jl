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
#   Returns: Cdouble
function gsl_sf_bessel_k0_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k0_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_bessel_k0_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of zeroth order, \exp(x) k_0(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_k0_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_k0_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_bessel_k0_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_k1_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k1_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_bessel_k1_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_k1_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_k1_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_bessel_k1_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_k2_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k2_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_bessel_k2_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_k2_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_k2_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_bessel_k2_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_kl_scaled(l::Integer, x::Real)
    ccall( (:gsl_sf_bessel_kl_scaled, :libgsl), Cdouble, (Cint, Cdouble),
        l, x )
end
@vectorize_2arg Number gsl_sf_bessel_kl_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_kl_scaled_e(l::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_kl_scaled_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), l, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_kl_scaled_e


# This routine computes the values of the scaled irregular modified spherical
# Bessel functions \exp(x) k_l(x) for l from 0 to lmax inclusive for  lmax >= 0
# and x>0, storing the results in the array result_array.  The values are
# computed using recurrence relations for efficiency, and therefore may differ
# slightly from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_kl_scaled_array(lmax::Integer, x::Real)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_kl_scaled_array, :libgsl), Cint,
        (Cint, Cdouble, Cdouble), lmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)[1]
end
@vectorize_2arg Number gsl_sf_bessel_kl_scaled_array
