#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################
# 21.5 Covariance #
###################
export gsl_stats_covariance, gsl_stats_covariance_m




# This function computes the covariance of the datasets data1 and data2 which
# must both be of the same length n.                 covar = (1/(n - 1))
# \sum_{i = 1}^{n} (x_i - \Hat x) (y_i - \Hat y)
# 
#   Returns: Cdouble
function gsl_stats_covariance(data1::Cdouble)
    ccall( (:gsl_stats_covariance, :libgsl), Cdouble, (Cdouble, ), data1 )
end


# This function computes the covariance of the datasets data1 and data2 using
# the given values of the means, mean1 and mean2.  This is useful if you have
# already computed the means of data1 and data2 and want to avoid recomputing
# them.
# 
#   Returns: Cdouble
function gsl_stats_covariance_m(data1::Cdouble)
    ccall( (:gsl_stats_covariance_m, :libgsl), Cdouble, (Cdouble, ), data1
        )
end
