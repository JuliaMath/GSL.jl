#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.15.4 Probability functions #
################################
export gsl_sf_erf_Z, gsl_sf_erf_Z_e, gsl_sf_erf_Q, gsl_sf_erf_Q_e,
       gsl_sf_hazard, gsl_sf_hazard_e




# These routines compute the Gaussian probability density function  Z(x) =
# (1/\sqrt{2\pi}) \exp(-x^2/2).
# 
#   Returns: Cdouble
function gsl_sf_erf_Z (x::Cdouble)
    ccall( (:gsl_sf_erf_Z, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the Gaussian probability density function  Z(x) =
# (1/\sqrt{2\pi}) \exp(-x^2/2).
# 
#   Returns: Cint
function gsl_sf_erf_Z_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_erf_Z_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the upper tail of the Gaussian probability function
# Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2).
# 
#   Returns: Cdouble
function gsl_sf_erf_Q (x::Cdouble)
    ccall( (:gsl_sf_erf_Q, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the upper tail of the Gaussian probability function
# Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2).
# 
#   Returns: Cint
function gsl_sf_erf_Q_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_erf_Q_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the hazard function for the normal distribution.
# 
#   Returns: Cdouble
function gsl_sf_hazard (x::Cdouble)
    ccall( (:gsl_sf_hazard, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the hazard function for the normal distribution.
# 
#   Returns: Cint
function gsl_sf_hazard_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_hazard_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end
