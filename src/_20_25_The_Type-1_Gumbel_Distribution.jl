#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.25 The Type-1 Gumbel Distribution #
########################################
export ran_gumbel1, ran_gumbel1_pdf, cdf_gumbel1_P, cdf_gumbel1_Q,
       cdf_gumbel1_Pinv, cdf_gumbel1_Qinv




# This function returns  a random variate from the Type-1 Gumbel distribution.
# The Type-1 Gumbel distribution function is,                 p(x) dx = a b
# \exp(-(b \exp(-ax) + ax)) dx  for -\infty < x < \infty.
# 
#   Returns: Cdouble
function ran_gumbel1(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_gumbel1, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Type-1 Gumbel
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function ran_gumbel1_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_gumbel1_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel1_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel1_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel1_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel1_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel1_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel1_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel1_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel1_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
