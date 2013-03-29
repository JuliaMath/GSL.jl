#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.22 The Pareto Distribution #
#################################
export gsl_ran_pareto, gsl_ran_pareto_pdf, gsl_cdf_pareto_P, gsl_cdf_pareto_Q,
       gsl_cdf_pareto_Pinv, gsl_cdf_pareto_Qinv




# This function returns a random variate from the Pareto distribution of order
# a.  The distribution function is,                 p(x) dx = (a/b) /
# (x/b)^{a+1} dx  for  x >= b.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_pareto (r::Ptr{Void}, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_pareto, "libgsl"), Cdouble, (Ptr{Void}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Pareto
# distribution with exponent a and scale b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_pareto_pdf (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_pareto_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function gsl_cdf_pareto_P (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_pareto_P, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function gsl_cdf_pareto_Q (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_pareto_Q, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function gsl_cdf_pareto_Pinv (P::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_pareto_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Pareto distribution with exponent a and scale b.
# 
#   Returns: Cdouble
function gsl_cdf_pareto_Qinv (Q::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_pareto_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
