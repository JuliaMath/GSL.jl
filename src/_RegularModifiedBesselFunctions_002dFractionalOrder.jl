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
#   Domain: x >= 0, nu >= 0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_Inu (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Inu, "libgsl"), Cdouble, (Cdouble, Cdouble), nu,
        x )
end


# These routines compute the regular modified Bessel function of fractional
# order \nu, I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Inu_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Inu_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), nu, x, result )
end


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   @math{ \exp(-|x|) I_@{\nu@}(x) } 
#   Domain: x >= 0, nu >= 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_bessel_Inu_scaled (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Inu_scaled, "libgsl"), Cdouble, (Cdouble,
        Cdouble), nu, x )
end


# These routines compute the scaled regular modified Bessel function of
# fractional order \nu, \exp(-|x|)I_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Inu_scaled_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Inu_scaled_e, "libgsl"), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
end