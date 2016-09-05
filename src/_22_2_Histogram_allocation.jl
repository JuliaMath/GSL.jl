#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.2 Histogram allocation #
#############################
export histogram_alloc, histogram_set_ranges, histogram_set_ranges_uniform,
       histogram_free




# This function allocates memory for a histogram with n bins, and returns a
# pointer to a newly created gsl_histogram struct.  If insufficient memory is
# available a null pointer is returned and the error handler is invoked with an
# error code of GSL_ENOMEM. The bins and ranges are not initialized, and should
# be prepared using one of the range-setting functions below in order to make
# the histogram ready for use.
#
#   Returns: Ptr{gsl_histogram}
function histogram_alloc(n::Integer)
    output_ptr = ccall( (:gsl_histogram_alloc, libgsl),
        Ptr{gsl_histogram}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number histogram_alloc


# This function sets the ranges of the existing histogram h using the array
# range of size size.  The values of the histogram bins are reset to zero.  The
# range array should contain the desired bin limits.  The ranges can be
# arbitrary, subject to the restriction that they are monotonically increasing.
# The following example shows how to create a histogram with logarithmic bins
# with ranges [1,10), [10,100) and [100,1000).                 gsl_histogram *
# h = gsl_histogram_alloc (3);                      /* bin[0] covers the range
# 1 <= x < 10 */           /* bin[1] covers the range 10 <= x < 100 */
# /* bin[2] covers the range 100 <= x < 1000 */                      double
# range[4] = { 1.0, 10.0, 100.0, 1000.0 };
# gsl_histogram_set_ranges (h, range, 4);  Note that the size of the range
# array should be defined to be one element bigger than the number of bins.
# The additional element is required for the upper value of the final bin.
#
#   Returns: Cint
function histogram_set_ranges(range::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_set_ranges, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble), h, range )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_1arg Number histogram_set_ranges


# This function sets the ranges of the existing histogram h to cover the range
# xmin to xmax uniformly.  The values of the histogram bins are reset to zero.
# The bin ranges are shown in the table below,                bin[0]
# corresponds to xmin <= x < xmin + d           bin[1] corresponds to xmin + d
# <= x < xmin + 2 d           ......           bin[n-1] corresponds to xmin +
# (n-1)d <= x < xmax  where d is the bin spacing, d = (xmax-xmin)/n.
#
#   Returns: Cint
function histogram_set_ranges_uniform(xmin::Real, xmax::Real)
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_set_ranges_uniform, libgsl), Cint,
        (Ref{gsl_histogram}, Cdouble, Cdouble), h, xmin, xmax )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
Compat.@dep_vectorize_2arg Number histogram_set_ranges_uniform


# This function frees the histogram h and all of the memory associated with it.
#
#   Returns: Void
function histogram_free(h::Ref{gsl_histogram})
    ccall( (:gsl_histogram_free, libgsl), Void, (Ref{gsl_histogram}, ), h
        )
end
