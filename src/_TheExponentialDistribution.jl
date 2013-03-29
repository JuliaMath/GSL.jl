#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 20.5 The Exponential Distribution #
#####################################
export gsl_ran_exponential, gsl_ran_exponential_pdf, gsl_cdf_exponential_P,
       gsl_cdf_exponential_Q, gsl_cdf_exponential_Pinv,
       gsl_cdf_exponential_Qinv




# This function returns a random variate from the exponential distribution with
# mean mu. The distribution is,                 p(x) dx = {1 \over \mu}
# \exp(-x/\mu) dx  for  x >= 0.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_exponential (r::Ptr{Void}, mu::Cdouble)
    ccall( (:gsl_ran_exponential, "libgsl"), Cdouble, (Ptr{Void}, Cdouble),
        r, mu )
end


# This function computes the probability density p(x) at x for an exponential
# distribution with mean mu, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_exponential_pdf (x::Cdouble, mu::Cdouble)
    ccall( (:gsl_ran_exponential_pdf, "libgsl"), Cdouble, (Cdouble,
        Cdouble), x, mu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function gsl_cdf_exponential_P (x::Cdouble, mu::Cdouble)
    ccall( (:gsl_cdf_exponential_P, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, mu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function gsl_cdf_exponential_Q (x::Cdouble, mu::Cdouble)
    ccall( (:gsl_cdf_exponential_Q, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, mu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function gsl_cdf_exponential_Pinv (P::Cdouble, mu::Cdouble)
    ccall( (:gsl_cdf_exponential_Pinv, "libgsl"), Cdouble, (Cdouble,
        Cdouble), P, mu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function gsl_cdf_exponential_Qinv (Q::Cdouble, mu::Cdouble)
    ccall( (:gsl_cdf_exponential_Qinv, "libgsl"), Cdouble, (Cdouble,
        Cdouble), Q, mu )
end
