#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 21.1 Mean, Standard Deviation and Variance #
##############################################
export stats_mean, stats_variance, stats_variance_m, stats_sd, stats_sd_m,
       stats_tss, stats_tss_m, stats_variance_with_fixed_mean,
       stats_sd_with_fixed_mean












# This function returns the arithmetic mean of data, a dataset of length n with
# stride stride.  The arithmetic mean, or sample mean, is denoted by \Hat\mu
# and defined as,                 \Hat\mu = (1/N) \sum x_i  where x_i are the
# elements of the dataset data.  For samples drawn from a gaussian distribution
# the variance of \Hat\mu is \sigma^2 / N.
# 
#   Returns: Cdouble
function stats_mean(data::Real)
    ccall( (:gsl_stats_mean, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_mean


# This function returns the estimated, or sample, variance of data, a dataset
# of length n with stride stride.  The estimated variance is denoted by
# \Hat\sigma^2 and is defined by,                 \Hat\sigma^2 = (1/(N-1)) \sum
# (x_i - \Hat\mu)^2  where x_i are the elements of the dataset data.  Note that
# the normalization factor of 1/(N-1) results from the derivation of
# \Hat\sigma^2 as an unbiased estimator of the population variance \sigma^2.
# For samples drawn from a Gaussian distribution the variance of \Hat\sigma^2
# itself is 2 \sigma^4 / N.          This function computes the mean via a call
# to gsl_stats_mean.  If you have already computed the mean then you can pass
# it directly to gsl_stats_variance_m.
# 
#   Returns: Cdouble
function stats_variance(data::Real)
    ccall( (:gsl_stats_variance, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_variance


# This function returns the sample variance of data relative to the given value
# of mean.  The function is computed with \Hat\mu replaced by the value of mean
# that you supply,                 \Hat\sigma^2 = (1/(N-1)) \sum (x_i - mean)^2
# 
#   Returns: Cdouble
function stats_variance_m(data::Real)
    ccall( (:gsl_stats_variance_m, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_variance_m


# The standard deviation is defined as the square root of the variance.  These
# functions return the square root of the corresponding variance functions
# above.
# 
#   Returns: Cdouble
function stats_sd(data::Real)
    ccall( (:gsl_stats_sd, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_sd


# The standard deviation is defined as the square root of the variance.  These
# functions return the square root of the corresponding variance functions
# above.
# 
#   Returns: Cdouble
function stats_sd_m(data::Real)
    ccall( (:gsl_stats_sd_m, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_sd_m


# These functions return the total sum of squares (TSS) of data about the mean.
# For gsl_stats_tss_m the user-supplied value of mean is used, and for
# gsl_stats_tss it is computed using gsl_stats_mean.                 TSS =
# \sum (x_i - mean)^2
# 
#   Returns: Cdouble
function stats_tss(data::Real)
    ccall( (:gsl_stats_tss, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_tss


# These functions return the total sum of squares (TSS) of data about the mean.
# For gsl_stats_tss_m the user-supplied value of mean is used, and for
# gsl_stats_tss it is computed using gsl_stats_mean.                 TSS =
# \sum (x_i - mean)^2
# 
#   Returns: Cdouble
function stats_tss_m(data::Real)
    ccall( (:gsl_stats_tss_m, libgsl), Cdouble, (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_tss_m


# This function computes an unbiased estimate of the variance of data when the
# population mean mean of the underlying distribution is known a priori.  In
# this case the estimator for the variance uses the factor 1/N and the sample
# mean \Hat\mu is replaced by the known population mean \mu,
# \Hat\sigma^2 = (1/N) \sum (x_i - \mu)^2
# 
#   Returns: Cdouble
function stats_variance_with_fixed_mean(data::Real)
    ccall( (:gsl_stats_variance_with_fixed_mean, libgsl), Cdouble,
        (Cdouble, ), data )
end
Compat.@dep_vectorize_1arg Number stats_variance_with_fixed_mean


# This function calculates the standard deviation of data for a fixed
# population mean mean.  The result is the square root of the corresponding
# variance function.
# 
#   Returns: Cdouble
function stats_sd_with_fixed_mean(data::Real)
    ccall( (:gsl_stats_sd_with_fixed_mean, libgsl), Cdouble, (Cdouble, ),
        data )
end
Compat.@dep_vectorize_1arg Number stats_sd_with_fixed_mean
