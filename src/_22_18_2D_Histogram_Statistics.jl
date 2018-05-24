#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 22.18 2D Histogram Statistics #
#################################
export histogram2d_max_val, histogram2d_max_bin, histogram2d_min_val,
       histogram2d_min_bin, histogram2d_xmean, histogram2d_ymean,
       histogram2d_xsigma, histogram2d_ysigma, histogram2d_cov, histogram2d_sum


# This function returns the maximum value contained in the histogram bins.
# 
#   Returns: Cdouble
function histogram2d_max_val(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_max_val, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function finds the indices of the bin containing the maximum value in
# the histogram h and stores the result in (i,j). In the case where several
# bins contain the same maximum value the first bin found is returned.
# 
#   Returns: Nothing
function histogram2d_max_bin(h::Ref{gsl_histogram2d})
    i = Ref{Csize_t}()
    j = Ref{Csize_t}()
    ccall( (:gsl_histogram2d_max_bin, libgsl), Nothing,
        (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j )
    return i[], j[]
end


# This function returns the minimum value contained in the histogram bins.
# 
#   Returns: Cdouble
function histogram2d_min_val(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_min_val, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function finds the indices of the bin containing the minimum value in
# the histogram h and stores the result in (i,j). In the case where several
# bins contain the same maximum value the first bin found is returned.
# 
#   Returns: Nothing
function histogram2d_min_bin(h::Ref{gsl_histogram2d})
    i = Ref{Csize_t}()
    j = Ref{Csize_t}()
    ccall( (:gsl_histogram2d_min_bin, libgsl), Nothing,
        (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j )
    return i[], j[]
end


# This function returns the mean of the histogrammed x variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_xmean(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmean, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function returns the mean of the histogrammed y variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_ymean(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymean, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function returns the standard deviation of the histogrammed x variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_xsigma(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xsigma, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function returns the standard deviation of the histogrammed y variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_ysigma(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ysigma, libgsl), Cdouble,
        (Ref{gsl_histogram2d}, ), h )
end


# This function returns the covariance of the histogrammed x and y variables,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_cov(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_cov, libgsl), Cdouble, (Ref{gsl_histogram2d},
        ), h )
end


# This function returns the sum of all bin values. Negative bin values are
# included in the sum.
# 
#   Returns: Cdouble
function histogram2d_sum(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_sum, libgsl), Cdouble, (Ref{gsl_histogram2d},
        ), h )
end
