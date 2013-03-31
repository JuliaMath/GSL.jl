#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 22.14 2D Histogram allocation #
#################################
export gsl_histogram2d_alloc, gsl_histogram2d_set_ranges,
       gsl_histogram2d_set_ranges_uniform, gsl_histogram2d_free


# This function allocates memory for a two-dimensional histogram with nx bins
# in the x direction and ny bins in the y direction.  The function returns a
# pointer to a newly created gsl_histogram2d struct. If insufficient memory is
# available a null pointer is returned and the error handler is invoked with an
# error code of GSL_ENOMEM. The bins and ranges must be initialized with one of
# the functions below before the histogram is ready for use.
# 
#   Returns: Ptr{gsl_histogram2d}
function gsl_histogram2d_alloc{gsl_int<:Integer}(nx::gsl_int, ny::gsl_int)
    ccall( (:gsl_histogram2d_alloc, :libgsl), Ptr{gsl_histogram2d},
        (Csize_t, Csize_t), nx, ny )
end


# This function sets the ranges of the existing histogram h using the arrays
# xrange and yrange of size xsize and ysize respectively.  The values of the
# histogram bins are reset to zero.
# 
#   Returns: Cint
function gsl_histogram2d_set_ranges(xrange::Cdouble)
    h = convert(Ptr{gsl_histogram2d}, Array(gsl_histogram2d, 1))
    gsl_errno = ccall( (:gsl_histogram2d_set_ranges, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Cdouble), h, xrange )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(h)
end


# This function sets the ranges of the existing histogram h to cover the ranges
# xmin to xmax and ymin to ymax uniformly.  The values of the histogram bins
# are reset to zero.
# 
#   Returns: Cint
function gsl_histogram2d_set_ranges_uniform(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
    h = convert(Ptr{gsl_histogram2d}, Array(gsl_histogram2d, 1))
    gsl_errno = ccall( (:gsl_histogram2d_set_ranges_uniform, :libgsl),
        Cint, (Ptr{gsl_histogram2d}, Cdouble, Cdouble, Cdouble, Cdouble), h,
        xmin, xmax, ymin, ymax )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(h)
end


# This function frees the 2D histogram h and all of the memory associated with
# it.
# 
#   Returns: Void
function gsl_histogram2d_free(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_free, :libgsl), Void, (Ptr{gsl_histogram2d},
        ), h )
end
