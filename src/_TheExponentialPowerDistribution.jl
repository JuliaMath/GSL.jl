#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 20.7 The Exponential Power Distribution #
###########################################
export gsl_ran_exppow, gsl_ran_exppow_pdf, gsl_cdf_exppow_P, gsl_cdf_exppow_Q


# This function returns a random variate from the exponential power
# distribution with scale parameter a and exponent b.  The distribution is,
# p(x) dx = {1 \over 2 a \Gamma(1+1/b)} \exp(-|x/a|^b) dx  for  x >= 0.  For b
# = 1 this reduces to the Laplace distribution.  For b = 2 it has the same form
# as a Gaussian distribution, but with  a = \sqrt{2} \sigma.
# 
#   {$x \ge 0$} 
#   {$a = \sqrt{2} \sigma$} 
#   Returns: Cdouble
function gsl_ran_exppow (r::Ptr{gsl_rng}, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_exppow, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for an exponential
# power distribution with scale parameter a and exponent b, using the formula
# given above.
# 
#   Returns: Cdouble
function gsl_ran_exppow_pdf (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_exppow_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) for
# the exponential power distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_exppow_P (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_exppow_P, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) for
# the exponential power distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_exppow_Q (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_exppow_Q, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end