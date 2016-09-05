#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 20.19 The t-distribution #
############################
export ran_tdist, ran_tdist_pdf, cdf_tdist_P, cdf_tdist_Q, cdf_tdist_Pinv,
       cdf_tdist_Qinv






# This function returns a random variate from the t-distribution.  The
# distribution function is,                 p(x) dx = {\Gamma((\nu + 1)/2)
# \over \sqrt{\pi \nu} \Gamma(\nu/2)}              (1 + x^2/\nu)^{-(\nu + 1)/2}
# dx  for -\infty < x < +\infty.
# 
#   Returns: Cdouble
function ran_tdist(r::Ref{gsl_rng}, nu::Real)
    ccall( (:gsl_ran_tdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r,
        nu )
end


# This function computes the probability density p(x) at x for a t-distribution
# with nu degrees of freedom, using the formula given above.
# 
#   Returns: Cdouble
function ran_tdist_pdf(x::Real, nu::Real)
    ccall( (:gsl_ran_tdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x,
        nu )
end
Compat.@dep_vectorize_2arg Number ran_tdist_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_tdist_P(x::Real, nu::Real)
    ccall( (:gsl_cdf_tdist_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu
        )
end
Compat.@dep_vectorize_2arg Number cdf_tdist_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_tdist_Q(x::Real, nu::Real)
    ccall( (:gsl_cdf_tdist_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu
        )
end
Compat.@dep_vectorize_2arg Number cdf_tdist_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_tdist_Pinv(P::Real, nu::Real)
    ccall( (:gsl_cdf_tdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P,
        nu )
end
Compat.@dep_vectorize_2arg Number cdf_tdist_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the t-distribution with nu degrees of freedom.
# 
#   Returns: Cdouble
function cdf_tdist_Qinv(Q::Real, nu::Real)
    ccall( (:gsl_cdf_tdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q,
        nu )
end
Compat.@dep_vectorize_2arg Number cdf_tdist_Qinv
