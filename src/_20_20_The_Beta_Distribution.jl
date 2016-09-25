#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 20.20 The Beta Distribution #
###############################
export ran_beta, ran_beta_pdf, cdf_beta_P, cdf_beta_Q, cdf_beta_Pinv,
       cdf_beta_Qinv




# This function returns a random variate from the beta distribution.  The
# distribution function is,                 p(x) dx = {\Gamma(a+b) \over
# \Gamma(a) \Gamma(b)} x^{a-1} (1-x)^{b-1} dx  for  0 <= x <= 1.
# 
#   Returns: Cdouble
function ran_beta(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_beta, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a beta
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function ran_beta_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_beta_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_beta_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_beta_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_beta_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_beta_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_beta_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_beta_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_beta_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_beta_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
