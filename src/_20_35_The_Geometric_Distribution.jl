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
#XXX Unknown input type r::Ptr{gsl_rng}
#XXX Coerced type for r::Ptr{Void}
function gsl_ran_geometric(r::Ptr{Void}, p::Cdouble)
    ccall( (:gsl_ran_geometric, :libgsl), Cuint, (Ptr{Void}, Cdouble), r, p
        )
end


# This function computes the probability p(k) of obtaining k from a geometric
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_geometric_pdf(k::Cuint, p::Cdouble)
    ccall( (:gsl_ran_geometric_pdf, :libgsl), Cdouble, (Cuint, Cdouble), k,
        p )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function gsl_cdf_geometric_P(k::Cuint, p::Cdouble)
    ccall( (:gsl_cdf_geometric_P, :libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end


# These functions compute the cumulative distribution functions P(k), Q(k) for
# the geometric distribution with parameter p.
# 
#   Returns: Cdouble
function gsl_cdf_geometric_Q(k::Cuint, p::Cdouble)
    ccall( (:gsl_cdf_geometric_Q, :libgsl), Cdouble, (Cuint, Cdouble), k, p
        )
end
