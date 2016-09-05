#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 20.5 The Exponential Distribution #
#####################################
export ran_exponential, ran_exponential_pdf, cdf_exponential_P,
       cdf_exponential_Q, cdf_exponential_Pinv, cdf_exponential_Qinv




# This function returns a random variate from the exponential distribution with
# mean mu. The distribution is,                 p(x) dx = {1 \over \mu}
# \exp(-x/\mu) dx  for  x >= 0.
# 
#   Returns: Cdouble
function ran_exponential(r::Ref{gsl_rng}, mu::Real)
    ccall( (:gsl_ran_exponential, libgsl), Cdouble, (Ref{gsl_rng},
        Cdouble), r, mu )
end


# This function computes the probability density p(x) at x for an exponential
# distribution with mean mu, using the formula given above.
# 
#   Returns: Cdouble
function ran_exponential_pdf(x::Real, mu::Real)
    ccall( (:gsl_ran_exponential_pdf, libgsl), Cdouble, (Cdouble,
        Cdouble), x, mu )
end
Compat.@dep_vectorize_2arg Number ran_exponential_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function cdf_exponential_P(x::Real, mu::Real)
    ccall( (:gsl_cdf_exponential_P, libgsl), Cdouble, (Cdouble, Cdouble),
        x, mu )
end
Compat.@dep_vectorize_2arg Number cdf_exponential_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function cdf_exponential_Q(x::Real, mu::Real)
    ccall( (:gsl_cdf_exponential_Q, libgsl), Cdouble, (Cdouble, Cdouble),
        x, mu )
end
Compat.@dep_vectorize_2arg Number cdf_exponential_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function cdf_exponential_Pinv(P::Real, mu::Real)
    ccall( (:gsl_cdf_exponential_Pinv, libgsl), Cdouble, (Cdouble,
        Cdouble), P, mu )
end
Compat.@dep_vectorize_2arg Number cdf_exponential_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the exponential distribution with mean mu.
# 
#   Returns: Cdouble
function cdf_exponential_Qinv(Q::Real, mu::Real)
    ccall( (:gsl_cdf_exponential_Qinv, libgsl), Cdouble, (Cdouble,
        Cdouble), Q, mu )
end
Compat.@dep_vectorize_2arg Number cdf_exponential_Qinv
