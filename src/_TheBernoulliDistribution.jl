#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 20.30 The Bernoulli Distribution #
####################################
export gsl_ran_bernoulli, gsl_ran_bernoulli_pdf




# This function returns either 0 or 1, the result of a Bernoulli trial with
# probability p.  The probability distribution for a Bernoulli trial is,
# p(0) = 1 - p           p(1) = p
# 
#   Returns: Cuint
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_bernoulli (r::Ptr{Void}, p::Cdouble)
    ccall( (:gsl_ran_bernoulli, "libgsl"), Cuint, (Ptr{Void}, Cdouble), r,
        p )
end


# This function computes the probability p(k) of obtaining k from a Bernoulli
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_bernoulli_pdf (k::Cuint, p::Cdouble)
    ccall( (:gsl_ran_bernoulli_pdf, "libgsl"), Cdouble, (Cuint, Cdouble),
        k, p )
end
