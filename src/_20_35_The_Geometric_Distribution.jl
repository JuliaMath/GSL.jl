#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 20.35 The Geometric Distribution #
####################################
export ran_geometric, ran_geometric_pdf, cdf_geometric_P, cdf_geometric_Q




# This function returns a random integer from the geometric distribution, the
# number of independent trials with probability p until the first success.  The
# probability distribution for geometric variates is,                 p(k) =  p
# (1-p)^(k-1)  for  k >= 1.  Note that the distribution begins with k=1 with
# this definition.  There is another convention in which the exponent k-1 is
# replaced by k.
# 
#   Returns: Cuint
function ran_geometric(r::Ref{gsl_rng}, p::Real)
    ccall( (:gsl_ran_geometric, libgsl), Cuint, (Ref{gsl_rng}, Cdouble),
        r, p )
end


# This function computes the probability p(k) of obtaining k from a geometric
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function ran_geometric_pdf(k::Integer, p::Real)
    ccall( (:gsl_ran_geometric_pdf, libgsl), Cdouble, (Cuint, Cdouble), k,
        p )
end
Compat.@dep_vectorize_2arg Number ran_geometric_pdf


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function cdf_geometric_P(k::Integer, p::Real)
    ccall( (:gsl_cdf_geometric_P, libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end
Compat.@dep_vectorize_2arg Number cdf_geometric_P


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function cdf_geometric_Q(k::Integer, p::Real)
    ccall( (:gsl_cdf_geometric_Q, libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end
Compat.@dep_vectorize_2arg Number cdf_geometric_Q
