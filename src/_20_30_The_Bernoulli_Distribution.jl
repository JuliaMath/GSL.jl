#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 20.30 The Bernoulli Distribution #
####################################
export ran_bernoulli, ran_bernoulli_pdf




# This function returns either 0 or 1, the result of a Bernoulli trial with
# probability p.  The probability distribution for a Bernoulli trial is,
# p(0) = 1 - p           p(1) = p
# 
#   Returns: Cuint
function ran_bernoulli(r::Ref{gsl_rng}, p::Real)
    ccall( (:gsl_ran_bernoulli, libgsl), Cuint, (Ref{gsl_rng}, Cdouble),
        r, p )
end


# This function computes the probability p(k) of obtaining k from a Bernoulli
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function ran_bernoulli_pdf(k::Integer, p::Real)
    ccall( (:gsl_ran_bernoulli_pdf, libgsl), Cdouble, (Cuint, Cdouble), k,
        p )
end
Compat.@dep_vectorize_2arg Number ran_bernoulli_pdf
