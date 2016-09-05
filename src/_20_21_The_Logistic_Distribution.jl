#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 20.21 The Logistic Distribution #
###################################
export ran_logistic, ran_logistic_pdf, cdf_logistic_P, cdf_logistic_Q,
       cdf_logistic_Pinv, cdf_logistic_Qinv




# This function returns a random variate from the logistic distribution.  The
# distribution function is,                 p(x) dx = { \exp(-x/a) \over a (1 +
# \exp(-x/a))^2 } dx  for -\infty < x < +\infty.
# 
#   Returns: Cdouble
function ran_logistic(r::Ref{gsl_rng}, a::Real)
    ccall( (:gsl_ran_logistic, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble),
        r, a )
end


# This function computes the probability density p(x) at x for a logistic
# distribution with scale parameter a, using the formula given above.
# 
#   Returns: Cdouble
function ran_logistic_pdf(x::Real, a::Real)
    ccall( (:gsl_ran_logistic_pdf, libgsl), Cdouble, (Cdouble, Cdouble),
        x, a )
end
Compat.@dep_vectorize_2arg Number ran_logistic_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_logistic_P(x::Real, a::Real)
    ccall( (:gsl_cdf_logistic_P, libgsl), Cdouble, (Cdouble, Cdouble), x,
        a )
end
Compat.@dep_vectorize_2arg Number cdf_logistic_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_logistic_Q(x::Real, a::Real)
    ccall( (:gsl_cdf_logistic_Q, libgsl), Cdouble, (Cdouble, Cdouble), x,
        a )
end
Compat.@dep_vectorize_2arg Number cdf_logistic_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_logistic_Pinv(P::Real, a::Real)
    ccall( (:gsl_cdf_logistic_Pinv, libgsl), Cdouble, (Cdouble, Cdouble),
        P, a )
end
Compat.@dep_vectorize_2arg Number cdf_logistic_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the logistic distribution with scale parameter a.
# 
#   Returns: Cdouble
function cdf_logistic_Qinv(Q::Real, a::Real)
    ccall( (:gsl_cdf_logistic_Qinv, libgsl), Cdouble, (Cdouble, Cdouble),
        Q, a )
end
Compat.@dep_vectorize_2arg Number cdf_logistic_Qinv
