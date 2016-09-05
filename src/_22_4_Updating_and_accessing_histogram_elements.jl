#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 22.4 Updating and accessing histogram elements #
##################################################
export histogram_increment, histogram_accumulate, histogram_get,
       histogram_get_range, histogram_max, histogram_min, histogram_bins,
       histogram_reset


# This function updates the histogram h by adding one (1.0) to the bin whose
# range contains the coordinate x.          If x lies in the valid range of the
# histogram then the function returns zero to indicate success.  If x is less
# than the lower limit of the histogram then the function returns GSL_EDOM, and
# none of bins are modified.  Similarly, if the value of x is greater than or
# equal to the upper limit of the histogram then the function returns GSL_EDOM,
# and none of the bins are modified.  The error handler is not called, however,
# since it is often necessary to compute histograms for a small range of a
# larger dataset, ignoring the values outside the range of interest.
# 
#   Returns: Cint
function histogram_increment(x::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_increment, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble), h, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram_increment


# This function is similar to gsl_histogram_increment but increases the value
# of the appropriate bin in the histogram h by the floating-point number
# weight.
# 
#   Returns: Cint
function histogram_accumulate(x::Real, weight::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_accumulate, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble, Cdouble), h, x, weight )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_2arg Number histogram_accumulate


# This function returns the contents of the i-th bin of the histogram h.  If i
# lies outside the valid range of indices for the histogram then the error
# handler is called with an error code of GSL_EDOM and the function returns 0.
# 
#   Returns: Cdouble
function histogram_get(h::Ref{gsl_histogram}, i::Integer)
    ccall( (:gsl_histogram_get, libgsl), Cdouble, (Ref{gsl_histogram},
        Csize_t), h, i )
end


# This function finds the upper and lower range limits of the i-th bin of the
# histogram h.  If the index i is valid then the corresponding range limits are
# stored in lower and upper.  The lower limit is inclusive (i.e. events with
# this coordinate are included in the bin) and the upper limit is exclusive
# (i.e. events with the coordinate of the upper limit are excluded and fall in
# the neighboring higher bin, if it exists).  The function returns 0 to
# indicate success.  If i lies outside the valid range of indices for the
# histogram then the error handler is called and the function returns an error
# code of GSL_EDOM.
# 
#   Returns: Cint
function histogram_get_range(h::Ref{gsl_histogram}, i::Integer)
    lower = Ref{Cdouble}()
    upper = Ref{Cdouble}()
    errno = ccall( (:gsl_histogram_get_range, libgsl), Cint,
        (Ref{gsl_histogram}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, i, lower,
        upper )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return lower[], upper[]
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
#   Returns: Cdouble
function histogram_max(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_max, libgsl), Cdouble, (Ref{gsl_histogram}, ),
        h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
#   Returns: Cdouble
function histogram_min(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_min, libgsl), Cdouble, (Ref{gsl_histogram}, ),
        h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
#   Returns: Csize_t
function histogram_bins(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_bins, libgsl), Csize_t, (Ref{gsl_histogram}, ),
        h )
end


# This function resets all the bins in the histogram h to zero.
# 
#   Returns: Void
function histogram_reset()
    h = Ref{gsl_histogram}()
    ccall( (:gsl_histogram_reset, libgsl), Void, (Ref{gsl_histogram}, ), h
        )
    return h[]
end
