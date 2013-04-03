#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 22.17 Searching 2D histogram ranges #
#######################################
export histogram2d_find


# This function finds and sets the indices i and j to the to the bin which
# covers the coordinates (x,y). The bin is located using a binary search.  The
# search includes an optimization for histograms with uniform ranges, and will
# return the correct bin immediately in this case. If (x,y) is found then the
# function sets the indices (i,j) and returns GSL_SUCCESS.  If (x,y) lies
# outside the valid range of the histogram then the function returns GSL_EDOM
# and the error handler is invoked.
# 
#   Returns: Cint
function histogram2d_find(h::Ptr{gsl_histogram2d}, x::Real, y::Real)
    i = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    j = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    errno = ccall( (:gsl_histogram2d_find, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Cdouble, Cdouble, Ptr{Csize_t}, Ptr{Csize_t}),
        h, x, y, i, j )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(i) ,unsafe_ref(j)
end
