#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 20.36 The Hypergeometric Distribution #
#########################################
export ran_hypergeometric, ran_hypergeometric_pdf, cdf_hypergeometric_P,
       cdf_hypergeometric_Q




# This function returns a random integer from the hypergeometric distribution.
# The probability distribution for hypergeometric random variates is,
# p(k) =  C(n_1, k) C(n_2, t - k) / C(n_1 + n_2, t)  where C(a,b) =
# a!/(b!(a-b)!) and  t <= n_1 + n_2.  The domain of k is  max(0,t-n_2), ...,
# min(t,n_1).          If a population contains n_1 elements of “type 1” and
# n_2 elements of “type 2” then the hypergeometric distribution gives the
# probability of obtaining k elements of “type 1” in t samples from the
# population without replacement.
# 
#   Returns: Cuint
function ran_hypergeometric(r::Ref{gsl_rng}, n1::Integer, n2::Integer, t::Integer)
    ccall( (:gsl_ran_hypergeometric, libgsl), Cuint, (Ref{gsl_rng}, Cuint,
        Cuint, Cuint), r, n1, n2, t )
end


# This function computes the probability p(k) of obtaining k from a
# hypergeometric distribution with parameters n1, n2, t, using the formula
# given above.
# 
#   Returns: Cdouble
function ran_hypergeometric_pdf(k::Integer, n1::Integer, n2::Integer, t::Integer)
    ccall( (:gsl_ran_hypergeometric_pdf, libgsl), Cdouble, (Cuint, Cuint,
        Cuint, Cuint), k, n1, n2, t )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the hypergeometric distribution with parameters n1, n2 and t.
# 
#   Returns: Cdouble
function cdf_hypergeometric_P(k::Integer, n1::Integer, n2::Integer, t::Integer)
    ccall( (:gsl_cdf_hypergeometric_P, libgsl), Cdouble, (Cuint, Cuint,
        Cuint, Cuint), k, n1, n2, t )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the hypergeometric distribution with parameters n1, n2 and t.
# 
#   Returns: Cdouble
function cdf_hypergeometric_Q(k::Integer, n1::Integer, n2::Integer, t::Integer)
    ccall( (:gsl_cdf_hypergeometric_Q, libgsl), Cdouble, (Cuint, Cuint,
        Cuint, Cuint), k, n1, n2, t )
end
