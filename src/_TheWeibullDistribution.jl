#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.24 The Weibull Distribution #
##################################
export gsl_ran_weibull, gsl_ran_weibull_pdf, gsl_cdf_weibull_P,
       gsl_cdf_weibull_Q, gsl_cdf_weibull_Pinv, gsl_cdf_weibull_Qinv


### Function uses unknown type; disabled
### # This function returns a random variate from the Weibull distribution.  The
# distribution function is,                 p(x) dx = {b \over a^b} x^{b-1}
# \exp(-(x/a)^b) dx  for  x >= 0.
# 
### #   {$x \ge 0$} 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_weibull (r::Ptr{gsl_rng}, a::Cdouble, b::Cdouble)
###     ccall( (:gsl_ran_weibull, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble,
###         Cdouble), r, a, b )
### end


# This function computes the probability density p(x) at x for a Weibull
# distribution with scale a and exponent b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_weibull_pdf (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_weibull_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function gsl_cdf_weibull_P (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_weibull_P, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function gsl_cdf_weibull_Q (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_weibull_Q, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function gsl_cdf_weibull_Pinv (P::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_weibull_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Weibull distribution with scale a and exponent b.
# 
#   Returns: Cdouble
function gsl_cdf_weibull_Qinv (Q::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_weibull_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end