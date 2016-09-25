#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 22.19 2D Histogram Operations #
#################################
export histogram2d_equal_bins_p, histogram2d_add, histogram2d_sub,
       histogram2d_mul, histogram2d_div, histogram2d_scale, histogram2d_shift


# This function returns 1 if all the individual bin ranges of the two
# histograms are identical, and 0 otherwise.
# 
#   Returns: Cint
function histogram2d_equal_bins_p(h1::Ref{gsl_histogram2d}, h2::Ref{gsl_histogram2d})
    errno = ccall( (:gsl_histogram2d_equal_bins_p, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function adds the contents of the bins in histogram h2 to the
# corresponding bins of histogram h1, i.e. h'_1(i,j) = h_1(i,j) + h_2(i,j).
# The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram2d_add(h2::Ref{gsl_histogram2d})
    h1 = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_add, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function subtracts the contents of the bins in histogram h2 from the
# corresponding bins of histogram h1, i.e. h'_1(i,j) = h_1(i,j) - h_2(i,j).
# The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram2d_sub(h2::Ref{gsl_histogram2d})
    h1 = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_sub, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function multiplies the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i,j) = h_1(i,j)
# * h_2(i,j).  The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram2d_mul(h2::Ref{gsl_histogram2d})
    h1 = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_mul, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function divides the contents of the bins of histogram h1 by the
# contents of the corresponding bins in histogram h2, i.e. h'_1(i,j) = h_1(i,j)
# / h_2(i,j).  The two histograms must have identical bin ranges.
# 
#   Returns: Cint
function histogram2d_div(h2::Ref{gsl_histogram2d})
    h1 = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_div, libgsl), Cint,
        (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h1[]
end


# This function multiplies the contents of the bins of histogram h by the
# constant scale, i.e.  h'_1(i,j) = h_1(i,j) scale.
# 
#   Returns: Cint
function histogram2d_scale(scale::Real)
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_scale, libgsl), Cint,
        (Ref{gsl_histogram2d}, Cdouble), h, scale )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram2d_scale


# This function shifts the contents of the bins of histogram h by the constant
# offset, i.e.  h'_1(i,j) = h_1(i,j) + offset.
# 
#   Returns: Cint
function histogram2d_shift(offset::Real)
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_shift, libgsl), Cint,
        (Ref{gsl_histogram2d}, Cdouble), h, offset )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram2d_shift
