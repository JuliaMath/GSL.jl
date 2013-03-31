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
#   Returns: Cdouble
function gsl_sf_bessel_Jnu(nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Jnu, :libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end


# These routines compute the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x).
# 
#   Returns: Cint
function gsl_sf_bessel_Jnu_e(nu::Cdouble, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_Jnu_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This function computes the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x), evaluated at a series of x values.  The array v of
# length size contains the x values.  They are assumed to be strictly ordered
# and positive.  The array is over-written with the values of J_\nu(x_i).
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_bessel_sequence_Jnu_e{gsl_int<:Integer}(nu::Cdouble, mode::Void, size::gsl_int, v::Cdouble)
    gsl_errno = ccall( (:gsl_sf_bessel_sequence_Jnu_e, :libgsl), Cint,
        (Cdouble, Void, Csize_t, Cdouble), nu, mode, size, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
