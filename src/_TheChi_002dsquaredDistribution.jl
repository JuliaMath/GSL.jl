#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 20.17 The Chi-squared Distribution #
######################################
export gsl_ran_chisq, gsl_ran_chisq_pdf, gsl_cdf_chisq_P, gsl_cdf_chisq_Q,
       gsl_cdf_chisq_Pinv, gsl_cdf_chisq_Qinv


# This function returns a random variate from the chi-squared distribution with
# nu degrees of freedom. The distribution function is,                 p(x) dx
# = {1 \over 2 \Gamma(\nu/2) } (x/2)^{\nu/2 - 1} \exp(-x/2) dx  for  x >= 0.
# 
#   {$x \ge 0$} 
#   Returns: Cdouble
function gsl_ran_chisq (r::Ptr{gsl_rng}, nu::Cdouble)
    ccall( (:gsl_ran_chisq, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble), r,
        nu )
end


# This function computes the probability density p(x) at x for a chi-squared
# distribution with nu degrees of freedom, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_chisq_pdf (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_ran_chisq_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        nu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_chisq_P (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_chisq_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x, nu
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_chisq_Q (x::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_chisq_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x, nu
        )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_chisq_Pinv (P::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_chisq_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble), P,
        nu )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function gsl_cdf_chisq_Qinv (Q::Cdouble, nu::Cdouble)
    ccall( (:gsl_cdf_chisq_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble), Q,
        nu )
end