#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 20.14 The Gamma Distribution #
################################
export gsl_ran_gamma, gsl_ran_gamma_knuth, gsl_ran_gamma_pdf, gsl_cdf_gamma_P,
       gsl_cdf_gamma_Q, gsl_cdf_gamma_Pinv, gsl_cdf_gamma_Qinv




# This function returns a random variate from the gamma distribution.  The
# distribution function is,                 p(x) dx = {1 \over \Gamma(a) b^a}
# x^{a-1} e^{-x/b} dx  for x > 0.     The gamma distribution with an integer
# parameter a is known as the Erlang distribution.          The variates are
# computed using the Marsaglia-Tsang fast gamma method.  This function for this
# method was previously called gsl_ran_gamma_mt and can still be accessed using
# this name.
# 
#   Returns: Cdouble
function gsl_ran_gamma(r::Ptr{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_gamma, :libgsl), Cdouble, (Ptr{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function returns a gamma variate using the algorithms from Knuth (vol
# 2).
# 
#   Returns: Cdouble
function gsl_ran_gamma_knuth(r::Ptr{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_gamma_knuth, :libgsl), Cdouble, (Ptr{gsl_rng},
        Cdouble, Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a gamma
# distribution with parameters a and b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_gamma_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_gamma_pdf, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_ran_gamma_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the gamma distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gamma_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gamma_P, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_gamma_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the gamma distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gamma_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gamma_Q, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_gamma_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the gamma distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gamma_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gamma_Pinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_gamma_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the gamma distribution with parameters a and b.
# 
#   Returns: Cdouble
function gsl_cdf_gamma_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_gamma_Qinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_gamma_Qinv
