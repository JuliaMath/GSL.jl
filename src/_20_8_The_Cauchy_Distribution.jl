#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 20.8 The Cauchy Distribution #
################################
export gsl_ran_cauchy, gsl_ran_cauchy_pdf, gsl_cdf_cauchy_P, gsl_cdf_cauchy_Q,
       gsl_cdf_cauchy_Pinv, gsl_cdf_cauchy_Qinv




# This function returns a random variate from the Cauchy distribution with
# scale parameter a.  The probability distribution for Cauchy random variates
# is,                 p(x) dx = {1 \over a\pi (1 + (x/a)^2) } dx  for x in the
# range -\infty to +\infty.  The Cauchy distribution is also known as the
# Lorentz distribution.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_cauchy(r::Ptr{Void}, a::Cdouble)
    ccall( (:gsl_ran_cauchy, :libgsl), Cdouble, (Ptr{Void}, Cdouble), r, a
        )
end


# This function computes the probability density p(x) at x for a Cauchy
# distribution with scale parameter a, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_cauchy_pdf(x::Cdouble, a::Cdouble)
    ccall( (:gsl_ran_cauchy_pdf, :libgsl), Cdouble, (Cdouble, Cdouble), x,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_cauchy_P(x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_cauchy_P, :libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_cauchy_Q(x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_cauchy_Q, :libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_cauchy_Pinv(P::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_cauchy_Pinv, :libgsl), Cdouble, (Cdouble, Cdouble), P,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function gsl_cdf_cauchy_Qinv(Q::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_cauchy_Qinv, :libgsl), Cdouble, (Cdouble, Cdouble), Q,
        a )
end
