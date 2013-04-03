#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################################
# 7.5.12 Irregular Modified Bessel Functions—Fractional Order #
###############################################################
export gsl_sf_bessel_Knu, gsl_sf_bessel_Knu_e, gsl_sf_bessel_lnKnu,
       gsl_sf_bessel_lnKnu_e, gsl_sf_bessel_Knu_scaled,
       gsl_sf_bessel_Knu_scaled_e


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Knu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Knu, :libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
@vectorize_2arg Number gsl_sf_bessel_Knu


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Knu_e(nu::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Knu_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_Knu_e


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_lnKnu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_lnKnu, :libgsl), Cdouble, (Cdouble, Cdouble),
        nu, x )
end
@vectorize_2arg Number gsl_sf_bessel_lnKnu


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_lnKnu_e(nu::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_lnKnu_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_lnKnu_e


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Knu_scaled(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Knu_scaled, :libgsl), Cdouble, (Cdouble,
        Cdouble), nu, x )
end
@vectorize_2arg Number gsl_sf_bessel_Knu_scaled


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Knu_scaled_e(nu::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Knu_scaled_e, :libgsl), Cint,
        (Cdouble, Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_Knu_scaled_e
