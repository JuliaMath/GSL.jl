#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 21.7 Weighted Samples #
#########################
export stats_wmean, stats_wvariance, stats_wvariance_m, stats_wsd, stats_wsd_m,
       stats_wvariance_with_fixed_mean, stats_wsd_with_fixed_mean, stats_wtss,
       stats_wtss_m, stats_wabsdev, stats_wabsdev_m, stats_wskew,
       stats_wskew_m_sd, stats_wkurtosis, stats_wkurtosis_m_sd
















# This function returns the weighted mean of the dataset data with stride
# stride and length n, using the set of weights w with stride wstride and
# length n.  The weighted mean is defined as,                 \Hat\mu = (\sum
# w_i x_i) / (\sum w_i)
# 
#   Returns: Cdouble
function stats_wmean(w::Real)
    ccall( (:gsl_stats_wmean, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wmean


# This function returns the estimated variance of the dataset data with stride
# stride and length n, using the set of weights w with stride wstride and
# length n.  The estimated variance of a weighted dataset is calculated as,
# \Hat\sigma^2 = ((\sum w_i)/((\sum w_i)^2 - \sum (w_i^2)))
# \sum w_i (x_i - \Hat\mu)^2  Note that this expression reduces to an
# unweighted variance with the familiar 1/(N-1) factor when there are N equal
# non-zero weights.
# 
#   Returns: Cdouble
function stats_wvariance(w::Real)
    ccall( (:gsl_stats_wvariance, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wvariance


# This function returns the estimated variance of the weighted dataset data
# using the given weighted mean wmean.
# 
#   Returns: Cdouble
function stats_wvariance_m(w::Real)
    ccall( (:gsl_stats_wvariance_m, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wvariance_m


# The standard deviation is defined as the square root of the variance.  This
# function returns the square root of the corresponding variance function
# gsl_stats_wvariance above.
# 
#   Returns: Cdouble
function stats_wsd(w::Real)
    ccall( (:gsl_stats_wsd, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wsd


# This function returns the square root of the corresponding variance function
# gsl_stats_wvariance_m above.
# 
#   Returns: Cdouble
function stats_wsd_m(w::Real)
    ccall( (:gsl_stats_wsd_m, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wsd_m


# This function computes an unbiased estimate of the variance of the weighted
# dataset data when the population mean mean of the underlying distribution is
# known a priori.  In this case the estimator for the variance replaces the
# sample mean \Hat\mu by the known population mean \mu,
# \Hat\sigma^2 = (\sum w_i (x_i - \mu)^2) / (\sum w_i)
# 
#   Returns: Cdouble
function stats_wvariance_with_fixed_mean(w::Real)
    ccall( (:gsl_stats_wvariance_with_fixed_mean, libgsl), Cdouble,
        (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wvariance_with_fixed_mean


# The standard deviation is defined as the square root of the variance.  This
# function returns the square root of the corresponding variance function
# above.
# 
#   Returns: Cdouble
function stats_wsd_with_fixed_mean(w::Real)
    ccall( (:gsl_stats_wsd_with_fixed_mean, libgsl), Cdouble, (Cdouble, ),
        w )
end
Compat.@dep_vectorize_1arg Number stats_wsd_with_fixed_mean


# These functions return the weighted total sum of squares (TSS) of data about
# the weighted mean.  For gsl_stats_wtss_m the user-supplied value of wmean is
# used, and for gsl_stats_wtss it is computed using gsl_stats_wmean.
# TSS =  \sum w_i (x_i - wmean)^2
# 
#   Returns: Cdouble
function stats_wtss(w::Real)
    ccall( (:gsl_stats_wtss, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wtss


# These functions return the weighted total sum of squares (TSS) of data about
# the weighted mean.  For gsl_stats_wtss_m the user-supplied value of wmean is
# used, and for gsl_stats_wtss it is computed using gsl_stats_wmean.
# TSS =  \sum w_i (x_i - wmean)^2
# 
#   Returns: Cdouble
function stats_wtss_m(w::Real)
    ccall( (:gsl_stats_wtss_m, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wtss_m


# This function computes the weighted absolute deviation from the weighted mean
# of data.  The absolute deviation from the mean is defined as,
# absdev = (\sum w_i |x_i - \Hat\mu|) / (\sum w_i)
# 
#   Returns: Cdouble
function stats_wabsdev(w::Real)
    ccall( (:gsl_stats_wabsdev, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wabsdev


# This function computes the absolute deviation of the weighted dataset data
# about the given weighted mean wmean.
# 
#   Returns: Cdouble
function stats_wabsdev_m(w::Real)
    ccall( (:gsl_stats_wabsdev_m, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wabsdev_m


# This function computes the weighted skewness of the dataset data.
# skew = (\sum w_i ((x_i - \Hat x)/\Hat \sigma)^3) / (\sum w_i)
# 
#   Returns: Cdouble
function stats_wskew(w::Real)
    ccall( (:gsl_stats_wskew, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wskew


# This function computes the weighted skewness of the dataset data using the
# given values of the weighted mean and weighted standard deviation, wmean and
# wsd.
# 
#   Returns: Cdouble
function stats_wskew_m_sd(w::Real)
    ccall( (:gsl_stats_wskew_m_sd, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wskew_m_sd


# This function computes the weighted kurtosis of the dataset data.
# kurtosis = ((\sum w_i ((x_i - \Hat x)/\Hat \sigma)^4) / (\sum w_i)) - 3
# 
#   Returns: Cdouble
function stats_wkurtosis(w::Real)
    ccall( (:gsl_stats_wkurtosis, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wkurtosis


# This function computes the weighted kurtosis of the dataset data using the
# given values of the weighted mean and weighted standard deviation, wmean and
# wsd.
# 
#   Returns: Cdouble
function stats_wkurtosis_m_sd(w::Real)
    ccall( (:gsl_stats_wkurtosis_m_sd, libgsl), Cdouble, (Cdouble, ), w )
end
Compat.@dep_vectorize_1arg Number stats_wkurtosis_m_sd
