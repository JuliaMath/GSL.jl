#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 20.11 The Landau Distribution #
#################################
export ran_landau, ran_landau_pdf






# This function returns a random variate from the Landau distribution.  The
# probability distribution for Landau random variates is defined analytically
# by the complex integral,                 p(x) = (1/(2 \pi i))
# \int_{c-i\infty}^{c+i\infty} ds exp(s log(s) + x s)  For numerical purposes
# it is more convenient to use the following equivalent form of the integral,
# p(x) = (1/\pi) \int_0^\infty dt \exp(-t \log(t) - x t) \sin(\pi t).
# 
#   Returns: Cdouble
function ran_landau(r::Ref{gsl_rng})
    ccall( (:gsl_ran_landau, libgsl), Cdouble, (Ref{gsl_rng}, ), r )
end


# This function computes the probability density p(x) at x for the Landau
# distribution using an approximation to the formula given above.
# 
#   Returns: Cdouble
function ran_landau_pdf(x::Real)
    ccall( (:gsl_ran_landau_pdf, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number ran_landau_pdf
