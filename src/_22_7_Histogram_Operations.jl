#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.7 Histogram Operations #
#############################
export histogram_equal_bins_p, histogram_add, histogram_sub, histogram_mul,
       histogram_div, histogram_scale, histogram_shift


# This function returns 1 if the all of the individual bin ranges of the two
# histograms are identical, and 0 otherwise.
# 
#   Returns: Cint
function histogram_equal_bins_p(h1::Ref{gsl_histogram}, h2::Ref{gsl_histogram})
    errno = ccall( (:gsl_histogram_equal_bins_p, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function adds the contents of the bins in histogram h2 to the
# corresponding bins of histogram h1,  i.e. h'_1(i) = h_1(i) + h_2(i).  The two
# histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram_add(h2::Ref{gsl_histogram})
    h1 = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_add, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function subtracts the contents of the bins in histogram h2 from the
# corresponding bins of histogram h1, i.e. h'_1(i) = h_1(i) - h_2(i).  The two
# histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram_sub(h2::Ref{gsl_histogram})
    h1 = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_sub, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function multiplies the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i) = h_1(i) *
# h_2(i).  The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram_mul(h2::Ref{gsl_histogram})
    h1 = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_mul, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function divides the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i) = h_1(i) /
# h_2(i).  The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram_div(h2::Ref{gsl_histogram})
    h1 = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_div, libgsl), Cint,
        (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function multiplies the contents of the bins of histogram h by the
# constant scale, i.e.  h'_1(i) = h_1(i) * scale.
# 
#   Returns: Cint
function histogram_scale(scale::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_scale, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble), h, scale )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram_scale


# This function shifts the contents of the bins of histogram h by the constant
# offset, i.e.  h'_1(i) = h_1(i) + offset.
# 
#   Returns: Cint
function histogram_shift(offset::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_shift, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble), h, offset )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram_shift
