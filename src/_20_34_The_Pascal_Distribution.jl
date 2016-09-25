#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.34 The Pascal Distribution #
#################################
export ran_pascal, ran_pascal_pdf, cdf_pascal_P, cdf_pascal_Q




# This function returns a random integer from the Pascal distribution.  The
# Pascal distribution is simply a negative binomial distribution with an
# integer value of n.                 p(k) = {(n + k - 1)! \over k! (n - 1)! }
# p^n (1-p)^k  for  k >= 0
# 
#   Returns: Cuint
function ran_pascal(r::Ref{gsl_rng}, p::Real, n::Integer)
    ccall( (:gsl_ran_pascal, libgsl), Cuint, (Ref{gsl_rng}, Cdouble,
        Cuint), r, p, n )
end


# This function computes the probability p(k) of obtaining k from a Pascal
# distribution with parameters p and n, using the formula given above.
# 
#   Returns: Cdouble
function ran_pascal_pdf(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_ran_pascal_pdf, libgsl), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the Pascal distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_pascal_P(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_cdf_pascal_P, libgsl), Cdouble, (Cuint, Cdouble, Cuint),
        k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the Pascal distribution with parameters p and n.
# 
#   Returns: Cdouble
function cdf_pascal_Q(k::Integer, p::Real, n::Integer)
    ccall( (:gsl_cdf_pascal_Q, libgsl), Cdouble, (Cuint, Cdouble, Cuint),
        k, p, n )
end
