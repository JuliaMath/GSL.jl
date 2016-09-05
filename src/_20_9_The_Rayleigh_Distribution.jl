#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.9 The Rayleigh Distribution #
##################################
export ran_rayleigh, ran_rayleigh_pdf, cdf_rayleigh_P, cdf_rayleigh_Q,
       cdf_rayleigh_Pinv, cdf_rayleigh_Qinv




# This function returns a random variate from the Rayleigh distribution with
# scale parameter sigma.  The distribution is,                 p(x) dx = {x
# \over \sigma^2} \exp(- x^2/(2 \sigma^2)) dx  for x > 0.
# 
#   Returns: Cdouble
function ran_rayleigh(r::Ref{gsl_rng}, sigma::Real)
    ccall( (:gsl_ran_rayleigh, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble),
        r, sigma )
end


# This function computes the probability density p(x) at x for a Rayleigh
# distribution with scale parameter sigma, using the formula given above.
# 
#   Returns: Cdouble
function ran_rayleigh_pdf(x::Real, sigma::Real)
    ccall( (:gsl_ran_rayleigh_pdf, libgsl), Cdouble, (Cdouble, Cdouble),
        x, sigma )
end
Compat.@dep_vectorize_2arg Number ran_rayleigh_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function cdf_rayleigh_P(x::Real, sigma::Real)
    ccall( (:gsl_cdf_rayleigh_P, libgsl), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end
Compat.@dep_vectorize_2arg Number cdf_rayleigh_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function cdf_rayleigh_Q(x::Real, sigma::Real)
    ccall( (:gsl_cdf_rayleigh_Q, libgsl), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end
Compat.@dep_vectorize_2arg Number cdf_rayleigh_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function cdf_rayleigh_Pinv(P::Real, sigma::Real)
    ccall( (:gsl_cdf_rayleigh_Pinv, libgsl), Cdouble, (Cdouble, Cdouble),
        P, sigma )
end
Compat.@dep_vectorize_2arg Number cdf_rayleigh_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Rayleigh distribution with scale parameter sigma.
# 
#   Returns: Cdouble
function cdf_rayleigh_Qinv(Q::Real, sigma::Real)
    ccall( (:gsl_cdf_rayleigh_Qinv, libgsl), Cdouble, (Cdouble, Cdouble),
        Q, sigma )
end
Compat.@dep_vectorize_2arg Number cdf_rayleigh_Qinv
