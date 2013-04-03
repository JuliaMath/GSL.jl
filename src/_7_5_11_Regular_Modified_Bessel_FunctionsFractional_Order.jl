#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################################
# 7.5.11 Regular Modified Bessel Functions—Fractional Order #
#############################################################
export gsl_sf_bessel_Inu, gsl_sf_bessel_Inu_e, gsl_sf_bessel_Inu_scaled,
       gsl_sf_bessel_Inu_scaled_e


# These routines compute the regular modified Bessel function of fractional
# order \nu, I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Inu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Inu, :libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
@vectorize_2arg Number gsl_sf_bessel_Inu


# These routines compute the regular modified Bessel function of fractional
# order \nu, I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Inu_e(nu::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Inu_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_Inu_e


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function gsl_sf_bessel_Inu_scaled(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Inu_scaled, :libgsl), Cdouble, (Cdouble,
        Cdouble), nu, x )
end
@vectorize_2arg Number gsl_sf_bessel_Inu_scaled


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Inu_scaled_e(nu::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Inu_scaled_e, :libgsl), Cint,
        (Cdouble, Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_bessel_Inu_scaled_e
