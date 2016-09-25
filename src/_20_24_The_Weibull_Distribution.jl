#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.24 The Weibull Distribution #
##################################
export ran_weibull, ran_weibull_pdf, cdf_weibull_P, cdf_weibull_Q,
       cdf_weibull_Pinv, cdf_weibull_Qinv




# This function returns a random variate from the Weibull distribution.  The
# distribution function is,                 p(x) dx = {b \over a^b} x^{b-1}
# \exp(-(x/a)^b) dx  for  x >= 0.
# 
#   Returns: Cdouble
function ran_weibull(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_weibull, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Weibull
# distribution with scale a and exponent b, using the formula given above.
# 
#   Returns: Cdouble
function ran_weibull_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_weibull_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function cdf_weibull_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_weibull_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function cdf_weibull_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_weibull_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function cdf_weibull_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_weibull_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function cdf_weibull_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_weibull_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
