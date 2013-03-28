#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 20.37 The Logarithmic Distribution #
######################################
export gsl_ran_logarithmic, gsl_ran_logarithmic_pdf


### Function uses unknown type; disabled
### # This function returns a random integer from the logarithmic distribution.
# The probability distribution for logarithmic random variates is,
# p(k) = {-1 \over \log(1-p)} {(p^k \over k)}  for  k >= 1.
# 
### #   {$k \ge 1$} 
### #   Returns: Cuint
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_logarithmic (r::Ptr{gsl_rng}, p::Cdouble)
###     ccall( (:gsl_ran_logarithmic, "libgsl"), Cuint, (Ptr{gsl_rng},
###         Cdouble), r, p )
### end


# This function computes the probability p(k) of obtaining k from a logarithmic
# distribution with probability parameter p, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_logarithmic_pdf (k::Cuint, p::Cdouble)
    ccall( (:gsl_ran_logarithmic_pdf, "libgsl"), Cdouble, (Cuint, Cdouble),
        k, p )
end