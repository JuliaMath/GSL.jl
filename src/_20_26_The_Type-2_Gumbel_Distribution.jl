#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.26 The Type-2 Gumbel Distribution #
########################################
export ran_gumbel2, ran_gumbel2_pdf, cdf_gumbel2_P, cdf_gumbel2_Q,
       cdf_gumbel2_Pinv, cdf_gumbel2_Qinv




# This function returns a random variate from the Type-2 Gumbel distribution.
# The Type-2 Gumbel distribution function is,                 p(x) dx = a b
# x^{-a-1} \exp(-b x^{-a}) dx  for 0 < x < \infty.
# 
#   Returns: Cdouble
function ran_gumbel2(r::Ref{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_gumbel2, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Type-2 Gumbel
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function ran_gumbel2_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_gumbel2_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel2_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel2_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel2_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel2_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel2_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel2_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function cdf_gumbel2_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gumbel2_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
