#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.6 The Laplace Distribution #
#################################
export gsl_ran_laplace, gsl_ran_laplace_pdf, gsl_cdf_laplace_P,
       gsl_cdf_laplace_Q, gsl_cdf_laplace_Pinv, gsl_cdf_laplace_Qinv


### Function uses unknown type; disabled
### # This function returns a random variate from the Laplace distribution with
# width a.  The distribution is,                 p(x) dx = {1 \over 2 a}
# \exp(-|x/a|) dx  for -\infty < x < \infty.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_laplace (r::Ptr{gsl_rng}, a::Cdouble)
###     ccall( (:gsl_ran_laplace, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble),
###         r, a )
### end


# This function computes the probability density p(x) at x for a Laplace
# distribution with width a, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_laplace_pdf (x::Cdouble, a::Cdouble)
    ccall( (:gsl_ran_laplace_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function gsl_cdf_laplace_P (x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_laplace_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function gsl_cdf_laplace_Q (x::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_laplace_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function gsl_cdf_laplace_Pinv (P::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_laplace_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        P, a )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function gsl_cdf_laplace_Qinv (Q::Cdouble, a::Cdouble)
    ccall( (:gsl_cdf_laplace_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        Q, a )
end