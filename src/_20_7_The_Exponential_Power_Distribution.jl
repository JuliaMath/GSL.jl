#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 20.7 The Exponential Power Distribution #
###########################################
export ran_exppow, ran_exppow_pdf, cdf_exppow_P, cdf_exppow_Q




# This function returns a random variate from the exponential power
# distribution with scale parameter a and exponent b.  The distribution is,
# p(x) dx = {1 \over 2 a \Gamma(1+1/b)} \exp(-|x/a|^b) dx  for  x >= 0.  For b
# = 1 this reduces to the Laplace distribution.  For b = 2 it has the same form
# as a Gaussian distribution, but with  a = \sqrt{2} \sigma.
# 
#   Returns: Cdouble
function ran_exppow(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_exppow, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for an exponential
# power distribution with scale parameter a and exponent b, using the formula
# given above.
# 
#   Returns: Cdouble
function ran_exppow_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_exppow_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) for
# the exponential power distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_exppow_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_exppow_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) for
# the exponential power distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_exppow_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_exppow_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
