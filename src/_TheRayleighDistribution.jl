#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.9 The Rayleigh Distribution #
##################################
export gsl_ran_rayleigh, gsl_ran_rayleigh_pdf, gsl_cdf_rayleigh_P,
       gsl_cdf_rayleigh_Q, gsl_cdf_rayleigh_Pinv, gsl_cdf_rayleigh_Qinv




# This function returns a random variate from the Rayleigh distribution with
# scale parameter sigma.  The distribution is,                 p(x) dx = {x
# \over \sigma^2} \exp(- x^2/(2 \sigma^2)) dx  for x > 0.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_rayleigh (r::Ptr{Void}, sigma::Cdouble)
    ccall( (:gsl_ran_rayleigh, "libgsl"), Cdouble, (Ptr{Void}, Cdouble), r,
        sigma )
end


# This function computes the probability density p(x) at x for a Rayleigh
# distribution with scale parameter sigma, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_rayleigh_pdf (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_ran_rayleigh_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function gsl_cdf_rayleigh_P (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_rayleigh_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function gsl_cdf_rayleigh_Q (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_rayleigh_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function gsl_cdf_rayleigh_Pinv (P::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_rayleigh_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        P, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function gsl_cdf_rayleigh_Qinv (Q::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_rayleigh_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        Q, sigma )
end
