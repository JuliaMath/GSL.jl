#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 21.4 Autocorrelation #
########################
export gsl_stats_lag1_autocorrelation, gsl_stats_lag1_autocorrelation_m


# This function computes the lag-1 autocorrelation of the dataset data.
# a_1 = {\sum_{i = 1}^{n} (x_{i} - \Hat\mu) (x_{i-1} - \Hat\mu)
# \over                  \sum_{i = 1}^{n} (x_{i} - \Hat\mu) (x_{i} - \Hat\mu)}
# 
#   Returns: Cdouble
function gsl_stats_lag1_autocorrelation (data::Cdouble)
    ccall( (:gsl_stats_lag1_autocorrelation, "libgsl"), Cdouble, (Cdouble,
        ), data )
end


# This function computes the lag-1 autocorrelation of the dataset data using
# the given value of the mean mean.
# 
#   Returns: Cdouble
function gsl_stats_lag1_autocorrelation_m (data::Cdouble)
    ccall( (:gsl_stats_lag1_autocorrelation_m, "libgsl"), Cdouble,
        (Cdouble, ), data )
end