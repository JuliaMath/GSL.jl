#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 21.2 Absolute deviation #
###########################
export stats_absdev, stats_absdev_m






# This function computes the absolute deviation from the mean of data, a
# dataset of length n with stride stride.  The absolute deviation from the mean
# is defined as,                 absdev  = (1/N) \sum |x_i - \Hat\mu|  where
# x_i are the elements of the dataset data.  The absolute deviation from the
# mean provides a more robust measure of the width of a distribution than the
# variance.  This function computes the mean of data via a call to
# gsl_stats_mean.
# 
#   Returns: Cdouble
function stats_absdev(data::Real)
    ccall( (:gsl_stats_absdev, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_absdev


# This function computes the absolute deviation of the dataset data relative to
# the given value of mean,                 absdev  = (1/N) \sum |x_i - mean|
# This function is useful if you have already computed the mean of data (and
# want to avoid recomputing it), or wish to calculate the absolute deviation
# relative to another value (such as zero, or the median).
# 
#   Returns: Cdouble
function stats_absdev_m(data::Real)
    ccall( (:gsl_stats_absdev_m, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_absdev_m
