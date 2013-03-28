#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 20.19 The t-distribution #
############################
export gsl_ran_tdist, gsl_ran_tdist_pdf, gsl_cdf_tdist_P, gsl_cdf_tdist_Q,
       gsl_cdf_tdist_Pinv, gsl_cdf_tdist_Qinv


### Function uses unknown type; disabled
### # This function returns a random variate from the t-distribution.  The
# distribution function is,                 p(x) dx = {\Gamma((\nu + 1)/2)
# \over \sqrt{\pi \nu} \Gamma(\nu/2)}              (1 + x^2/\nu)^{-(\nu + 1)/2}
# dx  for -\infty < x < +\infty.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_tdist (r::Ptr{gsl_rng}, nu::Cdouble)
###     ccall( (:gsl_ran_tdist, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble), r,
###         nu )
### end


# This function computes the probability density p(x) at x for a t-distribution
# with nu degrees of freedom, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_tdist_pdf (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_ran_tdist_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        nu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_tdist_P (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_tdist_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x, nu
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_tdist_Q (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_tdist_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x, nu
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_tdist_Pinv (P::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_tdist_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble), P,
        nu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_tdist_Qinv (Q::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_tdist_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble), Q,
        nu )
end