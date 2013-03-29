#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.10 The Rayleigh Tail Distribution #
########################################
export gsl_ran_rayleigh_tail, gsl_ran_rayleigh_tail_pdf




# This function returns a random variate from the tail of the Rayleigh
# distribution with scale parameter sigma and a lower limit of a.  The
# distribution is,                 p(x) dx = {x \over \sigma^2} \exp ((a^2 -
# x^2) /(2 \sigma^2)) dx  for x > a.
# 
#   Returns: Cdouble
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_rayleigh_tail (r::Ptr{Void}, a::Cdouble, sigma::Cdouble)
    ccall( (:gsl_ran_rayleigh_tail, "libgsl"), Cdouble, (Ptr{Void},
        Cdouble, Cdouble), r, a, sigma )
end


# This function computes the probability density p(x) at x for a Rayleigh tail
# distribution with scale parameter sigma and lower limit a, using the formula
# given above.
# 
#   Returns: Cdouble
function gsl_ran_rayleigh_tail_pdf (x::Cdouble, a::Cdouble, sigma::Cdouble)
    ccall( (:gsl_ran_rayleigh_tail_pdf, "libgsl"), Cdouble, (Cdouble,
        Cdouble, Cdouble), x, a, sigma )
end
