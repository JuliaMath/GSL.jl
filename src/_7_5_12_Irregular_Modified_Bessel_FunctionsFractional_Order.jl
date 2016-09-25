#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################################
# 7.5.12 Irregular Modified Bessel Functions—Fractional Order #
###############################################################
export sf_bessel_Knu, sf_bessel_Knu_e, sf_bessel_lnKnu, sf_bessel_lnKnu_e,
       sf_bessel_Knu_scaled, sf_bessel_Knu_scaled_e


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function sf_bessel_Knu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Knu, libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Knu


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function sf_bessel_Knu_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Knu_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Knu_e


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Returns: Cdouble
function sf_bessel_lnKnu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_lnKnu, libgsl), Cdouble, (Cdouble, Cdouble),
        nu, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_lnKnu


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Returns: Cint
function sf_bessel_lnKnu_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_lnKnu_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_lnKnu_e


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function sf_bessel_Knu_scaled(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Knu_scaled, libgsl), Cdouble, (Cdouble,
        Cdouble), nu, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Knu_scaled


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function sf_bessel_Knu_scaled_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Knu_scaled_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Knu_scaled_e
