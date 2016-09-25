#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 20.37 The Logarithmic Distribution #
######################################
export ran_logarithmic, ran_logarithmic_pdf




# This function returns a random integer from the logarithmic distribution.
# The probability distribution for logarithmic random variates is,
# p(k) = {-1 \over \log(1-p)} {(p^k \over k)}  for  k >= 1.
# 
#   Returns: Cuint
function ran_logarithmic(r::Ref{gsl_rng}, p::Real)
    ccall( (:gsl_ran_logarithmic, libgsl), Cuint, (Ref{gsl_rng}, Cdouble),
        r, p )
end


# This function computes the probability p(k) of obtaining k from a logarithmic
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function ran_logarithmic_pdf(k::Integer, p::Real)
    ccall( (:gsl_ran_logarithmic_pdf, libgsl), Cdouble, (Cuint, Cdouble),
        k, p )
end
Compat.@dep_vectorize_2arg Number ran_logarithmic_pdf
