#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 7.5.4 Irregular Modified Cylindrical Bessel Functions #
#########################################################
export gsl_sf_bessel_K0, gsl_sf_bessel_K0_e, gsl_sf_bessel_K1,
       gsl_sf_bessel_K1_e, gsl_sf_bessel_Kn, gsl_sf_bessel_Kn_e,
       gsl_sf_bessel_Kn_array, gsl_sf_bessel_K0_scaled,
       gsl_sf_bessel_K0_scaled_e, gsl_sf_bessel_K1_scaled,
       gsl_sf_bessel_K1_scaled_e, gsl_sf_bessel_Kn_scaled,
       gsl_sf_bessel_Kn_scaled_e, gsl_sf_bessel_Kn_scaled_array


# These routines compute the irregular modified cylindrical Bessel function of
# zeroth order, K_0(x), for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_K0(x::Cdouble)
    ccall( (:gsl_sf_bessel_K0, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the irregular modified cylindrical Bessel function of
# zeroth order, K_0(x), for x > 0.
# 
#   Returns: Cint
function gsl_sf_bessel_K0_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_K0_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the irregular modified cylindrical Bessel function of
# first order, K_1(x), for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_K1(x::Cdouble)
    ccall( (:gsl_sf_bessel_K1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the irregular modified cylindrical Bessel function of
# first order, K_1(x), for x > 0.
# 
#   Returns: Cint
function gsl_sf_bessel_K1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_K1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the irregular modified cylindrical Bessel function of
# order n, K_n(x), for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Kn{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_bessel_Kn, :libgsl), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the irregular modified cylindrical Bessel function of
# order n, K_n(x), for x > 0.
# 
#   Returns: Cint
function gsl_sf_bessel_Kn_e{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Kn_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the values of the irregular modified cylindrical Bessel
# functions K_n(x) for n from nmin to nmax inclusive, storing the results in
# the array result_array. The start of the range nmin must be positive or zero.
# The domain of the function is x>0. The values are computed using recurrence
# relations for efficiency, and therefore may differ slightly from the exact
# values.
# 
#   Returns: Cint
function gsl_sf_bessel_Kn_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Kn_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble), nmin, nmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of zeroth order \exp(x) K_0(x) for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_K0_scaled(x::Cdouble)
    ccall( (:gsl_sf_bessel_K0_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of zeroth order \exp(x) K_0(x) for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_K0_scaled_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_K0_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of first order \exp(x) K_1(x) for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_K1_scaled(x::Cdouble)
    ccall( (:gsl_sf_bessel_K1_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of first order \exp(x) K_1(x) for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_K1_scaled_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_K1_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of order n, \exp(x) K_n(x), for x>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Kn_scaled{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_bessel_Kn_scaled, :libgsl), Cdouble, (Cint, Cdouble),
        n, x )
end


# These routines compute the scaled irregular modified cylindrical Bessel
# function of order n, \exp(x) K_n(x), for x>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Kn_scaled_e{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Kn_scaled_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the values of the scaled irregular cylindrical Bessel
# functions \exp(x) K_n(x) for n from nmin to nmax inclusive, storing the
# results in the array result_array. The start of the range nmin must be
# positive or zero.  The domain of the function is x>0. The values are computed
# using recurrence relations for efficiency, and therefore may differ slightly
# from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_Kn_scaled_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Kn_scaled_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), nmin, nmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end
