#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 20.16 The Lognormal Distribution #
####################################
export ran_lognormal, ran_lognormal_pdf, cdf_lognormal_P, cdf_lognormal_Q,
       cdf_lognormal_Pinv, cdf_lognormal_Qinv




# This function returns a random variate from the lognormal distribution.  The
# distribution function is,                 p(x) dx = {1 \over x \sqrt{2 \pi
# \sigma^2} } \exp(-(\ln(x) - \zeta)^2/2 \sigma^2) dx  for x > 0.
# 
#   Returns: Cdouble
function ran_lognormal(r::Ref{gsl_rng}, zeta::Real, sigma::Real)
    ccall( (:gsl_ran_lognormal, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, zeta, sigma )
end


# This function computes the probability density p(x) at x for a lognormal
# distribution with parameters zeta and sigma, using the formula given above.
# 
#   Returns: Cdouble
function ran_lognormal_pdf(x::Real, zeta::Real, sigma::Real)
    ccall( (:gsl_ran_lognormal_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, zeta, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the lognormal distribution with parameters zeta and sigma.
# 
#   Returns: Cdouble
function cdf_lognormal_P(x::Real, zeta::Real, sigma::Real)
    ccall( (:gsl_cdf_lognormal_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, zeta, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the lognormal distribution with parameters zeta and sigma.
# 
#   Returns: Cdouble
function cdf_lognormal_Q(x::Real, zeta::Real, sigma::Real)
    ccall( (:gsl_cdf_lognormal_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, zeta, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the lognormal distribution with parameters zeta and sigma.
# 
#   Returns: Cdouble
function cdf_lognormal_Pinv(P::Real, zeta::Real, sigma::Real)
    ccall( (:gsl_cdf_lognormal_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, zeta, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the lognormal distribution with parameters zeta and sigma.
# 
#   Returns: Cdouble
function cdf_lognormal_Qinv(Q::Real, zeta::Real, sigma::Real)
    ccall( (:gsl_cdf_lognormal_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, zeta, sigma )
end
