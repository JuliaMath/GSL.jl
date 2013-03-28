#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 7.5.9 Regular Bessel Function—Fractional Order #
##################################################
export gsl_sf_bessel_Jnu, gsl_sf_bessel_Jnu_e, gsl_sf_bessel_sequence_Jnu_e


# These routines compute the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x).
# 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_Jnu (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Jnu, "libgsl"), Cdouble, (Cdouble, Cdouble), nu,
        x )
end


### Function uses unknown type; disabled
### # These routines compute the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_bessel_Jnu_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_bessel_Jnu_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), nu, x, result )
### end


### Function uses unknown type; disabled
### # This function computes the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x), evaluated at a series of x values.  The array v of
# length size contains the x values.  They are assumed to be strictly ordered
# and positive.  The array is over-written with the values of J_\nu(x_i).
# 
### #   Exceptional Return Values: GSL_EDOM, GSL_EINVAL 
### #   Returns: Cint
### #XXX Unknown input type mode::gsl_mode_t
### function gsl_sf_bessel_sequence_Jnu_e (nu::Cdouble, mode::gsl_mode_t, size::Csize_t, v::Cdouble)
###     ccall( (:gsl_sf_bessel_sequence_Jnu_e, "libgsl"), Cint, (Cdouble,
###         gsl_mode_t, Csize_t, Cdouble), nu, mode, size, v )
### end