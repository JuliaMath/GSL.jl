#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 20.35 The Geometric Distribution #
####################################
export gsl_ran_geometric, gsl_ran_geometric_pdf, gsl_cdf_geometric_P,
       gsl_cdf_geometric_Q




# This function returns a random integer from the geometric distribution, the
# number of independent trials with probability p until the first success.  The
# probability distribution for geometric variates is,                 p(k) =  p
# (1-p)^(k-1)  for  k >= 1.  Note that the distribution begins with k=1 with
# this definition.  There is another convention in which the exponent k-1 is
# replaced by k.
# 
#   Returns: Cuint
function gsl_ran_geometric(r::Ptr{gsl_rng}, p::Real)
    ccall( (:gsl_ran_geometric, :libgsl), Cuint, (Ptr{gsl_rng}, Cdouble),
        r, p )
end


# This function computes the probability p(k) of obtaining k from a geometric
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_geometric_pdf(k::Integer, p::Real)
    ccall( (:gsl_ran_geometric_pdf, :libgsl), Cdouble, (Cuint, Cdouble), k,
        p )
end
@vectorize_2arg Number gsl_ran_geometric_pdf


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function gsl_cdf_geometric_P(k::Integer, p::Real)
    ccall( (:gsl_cdf_geometric_P, :libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end
@vectorize_2arg Number gsl_cdf_geometric_P


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function gsl_cdf_geometric_Q(k::Integer, p::Real)
    ccall( (:gsl_cdf_geometric_Q, :libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end
@vectorize_2arg Number gsl_cdf_geometric_Q
