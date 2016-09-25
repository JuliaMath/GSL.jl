#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 7.5.9 Regular Bessel Function—Fractional Order #
##################################################
export sf_bessel_Jnu, sf_bessel_Jnu_e, sf_bessel_sequence_Jnu_e


# These routines compute the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x).
# 
#   Returns: Cdouble
function sf_bessel_Jnu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Jnu, libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Jnu


# These routines compute the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x).
# 
#   Returns: Cint
function sf_bessel_Jnu_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Jnu_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Jnu_e


# This function computes the regular cylindrical Bessel function of fractional
# order \nu, J_\nu(x), evaluated at a series of x values.  The array v of
# length size contains the x values.  They are assumed to be strictly ordered
# and positive.  The array is over-written with the values of J_\nu(x_i).
# 
#   Returns: Cint
function sf_bessel_sequence_Jnu_e(nu::Real, mode::Integer, size::Integer, v::Real)
    errno = ccall( (:gsl_sf_bessel_sequence_Jnu_e, libgsl), Cint,
        (Cdouble, gsl_mode_t, Csize_t, Cdouble), nu, mode, size, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
