#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 7.5.7 Regular Modified Spherical Bessel Functions #
#####################################################
export sf_bessel_i0_scaled, sf_bessel_i0_scaled_e, sf_bessel_i1_scaled,
       sf_bessel_i1_scaled_e, sf_bessel_i2_scaled, sf_bessel_i2_scaled_e,
       sf_bessel_il_scaled, sf_bessel_il_scaled_e, sf_bessel_il_scaled_array


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
# 
#   Returns: Cdouble
function sf_bessel_i0_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i0_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_bessel_i0_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
# 
#   Returns: Cint
function sf_bessel_i0_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_bessel_i0_scaled_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_bessel_i0_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
# 
#   Returns: Cdouble
function sf_bessel_i1_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i1_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_bessel_i1_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
# 
#   Returns: Cint
function sf_bessel_i1_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_bessel_i1_scaled_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_bessel_i1_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
# 
#   Returns: Cdouble
function sf_bessel_i2_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i2_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_bessel_i2_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
# 
#   Returns: Cint
function sf_bessel_i2_scaled_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_bessel_i2_scaled_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_bessel_i2_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
# 
#   Returns: Cdouble
function sf_bessel_il_scaled(l::Integer, x::Real)
    ccall( (:gsl_sf_bessel_il_scaled, :libgsl), Cdouble, (Cint, Cdouble),
        l, x )
end
@vectorize_2arg Number sf_bessel_il_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
# 
#   Returns: Cint
function sf_bessel_il_scaled_e(l::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_bessel_il_scaled_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_2arg Number sf_bessel_il_scaled_e


# This routine computes the values of the scaled regular modified cylindrical
# Bessel functions \exp(-|x|) i_l(x) for l from 0 to lmax inclusive for  lmax
# >= 0, storing the results in the array result_array.  The values are computed
# using recurrence relations for efficiency, and therefore may differ slightly
# from the exact values.
# 
#   Returns: Cint
function sf_bessel_il_scaled_array(lmax::Integer, x::Real)
    result_array = Array(Cdouble, 1)
    errno = ccall( (:gsl_sf_bessel_il_scaled_array, :libgsl), Cint, (Cint,
        Cdouble, Cdouble), lmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result_array)[1]
end
@vectorize_2arg Number sf_bessel_il_scaled_array
