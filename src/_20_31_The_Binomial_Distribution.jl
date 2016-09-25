#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 20.31 The Binomial Distribution #
###################################
export ran_binomial, ran_binomial_pdf, cdf_binomial_P, cdf_binomial_Q




# This function returns a random integer from the binomial distribution, the
# number of successes in n independent trials with probability p.  The
# probability distribution for binomial variates is,                 p(k) = {n!
# \over k! (n-k)! } p^k (1-p)^{n-k}  for  0 <= k <= n.
# 
#   Returns: Cuint
function ran_binomial(r::Ref{gsl_rng}, p::Real, n::Integer)
    ccall( (:gsl_ran_binomial, libgsl), Cuint, (Ref{gsl_rng}, Cdouble,
        Cuint), r, p, n )
end


# This function computes the probability p(k) of obtaining k from a binomial
# distribution with parameters p and n, using the formula given above.
# 
#   Returns: Cdouble
function ran_binomial_pdf(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_ran_binomial_pdf, libgsl), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k)  for
# the binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_binomial_P(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_cdf_binomial_P, libgsl), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k)  for
# the binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_binomial_Q(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_cdf_binomial_Q, libgsl), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end
