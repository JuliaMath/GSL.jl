#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################
# 21.6 Correlation #
####################
export stats_correlation




# This function efficiently computes the Pearson correlation coefficient
# between the datasets data1 and data2 which must both be of the same length n.
# r = cov(x, y) / (\Hat\sigma_x \Hat\sigma_y)             = {1/(n-1) \sum (x_i
# - \Hat x) (y_i - \Hat y)                \over                \sqrt{1/(n-1)
# \sum (x_i - \Hat x)^2} \sqrt{1/(n-1) \sum (y_i - \Hat y)^2}               }
# 
#   Returns: Cdouble
function stats_correlation(data1::Real)
    ccall( (:gsl_stats_correlation, libgsl), Cdouble, (Cdouble, ), data1 )
end
Compat.@dep_vectorize_1arg Number stats_correlation
