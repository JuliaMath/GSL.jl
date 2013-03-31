#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.26 The Type-2 Gumbel Distribution #
########################################
export gsl_ran_gumbel2, gsl_ran_gumbel2_pdf, gsl_cdf_gumbel2_P,
       gsl_cdf_gumbel2_Q, gsl_cdf_gumbel2_Pinv, gsl_cdf_gumbel2_Qinv




# This function returns a random variate from the Type-2 Gumbel distribution.
# The Type-2 Gumbel distribution function is,                 p(x) dx = a b
# x^{-a-1} \exp(-b x^{-a}) dx  for 0 < x < \infty.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_gumbel2(r::Ptr{Void}, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_gumbel2, :libgsl), Cdouble, (Ptr{Void}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a Type-2 Gumbel
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_gumbel2_pdf(x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_gumbel2_pdf, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel2_P(x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel2_P, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel2_Q(x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel2_Q, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel2_Pinv(P::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel2_Pinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-2 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel2_Qinv(Q::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel2_Qinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
