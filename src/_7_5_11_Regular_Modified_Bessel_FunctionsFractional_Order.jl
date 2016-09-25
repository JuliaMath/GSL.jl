#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################################
# 7.5.11 Regular Modified Bessel Functions—Fractional Order #
#############################################################
export sf_bessel_Inu, sf_bessel_Inu_e, sf_bessel_Inu_scaled,
       sf_bessel_Inu_scaled_e


# These routines compute the regular modified Bessel function of fractional
# order \nu, I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function sf_bessel_Inu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Inu, libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Inu


# These routines compute the regular modified Bessel function of fractional
# order \nu, I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function sf_bessel_Inu_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Inu_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Inu_e


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cdouble
function sf_bessel_Inu_scaled(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Inu_scaled, libgsl), Cdouble, (Cdouble,
        Cdouble), nu, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Inu_scaled


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function sf_bessel_Inu_scaled_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Inu_scaled_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Inu_scaled_e
