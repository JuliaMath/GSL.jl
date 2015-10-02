#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 22.5 Searching histogram ranges #
###################################
export histogram_find


# This function finds and sets the index i to the bin number which covers the
# coordinate x in the histogram h.  The bin is located using a binary search.
# The search includes an optimization for histograms with uniform range, and
# will return the correct bin immediately in this case.  If x is found in the
# range of the histogram then the function sets the index i and returns
# GSL_SUCCESS.  If x lies outside the valid range of the histogram then the
# function returns GSL_EDOM and the error handler is invoked.
# 
#   Returns: Cint
function histogram_find(h::Ptr{gsl_histogram}, x::Real)
    i = Ref{Csize_t}()
    errno = ccall( (:gsl_histogram_find, libgsl), Cint,
        (Ptr{gsl_histogram}, Cdouble, Ptr{Csize_t}), h, x, i )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return i[]
end
