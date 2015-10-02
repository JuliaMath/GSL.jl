#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.6 Histogram Statistics #
#############################
export histogram_max_val, histogram_max_bin, histogram_min_val,
       histogram_min_bin, histogram_mean, histogram_sigma, histogram_sum


# This function returns the maximum value contained in the histogram bins.
# 
#   Returns: Cdouble
function histogram_max_val(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_max_val, libgsl), Cdouble, (Ref{gsl_histogram},
        ), h )
end


# This function returns the index of the bin containing the maximum value. In
# the case where several bins contain the same maximum value the smallest index
# is returned.
# 
#   Returns: Csize_t
function histogram_max_bin(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_max_bin, libgsl), Csize_t, (Ref{gsl_histogram},
        ), h )
end


# This function returns the minimum value contained in the histogram bins.
# 
#   Returns: Cdouble
function histogram_min_val(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_min_val, libgsl), Cdouble, (Ref{gsl_histogram},
        ), h )
end


# This function returns the index of the bin containing the minimum value. In
# the case where several bins contain the same maximum value the smallest index
# is returned.
# 
#   Returns: Csize_t
function histogram_min_bin(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_min_bin, libgsl), Csize_t, (Ref{gsl_histogram},
        ), h )
end


# This function returns the mean of the histogrammed variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.  The accuracy of the result is
# limited by the bin width.
# 
#   Returns: Cdouble
function histogram_mean(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_mean, libgsl), Cdouble, (Ref{gsl_histogram}, ),
        h )
end


# This function returns the standard deviation of the histogrammed variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation. The accuracy of the
# result is limited by the bin width.
# 
#   Returns: Cdouble
function histogram_sigma(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_sigma, libgsl), Cdouble, (Ref{gsl_histogram},
        ), h )
end


# This function returns the sum of all bin values. Negative bin values are
# included in the sum.
# 
#   Returns: Cdouble
function histogram_sum(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_sum, libgsl), Cdouble, (Ref{gsl_histogram}, ),
        h )
end
