#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 20.3 The Gaussian Tail Distribution #
#######################################
export ran_gaussian_tail, ran_gaussian_tail_pdf, ran_ugaussian_tail,
       ran_ugaussian_tail_pdf






# This function provides random variates from the upper tail of a Gaussian
# distribution with standard deviation sigma.  The values returned are larger
# than the lower limit a, which must be positive.  The method is based on
# Marsaglia's famous rectangle-wedge-tail algorithm (Ann.  Math. Stat. 32,
# 894–899 (1961)), with this aspect explained in Knuth, v2, 3rd ed, p139,586
# (exercise 11).          The probability distribution for Gaussian tail random
# variates is,                 p(x) dx = {1 \over N(a;\sigma) \sqrt{2 \pi
# \sigma^2}} \exp (- x^2/(2 \sigma^2)) dx  for x > a where N(a;\sigma) is the
# normalization constant,                 N(a;\sigma) = (1/2) erfc(a / sqrt(2
# sigma^2)).
# 
#   Returns: Cdouble
function ran_gaussian_tail(r::Ref{gsl_rng}, a::Real, sigma::Real)
    ccall( (:gsl_ran_gaussian_tail, libgsl), Cdouble, (Ref{gsl_rng},
        Cdouble, Cdouble), r, a, sigma )
end


# This function computes the probability density p(x) at x for a Gaussian tail
# distribution with standard deviation sigma and lower limit a, using the
# formula given above.
# 
#   Returns: Cdouble
function ran_gaussian_tail_pdf(x::Real, a::Real, sigma::Real)
    ccall( (:gsl_ran_gaussian_tail_pdf, libgsl), Cdouble, (Cdouble,
        Cdouble, Cdouble), x, a, sigma )
end


# These functions compute results for the tail of a unit Gaussian distribution.
# They are equivalent to the functions above with a standard deviation of one,
# sigma = 1.
# 
#   Returns: Cdouble
function ran_ugaussian_tail(r::Ref{gsl_rng}, a::Real)
    ccall( (:gsl_ran_ugaussian_tail, libgsl), Cdouble, (Ref{gsl_rng},
        Cdouble), r, a )
end


# These functions compute results for the tail of a unit Gaussian distribution.
# They are equivalent to the functions above with a standard deviation of one,
# sigma = 1.
# 
#   Returns: Cdouble
function ran_ugaussian_tail_pdf(x::Real, a::Real)
    ccall( (:gsl_ran_ugaussian_tail_pdf, libgsl), Cdouble, (Cdouble,
        Cdouble), x, a )
end
Compat.@dep_vectorize_2arg Number ran_ugaussian_tail_pdf
