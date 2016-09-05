#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 20.17 The Chi-squared Distribution #
######################################
export ran_chisq, ran_chisq_pdf, cdf_chisq_P, cdf_chisq_Q, cdf_chisq_Pinv,
       cdf_chisq_Qinv






# This function returns a random variate from the chi-squared distribution with
# nu degrees of freedom. The distribution function is,                 p(x) dx
# = {1 \over 2 \Gamma(\nu/2) } (x/2)^{\nu/2 - 1} \exp(-x/2) dx  for  x >= 0.
# 
#   Returns: Cdouble
function ran_chisq(r::Ref{gsl_rng}, nu::Real)
    ccall( (:gsl_ran_chisq, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r,
        nu )
end


# This function computes the probability density p(x) at x for a chi-squared
# distribution with nu degrees of freedom, using the formula given above.
# 
#   Returns: Cdouble
function ran_chisq_pdf(x::Real, nu::Real)
    ccall( (:gsl_ran_chisq_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x,
        nu )
end
Compat.@dep_vectorize_2arg Number ran_chisq_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_chisq_P(x::Real, nu::Real)
    ccall( (:gsl_cdf_chisq_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu
        )
end
Compat.@dep_vectorize_2arg Number cdf_chisq_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_chisq_Q(x::Real, nu::Real)
    ccall( (:gsl_cdf_chisq_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu
        )
end
Compat.@dep_vectorize_2arg Number cdf_chisq_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_chisq_Pinv(P::Real, nu::Real)
    ccall( (:gsl_cdf_chisq_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P,
        nu )
end
Compat.@dep_vectorize_2arg Number cdf_chisq_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the chi-squared distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_chisq_Qinv(Q::Real, nu::Real)
    ccall( (:gsl_cdf_chisq_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q,
        nu )
end
Compat.@dep_vectorize_2arg Number cdf_chisq_Qinv
