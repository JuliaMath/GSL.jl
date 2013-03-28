#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.6 Histogram Statistics #
#############################
export gsl_histogram_max_val, gsl_histogram_max_bin, gsl_histogram_min_val,
       gsl_histogram_min_bin, gsl_histogram_mean, gsl_histogram_sigma,
       gsl_histogram_sum


### Function uses unknown type; disabled
### # This function returns the maximum value contained in the histogram bins.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_max_val (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_max_val, "libgsl"), Cdouble,
###         (Ptr{gsl_histogram}, ), h )
### end


### Function uses unknown type; disabled
### # This function returns the index of the bin containing the maximum value. In
# the case where several bins contain the same maximum value the smallest index
# is returned.
# 
### #   Returns: Csize_t
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_max_bin (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_max_bin, "libgsl"), Csize_t,
###         (Ptr{gsl_histogram}, ), h )
### end


### Function uses unknown type; disabled
### # This function returns the minimum value contained in the histogram bins.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_min_val (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_min_val, "libgsl"), Cdouble,
###         (Ptr{gsl_histogram}, ), h )
### end


### Function uses unknown type; disabled
### # This function returns the index of the bin containing the minimum value. In
# the case where several bins contain the same maximum value the smallest index
# is returned.
# 
### #   Returns: Csize_t
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_min_bin (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_min_bin, "libgsl"), Csize_t,
###         (Ptr{gsl_histogram}, ), h )
### end


### Function uses unknown type; disabled
### # This function returns the mean of the histogrammed variable, where the
# histogram is regarded as a probability distribution. Negative bin values are
# ignored for the purposes of this calculation.  The accuracy of the result is
# limited by the bin width.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_mean (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_mean, "libgsl"), Cdouble, (Ptr{gsl_histogram},
###         ), h )
### end


### Function uses unknown type; disabled
### # This function returns the standard deviation of the histogrammed variable,
# where the histogram is regarded as a probability distribution. Negative bin
# values are ignored for the purposes of this calculation. The accuracy of the
# result is limited by the bin width.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_sigma (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_sigma, "libgsl"), Cdouble, (Ptr{gsl_histogram},
###         ), h )
### end


### Function uses unknown type; disabled
### # This function returns the sum of all bin values. Negative bin values are
# included in the sum.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_sum (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_sum, "libgsl"), Cdouble, (Ptr{gsl_histogram}, ),
###         h )
### end