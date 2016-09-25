#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.22 The Pareto Distribution #
#################################
export ran_pareto, ran_pareto_pdf, cdf_pareto_P, cdf_pareto_Q, cdf_pareto_Pinv,
       cdf_pareto_Qinv




# This function returns a random variate from the Pareto distribution of order
# a.  The distribution function is,                 p(x) dx = (a/b) /
# (x/b)^{a+1} dx  for  x >= b.
# 
#   Returns: Cdouble
function ran_pareto(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_pareto, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Pareto
# distribution with exponent a and scale b, using the formula given above.
# 
#   Returns: Cdouble
function ran_pareto_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_pareto_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function cdf_pareto_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_pareto_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function cdf_pareto_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_pareto_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function cdf_pareto_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_pareto_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function cdf_pareto_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_pareto_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
