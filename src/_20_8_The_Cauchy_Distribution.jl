#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 20.8 The Cauchy Distribution #
################################
export ran_cauchy, ran_cauchy_pdf, cdf_cauchy_P, cdf_cauchy_Q, cdf_cauchy_Pinv,
       cdf_cauchy_Qinv




# This function returns a random variate from the Cauchy distribution with
# scale parameter a.  The probability distribution for Cauchy random variates
# is,                 p(x) dx = {1 \over a\pi (1 + (x/a)^2) } dx  for x in the
# range -\infty to +\infty.  The Cauchy distribution is also known as the
# Lorentz distribution.
# 
#   Returns: Cdouble
function ran_cauchy(r::Ref{gsl_rng}, a::Real)
    ccall( (:gsl_ran_cauchy, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r,
        a )
end


# This function computes the probability density p(x) at x for a Cauchy
# distribution with scale parameter a, using the formula given above.
# 
#   Returns: Cdouble
function ran_cauchy_pdf(x::Real, a::Real)
    ccall( (:gsl_ran_cauchy_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x,
        a )
end
Compat.@dep_vectorize_2arg Number ran_cauchy_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_cauchy_P(x::Real, a::Real)
    ccall( (:gsl_cdf_cauchy_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end
Compat.@dep_vectorize_2arg Number cdf_cauchy_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_cauchy_Q(x::Real, a::Real)
    ccall( (:gsl_cdf_cauchy_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end
Compat.@dep_vectorize_2arg Number cdf_cauchy_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_cauchy_Pinv(P::Real, a::Real)
    ccall( (:gsl_cdf_cauchy_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P,
        a )
end
Compat.@dep_vectorize_2arg Number cdf_cauchy_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Cauchy distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_cauchy_Qinv(Q::Real, a::Real)
    ccall( (:gsl_cdf_cauchy_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q,
        a )
end
Compat.@dep_vectorize_2arg Number cdf_cauchy_Qinv
