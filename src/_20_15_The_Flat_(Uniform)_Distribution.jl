#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 20.15 The Flat (Uniform) Distribution #
#########################################
export gsl_ran_flat, gsl_ran_flat_pdf, gsl_cdf_flat_P, gsl_cdf_flat_Q,
       gsl_cdf_flat_Pinv, gsl_cdf_flat_Qinv




# This function returns a random variate from the flat (uniform) distribution
# from a to b. The distribution is,                 p(x) dx = {1 \over (b-a)}
# dx  if  a <= x < b and 0 otherwise.
# 
#   Returns: Cdouble
function gsl_ran_flat(r::Ptr{gsl_rng}, a::Real, b::Real)
    ccall( (:gsl_ran_flat, :libgsl), Cdouble, (Ptr{gsl_rng}, Cdouble,
        Cdouble), r, a, b )
end


# This function computes the probability density p(x) at x for a uniform
# distribution from a to b, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_flat_pdf(x::Real, a::Real, b::Real)
    ccall( (:gsl_ran_flat_pdf, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_ran_flat_pdf


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for a uniform distribution from a to b.
# 
#   Returns: Cdouble
function gsl_cdf_flat_P(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_flat_P, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_flat_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for a uniform distribution from a to b.
# 
#   Returns: Cdouble
function gsl_cdf_flat_Q(x::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_flat_Q, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), x, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_flat_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for a uniform distribution from a to b.
# 
#   Returns: Cdouble
function gsl_cdf_flat_Pinv(P::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_flat_Pinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), P, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_flat_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for a uniform distribution from a to b.
# 
#   Returns: Cdouble
function gsl_cdf_flat_Qinv(Q::Real, a::Real, b::Real)
    ccall( (:gsl_cdf_flat_Qinv, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), Q, a, b )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_cdf_flat_Qinv
