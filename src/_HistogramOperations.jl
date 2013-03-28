#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.7 Histogram Operations #
#############################
export gsl_histogram_equal_bins_p, gsl_histogram_add, gsl_histogram_sub,
       gsl_histogram_mul, gsl_histogram_div, gsl_histogram_scale,
       gsl_histogram_shift


### Function uses unknown type; disabled
### # This function returns 1 if the all of the individual bin ranges of the two
# histograms are identical, and 0 otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type h1::Ptr{gsl_histogram}
### #XXX Unknown input type h2::Ptr{gsl_histogram}
### function gsl_histogram_equal_bins_p (h1::Ptr{gsl_histogram}, h2::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_equal_bins_p, "libgsl"), Cint,
###         (Ptr{gsl_histogram}, Ptr{gsl_histogram}), h1, h2 )
### end


### Function uses unknown type; disabled
### # This function adds the contents of the bins in histogram h2 to the
# corresponding bins of histogram h1,  i.e. h'_1(i) = h_1(i) + h_2(i).  The two
# histograms must have identical bin ranges.
# 
### #   Returns: Cint
### #XXX Unknown input type h1::Ptr{gsl_histogram}
### #XXX Unknown input type h2::Ptr{gsl_histogram}
### function gsl_histogram_add (h1::Ptr{gsl_histogram}, h2::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_add, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Ptr{gsl_histogram}), h1, h2 )
### end


### Function uses unknown type; disabled
### # This function subtracts the contents of the bins in histogram h2 from the
# corresponding bins of histogram h1, i.e. h'_1(i) = h_1(i) - h_2(i).  The two
# histograms must have identical bin ranges.
# 
### #   Returns: Cint
### #XXX Unknown input type h1::Ptr{gsl_histogram}
### #XXX Unknown input type h2::Ptr{gsl_histogram}
### function gsl_histogram_sub (h1::Ptr{gsl_histogram}, h2::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_sub, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Ptr{gsl_histogram}), h1, h2 )
### end


### Function uses unknown type; disabled
### # This function multiplies the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i) = h_1(i) *
# h_2(i).  The two histograms must have identical bin ranges.
# 
### #   Returns: Cint
### #XXX Unknown input type h1::Ptr{gsl_histogram}
### #XXX Unknown input type h2::Ptr{gsl_histogram}
### function gsl_histogram_mul (h1::Ptr{gsl_histogram}, h2::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_mul, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Ptr{gsl_histogram}), h1, h2 )
### end


### Function uses unknown type; disabled
### # This function divides the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i) = h_1(i) /
# h_2(i).  The two histograms must have identical bin ranges.
# 
### #   Returns: Cint
### #XXX Unknown input type h1::Ptr{gsl_histogram}
### #XXX Unknown input type h2::Ptr{gsl_histogram}
### function gsl_histogram_div (h1::Ptr{gsl_histogram}, h2::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_div, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Ptr{gsl_histogram}), h1, h2 )
### end


### Function uses unknown type; disabled
### # This function multiplies the contents of the bins of histogram h by the
# constant scale, i.e.  h'_1(i) = h_1(i) * scale.
# 
### #   {$h'_1(i) = h_1(i) * \hbox{\it scale}$} 
### #   Returns: Cint
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_scale (h::Ptr{gsl_histogram}, scale::Cdouble)
###     ccall( (:gsl_histogram_scale, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Cdouble), h, scale )
### end


### Function uses unknown type; disabled
### # This function shifts the contents of the bins of histogram h by the constant
# offset, i.e.  h'_1(i) = h_1(i) + offset.
# 
### #   {$h'_1(i) = h_1(i) + \hbox{\it offset}$} 
### #   Returns: Cint
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_shift (h::Ptr{gsl_histogram}, offset::Cdouble)
###     ccall( (:gsl_histogram_shift, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Cdouble), h, offset )
### end