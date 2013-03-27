#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 20.31 The Binomial Distribution #
###################################
export gsl_ran_binomial, gsl_ran_binomial_pdf, gsl_cdf_binomial_P,
       gsl_cdf_binomial_Q


# This function returns a random integer from the binomial distribution, the
# number of successes in n independent trials with probability p.  The
# probability distribution for binomial variates is,                 p(k) = {n!
# \over k! (n-k)! } p^k (1-p)^{n-k}  for  0 <= k <= n.
# 
#   {$0 \le k \le n$} 
#   Returns: Cuint
function gsl_ran_binomial (r::Ptr{gsl_rng}, p::Cdouble, n::Cuint)
    ccall( (:gsl_ran_binomial, "libgsl"), Cuint, (Ptr{gsl_rng}, Cdouble,
        Cuint), r, p, n )
end


# This function computes the probability p(k) of obtaining k from a binomial
# distribution with parameters p and n, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_binomial_pdf (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_ran_binomial_pdf, "libgsl"), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k)  for
# the binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function gsl_cdf_binomial_P (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_cdf_binomial_P, "libgsl"), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k)  for
# the binomial distribution with parameters p and n.
# 
#   Returns: Cdouble
function gsl_cdf_binomial_Q (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_cdf_binomial_Q, "libgsl"), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end