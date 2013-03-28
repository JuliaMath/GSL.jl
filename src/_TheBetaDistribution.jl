#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 20.20 The Beta Distribution #
###############################
export gsl_ran_beta, gsl_ran_beta_pdf, gsl_cdf_beta_P, gsl_cdf_beta_Q,
       gsl_cdf_beta_Pinv, gsl_cdf_beta_Qinv


### Function uses unknown type; disabled
### # This function returns a random variate from the beta distribution.  The
# distribution function is,                 p(x) dx = {\Gamma(a+b) \over
# \Gamma(a) \Gamma(b)} x^{a-1} (1-x)^{b-1} dx  for  0 <= x <= 1.
# 
### #   {$0 \le x \le 1$} 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_beta (r::Ptr{gsl_rng}, a::Cdouble, b::Cdouble)
###     ccall( (:gsl_ran_beta, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble,
###         Cdouble), r, a, b )
### end


# This function computes the probability density p(x) at x for a beta
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_beta_pdf (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_ran_beta_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_beta_P (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_beta_P, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_beta_Q (x::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_beta_Q, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_beta_Pinv (P::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_beta_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the beta distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_beta_Qinv (Q::Cdouble, a::Cdouble, b::Cdouble)
    ccall( (:gsl_cdf_beta_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end