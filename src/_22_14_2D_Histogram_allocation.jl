#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 22.14 2D Histogram allocation #
#################################
export histogram2d_alloc, histogram2d_set_ranges,
       histogram2d_set_ranges_uniform, histogram2d_free


# This function allocates memory for a two-dimensional histogram with nx bins
# in the x direction and ny bins in the y direction.  The function returns a
# pointer to a newly created gsl_histogram2d struct. If insufficient memory is
# available a null pointer is returned and the error handler is invoked with an
# error code of GSL_ENOMEM. The bins and ranges must be initialized with one of
# the functions below before the histogram is ready for use.
#
#   Returns: Ptr{gsl_histogram2d}
function histogram2d_alloc(nx::Integer, ny::Integer)
    output_ptr = ccall( (:gsl_histogram2d_alloc, libgsl),
        Ptr{gsl_histogram2d}, (Csize_t, Csize_t), nx, ny )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number histogram2d_alloc


# This function sets the ranges of the existing histogram h using the arrays
# xrange and yrange of size xsize and ysize respectively.  The values of the
# histogram bins are reset to zero.
#
#   Returns: Cint
function histogram2d_set_ranges(xrange::Real)
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_set_ranges, libgsl), Cint,
        (Ref{gsl_histogram2d}, Cdouble), h, xrange )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram2d_set_ranges


# This function sets the ranges of the existing histogram h to cover the ranges
# xmin to xmax and ymin to ymax uniformly.  The values of the histogram bins
# are reset to zero.
#
#   Returns: Cint
function histogram2d_set_ranges_uniform(xmin::Real, xmax::Real, ymin::Real, ymax::Real)
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_set_ranges_uniform, libgsl), Cint,
        (Ref{gsl_histogram2d}, Cdouble, Cdouble, Cdouble, Cdouble), h, xmin,
        xmax, ymin, ymax )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end


# This function frees the 2D histogram h and all of the memory associated with
# it.
#
#   Returns: Void
function histogram2d_free(h::Ref{gsl_histogram2d})
    ccall( (:gsl_histogram2d_free, libgsl), Void, (Ref{gsl_histogram2d},
        ), h )
end
