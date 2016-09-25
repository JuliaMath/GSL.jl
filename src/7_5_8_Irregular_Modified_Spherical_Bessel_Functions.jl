#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.5.8 Irregular Modified Spherical Bessel Functions #
#######################################################
export sf_bessel_k0_scaled, sf_bessel_k0_scaled_e, sf_bessel_k1_scaled,
       sf_bessel_k1_scaled_e, sf_bessel_k2_scaled, sf_bessel_k2_scaled_e,
       sf_bessel_kl_scaled, sf_bessel_kl_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of zeroth order, \exp(x) k_0(x), for x>0.
#
#   Returns: Cdouble
function sf_bessel_k0_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k0_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_k0_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of zeroth order, \exp(x) k_0(x), for x>0.
#
#   Returns: Cint
function sf_bessel_k0_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_k0_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_k0_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
#
#   Returns: Cdouble
function sf_bessel_k1_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k1_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_k1_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of first order, \exp(x) k_1(x), for x>0.
#
#   Returns: Cint
function sf_bessel_k1_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_k1_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_k1_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
#
#   Returns: Cdouble
function sf_bessel_k2_scaled(x::Real)
    ccall( (:gsl_sf_bessel_k2_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_k2_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of second order, \exp(x) k_2(x), for x>0.
#
#   Returns: Cint
function sf_bessel_k2_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_k2_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_k2_scaled_e


# These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
#
#   Returns: Cdouble
function sf_bessel_kl_scaled(l::Integer, x::Real)
    ccall( (:gsl_sf_bessel_kl_scaled, libgsl), Cdouble, (Cint, Cdouble),
        l, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_kl_scaled


# These routines compute the scaled irregular modified spherical Bessel
# function of order l, \exp(x) k_l(x), for x>0.
#
#   Returns: Cint
function sf_bessel_kl_scaled_e(l::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_kl_scaled_e, libgsl), Cint, (Cint,
        Cdouble, Ref{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_kl_scaled_e
