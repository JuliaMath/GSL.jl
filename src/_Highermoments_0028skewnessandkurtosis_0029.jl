#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 21.3 Higher moments (skewness and kurtosis) #
###############################################
export gsl_stats_skew, gsl_stats_skew_m_sd, gsl_stats_kurtosis,
       gsl_stats_kurtosis_m_sd










# This function computes the skewness of data, a dataset of length n with
# stride stride.  The skewness is defined as,                 skew = (1/N) \sum
# ((x_i - \Hat\mu)/\Hat\sigma)^3  where x_i are the elements of the dataset
# data.  The skewness measures the asymmetry of the tails of a distribution.
# The function computes the mean and estimated standard deviation of data via
# calls to gsl_stats_mean and gsl_stats_sd.
# 
#   Returns: Cdouble
function gsl_stats_skew (data::Cdouble)
    ccall( (:gsl_stats_skew, "libgsl"), Cdouble, (Cdouble, ), data )
end


# This function computes the skewness of the dataset data using the given
# values of the mean mean and standard deviation sd,                 skew =
# (1/N) \sum ((x_i - mean)/sd)^3  These functions are useful if you have
# already computed the mean and standard deviation of data and want to avoid
# recomputing them.
# 
#   Returns: Cdouble
function gsl_stats_skew_m_sd (data::Cdouble)
    ccall( (:gsl_stats_skew_m_sd, "libgsl"), Cdouble, (Cdouble, ), data )
end


# This function computes the kurtosis of data, a dataset of length n with
# stride stride.  The kurtosis is defined as,                 kurtosis = ((1/N)
# \sum ((x_i - \Hat\mu)/\Hat\sigma)^4)  - 3  The kurtosis measures how sharply
# peaked a distribution is, relative to its width.  The kurtosis is normalized
# to zero for a Gaussian distribution.
# 
#   Returns: Cdouble
function gsl_stats_kurtosis (data::Cdouble)
    ccall( (:gsl_stats_kurtosis, "libgsl"), Cdouble, (Cdouble, ), data )
end


# This function computes the kurtosis of the dataset data using the given
# values of the mean mean and standard deviation sd,                 kurtosis =
# ((1/N) \sum ((x_i - mean)/sd)^4) - 3  This function is useful if you have
# already computed the mean and standard deviation of data and want to avoid
# recomputing them.
# 
#   Returns: Cdouble
function gsl_stats_kurtosis_m_sd (data::Cdouble)
    ccall( (:gsl_stats_kurtosis_m_sd, "libgsl"), Cdouble, (Cdouble, ), data
        )
end
