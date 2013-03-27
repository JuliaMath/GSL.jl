#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 20.21 The Logistic Distribution #
###################################
export gsl_ran_logistic, gsl_ran_logistic_pdf, gsl_cdf_logistic_P,
       gsl_cdf_logistic_Q, gsl_cdf_logistic_Pinv, gsl_cdf_logistic_Qinv


# This function returns a random variate from the logistic distribution.  The
# distribution function is,                 p(x) dx = { \exp(-x/a) \over a (1 +
# \exp(-x/a))^2 } dx  for -\infty < x < +\infty.
# 
#   Returns: Cdouble
function gsl_ran_logistic (r::Ptr{gsl_rng}, a::Cdouble)
    ccall( (:gsl_ran_logistic, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble),
        r, a )
end


# This function computes the probability density p(x) at x for a logistic
# distribution with scale parameter a, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_logistic_pdf (x::Cdouble, a::Cdouble)
    ccall( (:gsl_ran_logistic_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_logistic_P (x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_logistic_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_logistic_Q (x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_logistic_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_logistic_Pinv (P::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_logistic_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        P, a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_logistic_Qinv (Q::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_logistic_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        Q, a )
end