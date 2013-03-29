#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.34 The Pascal Distribution #
#################################
export gsl_ran_pascal, gsl_ran_pascal_pdf, gsl_cdf_pascal_P, gsl_cdf_pascal_Q




# This function returns a random integer from the Pascal distribution.  The
# Pascal distribution is simply a negative binomial distribution with an
# integer value of n.                 p(k) = {(n + k - 1)! \over k! (n - 1)! }
# p^n (1-p)^k  for  k >= 0
# 
#   Returns: Cuint
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_pascal (r::Ptr{Void}, p::Cdouble, n::Cuint)
    ccall( (:gsl_ran_pascal, "libgsl"), Cuint, (Ptr{Void}, Cdouble, Cuint),
        r, p, n )
end


# This function computes the probability p(k) of obtaining k from a Pascal
# distribution with parameters p and n, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_pascal_pdf (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_ran_pascal_pdf, "libgsl"), Cdouble, (Cuint, Cdouble,
        Cuint), k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the Pascal distribution with parameters p and n.
# 
#   Returns: Cdouble
function gsl_cdf_pascal_P (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_cdf_pascal_P, "libgsl"), Cdouble, (Cuint, Cdouble, Cuint),
        k, p, n )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the Pascal distribution with parameters p and n.
# 
#   Returns: Cdouble
function gsl_cdf_pascal_Q (k::Cuint, p::Cdouble, n::Cuint)
    ccall( (:gsl_cdf_pascal_Q, "libgsl"), Cdouble, (Cuint, Cdouble, Cuint),
        k, p, n )
end
