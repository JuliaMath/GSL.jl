#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 20.18 The F-distribution #
############################
export ran_fdist, ran_fdist_pdf, cdf_fdist_P, cdf_fdist_Q, cdf_fdist_Pinv,
       cdf_fdist_Qinv






# This function returns a random variate from the F-distribution with degrees
# of freedom nu1 and nu2. The distribution function is,                 p(x) dx
# =              { \Gamma((\nu_1 + \nu_2)/2)                   \over
# \Gamma(\nu_1/2) \Gamma(\nu_2/2) }              \nu_1^{\nu_1/2}
# \nu_2^{\nu_2/2}              x^{\nu_1/2 - 1} (\nu_2 + \nu_1 x)^{-\nu_1/2
# -\nu_2/2}  for  x >= 0.
# 
#   Returns: Cdouble
function ran_fdist(r::Ref{gsl_rng}, nu1::Real, nu2::Real)
    ccall( (:gsl_ran_fdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble,
        Cdouble), r, nu1, nu2 )
end


# This function computes the probability density p(x) at x for an
# F-distribution with nu1 and nu2 degrees of freedom, using the formula given
# above.
# 
#   Returns: Cdouble
function ran_fdist_pdf(x::Real, nu1::Real, nu2::Real)
    ccall( (:gsl_ran_fdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, nu1, nu2 )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the F-distribution with nu1 and nu2 degrees of freedom.
# 
#   Returns: Cdouble
function cdf_fdist_P(x::Real, nu1::Real, nu2::Real)
    ccall( (:gsl_cdf_fdist_P, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, nu1, nu2 )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the F-distribution with nu1 and nu2 degrees of freedom.
# 
#   Returns: Cdouble
function cdf_fdist_Q(x::Real, nu1::Real, nu2::Real)
    ccall( (:gsl_cdf_fdist_Q, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, nu1, nu2 )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the F-distribution with nu1 and nu2 degrees of freedom.
# 
#   Returns: Cdouble
function cdf_fdist_Pinv(P::Real, nu1::Real, nu2::Real)
    ccall( (:gsl_cdf_fdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, nu1, nu2 )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the F-distribution with nu1 and nu2 degrees of freedom.
# 
#   Returns: Cdouble
function cdf_fdist_Qinv(Q::Real, nu1::Real, nu2::Real)
    ccall( (:gsl_cdf_fdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, nu1, nu2 )
end
