#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 21.9 Median and Percentiles #
###############################
export stats_median_from_sorted_data, stats_quantile_from_sorted_data




# This function returns the median value of sorted_data, a dataset of length n
# with stride stride.  The elements of the array must be in ascending numerical
# order.  There are no checks to see whether the data are sorted, so the
# function gsl_sort should always be used first.          When the dataset has
# an odd number of elements the median is the value of element (n-1)/2.  When
# the dataset has an even number of elements the median is the mean of the two
# nearest middle values, elements (n-1)/2 and n/2.  Since the algorithm for
# computing the median involves interpolation this function always returns a
# floating-point number, even for integer data types.
# 
#   Returns: Cdouble
function stats_median_from_sorted_data(sorted_data::Real)
    ccall( (:gsl_stats_median_from_sorted_data, libgsl), Cdouble,
        (Cdouble, ), sorted_data )
end
Compat.@dep_vectorize_1arg Number stats_median_from_sorted_data


# This function returns a quantile value of sorted_data, a double-precision
# array of length n with stride stride.  The elements of the array must be in
# ascending numerical order.  The quantile is determined by the f, a fraction
# between 0 and 1.  For example, to compute the value of the 75th percentile f
# should have the value 0.75.          There are no checks to see whether the
# data are sorted, so the function gsl_sort should always be used first.
# The quantile is found by interpolation, using the formula
# quantile = (1 - \delta) x_i + \delta x_{i+1}  where i is floor((n - 1)f) and
# \delta is (n-1)f - i.          Thus the minimum value of the array
# (data[0*stride]) is given by f equal to zero, the maximum value
# (data[(n-1)*stride]) is given by f equal to one and the median value is given
# by f equal to 0.5.  Since the algorithm for computing quantiles involves
# interpolation this function always returns a floating-point number, even for
# integer data types.
# 
#   Returns: Cdouble
function stats_quantile_from_sorted_data(sorted_data::Real)
    ccall( (:gsl_stats_quantile_from_sorted_data, libgsl), Cdouble,
        (Cdouble, ), sorted_data )
end
Compat.@dep_vectorize_1arg Number stats_quantile_from_sorted_data
