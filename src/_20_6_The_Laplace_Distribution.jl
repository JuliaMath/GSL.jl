#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.6 The Laplace Distribution #
#################################
export ran_laplace, ran_laplace_pdf, cdf_laplace_P, cdf_laplace_Q,
       cdf_laplace_Pinv, cdf_laplace_Qinv




# This function returns a random variate from the Laplace distribution with
# width a.  The distribution is,                 p(x) dx = {1 \over 2 a}
# \exp(-|x/a|) dx  for -\infty < x < \infty.
# 
#   Returns: Cdouble
function ran_laplace(r::Ref{gsl_rng}, a::Real)
    ccall( (:gsl_ran_laplace, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble),
        r, a )
end


# This function computes the probability density p(x) at x for a Laplace
# distribution with width a, using the formula given above.
# 
#   Returns: Cdouble
function ran_laplace_pdf(x::Real, a::Real)
    ccall( (:gsl_ran_laplace_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x,
        a )
end
Compat.@dep_vectorize_2arg Number ran_laplace_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function cdf_laplace_P(x::Real, a::Real)
    ccall( (:gsl_cdf_laplace_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end
Compat.@dep_vectorize_2arg Number cdf_laplace_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function cdf_laplace_Q(x::Real, a::Real)
    ccall( (:gsl_cdf_laplace_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a
        )
end
Compat.@dep_vectorize_2arg Number cdf_laplace_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function cdf_laplace_Pinv(P::Real, a::Real)
    ccall( (:gsl_cdf_laplace_Pinv, libgsl), Cdouble, (Cdouble, Cdouble),
        P, a )
end
Compat.@dep_vectorize_2arg Number cdf_laplace_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Laplace distribution with width a.
# 
#   Returns: Cdouble
function cdf_laplace_Qinv(Q::Real, a::Real)
    ccall( (:gsl_cdf_laplace_Qinv, libgsl), Cdouble, (Cdouble, Cdouble),
        Q, a )
end
Compat.@dep_vectorize_2arg Number cdf_laplace_Qinv
