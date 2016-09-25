#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 20.33 The Negative Binomial Distribution #
############################################
export ran_negative_binomial, ran_negative_binomial_pdf,
       cdf_negative_binomial_P, cdf_negative_binomial_Q




# This function returns a random integer from the negative binomial
# distribution, the number of failures occurring before n successes in
# independent trials with probability p of success.  The probability
# distribution for negative binomial variates is,                 p(k) =
# {\Gamma(n + k) \over \Gamma(k+1) \Gamma(n) } p^n (1-p)^k  Note that n is not
# required to be an integer.
# 
#   Returns: Cuint
function ran_negative_binomial(r::Ref{gsl_rng}, p::Real, n::Real)
    ccall( (:gsl_ran_negative_binomial, libgsl), Cuint, (Ref{gsl_rng},
        Cdouble, Cdouble), r, p, n )
end


# This function computes the probability p(k) of obtaining k from a negative
# binomial distribution with parameters p and n, using the formula given above.
# 
#   Returns: Cdouble
function ran_negative_binomial_pdf(k::Integer, p::Real, n::Real)
    ccall( (:gsl_ran_negative_binomial_pdf, libgsl), Cdouble, (Cuint,
        Cdouble, Cdouble), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the negative binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_negative_binomial_P(k::Integer, p::Real, n::Real)
    ccall( (:gsl_cdf_negative_binomial_P, libgsl), Cdouble, (Cuint,
        Cdouble, Cdouble), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the negative binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_negative_binomial_Q(k::Integer, p::Real, n::Real)
    ccall( (:gsl_cdf_negative_binomial_Q, libgsl), Cdouble, (Cuint,
        Cdouble, Cdouble), k, p, n )
end
