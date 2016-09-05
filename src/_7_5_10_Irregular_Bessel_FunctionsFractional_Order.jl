#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 7.5.10 Irregular Bessel Functions—Fractional Order #
######################################################
export sf_bessel_Ynu, sf_bessel_Ynu_e


# These routines compute the irregular cylindrical Bessel function of
# fractional order \nu, Y_\nu(x).
# 
#   Returns: Cdouble
function sf_bessel_Ynu(nu::Real, x::Real)
    ccall( (:gsl_sf_bessel_Ynu, libgsl), Cdouble, (Cdouble, Cdouble), nu,
        x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Ynu


# These routines compute the irregular cylindrical Bessel function of
# fractional order \nu, Y_\nu(x).
# 
#   Returns: Cint
function sf_bessel_Ynu_e(nu::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Ynu_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), nu, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Ynu_e
