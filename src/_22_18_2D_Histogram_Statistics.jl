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
function histogram2d_max_val(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_max_val, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function finds the indices of the bin containing the maximum value in
# the histogram h and stores the result in (i,j). In the case where several
# bins contain the same maximum value the first bin found is returned.
# 
#   Returns: Void
function histogram2d_max_bin(h::Ptr{gsl_histogram2d})
    i = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    j = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_histogram2d_max_bin, :libgsl), Void,
        (Ptr{gsl_histogram2d}, Ptr{Csize_t}, Ptr{Csize_t}), h, i, j )
    return unsafe_ref(i)[1] ,unsafe_ref(j)[1]
end


# This function returns the minimum value contained in the histogram bins.
# 
#   Returns: Cdouble
function histogram2d_min_val(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_min_val, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function finds the indices of the bin containing the minimum value in
# the histogram h and stores the result in (i,j). In the case where several
# bins contain the same maximum value the first bin found is returned.
# 
#   Returns: Void
function histogram2d_min_bin(h::Ptr{gsl_histogram2d})
    i = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    j = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_histogram2d_min_bin, :libgsl), Void,
        (Ptr{gsl_histogram2d}, Ptr{Csize_t}, Ptr{Csize_t}), h, i, j )
    return unsafe_ref(i)[1] ,unsafe_ref(j)[1]
end


# This function returns the mean of the histogrammed x variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_xmean(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmean, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function returns the mean of the histogrammed y variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_ymean(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymean, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function returns the standard deviation of the histogrammed x variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_xsigma(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xsigma, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function returns the standard deviation of the histogrammed y variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_ysigma(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ysigma, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# This function returns the covariance of the histogrammed x and y variables,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation.
# 
#   Returns: Cdouble
function histogram2d_cov(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_cov, :libgsl), Cdouble, (Ptr{gsl_histogram2d},
        ), h )
end


# This function returns the sum of all bin values. Negative bin values are
# included in the sum.
# 
#   Returns: Cdouble
function histogram2d_sum(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_sum, :libgsl), Cdouble, (Ptr{gsl_histogram2d},
        ), h )
end
