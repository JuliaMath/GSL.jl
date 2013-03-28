#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.25 The Type-1 Gumbel Distribution #
########################################
export gsl_ran_gumbel1, gsl_ran_gumbel1_pdf, gsl_cdf_gumbel1_P,
       gsl_cdf_gumbel1_Q, gsl_cdf_gumbel1_Pinv, gsl_cdf_gumbel1_Qinv


### Function uses unknown type; disabled
### # This function returns  a random variate from the Type-1 Gumbel distribution.
# The Type-1 Gumbel distribution function is,                 p(x) dx = a b
# \exp(-(b \exp(-ax) + ax)) dx  for -\infty < x < \infty.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_gumbel1 (r::Ptr{gsl_rng}, a::Cdouble, b::Cdouble)
###     ccall( (:gsl_ran_gumbel1, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble,
###         Cdouble), r, a, b )
### end


# This function computes the probability density p(x) at x for a Type-1 Gumbel
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_gumbel1_pdf (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_gumbel1_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel1_P (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel1_P, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel1_Q (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel1_Q, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel1_Pinv (P::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel1_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Type-1 Gumbel distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gumbel1_Qinv (Q::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_gumbel1_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end