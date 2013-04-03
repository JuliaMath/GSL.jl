#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################################
# 22.16 Updating and accessing 2D histogram elements #
######################################################
export gsl_histogram2d_increment, gsl_histogram2d_accumulate,
       gsl_histogram2d_get, gsl_histogram2d_get_xrange,
       gsl_histogram2d_get_yrange, gsl_histogram2d_xmax, gsl_histogram2d_xmin,
       gsl_histogram2d_nx, gsl_histogram2d_ymax, gsl_histogram2d_ymin,
       gsl_histogram2d_ny, gsl_histogram2d_reset


# This function updates the histogram h by adding one (1.0) to the bin whose x
# and y ranges contain the coordinates (x,y).          If the point (x,y) lies
# inside the valid ranges of the histogram then the function returns zero to
# indicate success.  If (x,y) lies outside the limits of the histogram then the
# function returns GSL_EDOM, and none of the bins are modified.  The error
# handler is not called, since it is often necessary to compute histograms for
# a small range of a larger dataset, ignoring any coordinates outside the range
# of interest.
# 
#   Returns: Cint
function gsl_histogram2d_increment(x::Real, y::Real)
    h = convert(Ptr{gsl_histogram2d}, Array(gsl_histogram2d, 1))
    gsl_errno = ccall( (:gsl_histogram2d_increment, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Cdouble, Cdouble), h, x, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(h)[1]
end
@vectorize_2arg Number gsl_histogram2d_increment


# This function is similar to gsl_histogram2d_increment but increases the value
# of the appropriate bin in the histogram h by the floating-point number
# weight.
# 
#   Returns: Cint
function gsl_histogram2d_accumulate(x::Real, y::Real, weight::Real)
    h = convert(Ptr{gsl_histogram2d}, Array(gsl_histogram2d, 1))
    gsl_errno = ccall( (:gsl_histogram2d_accumulate, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Cdouble, Cdouble, Cdouble), h, x, y, weight )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(h)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_histogram2d_accumulate


# This function returns the contents of the (i,j)-th bin of the histogram h.
# If (i,j) lies outside the valid range of indices for the histogram then the
# error handler is called with an error code of GSL_EDOM and the function
# returns 0.
# 
#   Returns: Cdouble
function gsl_histogram2d_get(h::Ptr{gsl_histogram2d}, i::Integer, j::Integer)
    ccall( (:gsl_histogram2d_get, :libgsl), Cdouble, (Ptr{gsl_histogram2d},
        Csize_t, Csize_t), h, i, j )
end


# These functions find the upper and lower range limits of the i-th and j-th
# bins in the x and y directions of the histogram h.  The range limits are
# stored in xlower and xupper or ylower and yupper.  The lower limits are
# inclusive (i.e. events with these coordinates are included in the bin) and
# the upper limits are exclusive (i.e. events with the value of the upper limit
# are not included and fall in the neighboring higher bin, if it exists).  The
# functions return 0 to indicate success.  If i or j lies outside the valid
# range of indices for the histogram then the error handler is called with an
# error code of GSL_EDOM.
# 
#   Returns: Cint
function gsl_histogram2d_get_xrange(h::Ptr{gsl_histogram2d}, i::Integer)
    xlower = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    xupper = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_histogram2d_get_xrange, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), h, i,
        xlower, xupper )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(xlower)[1] ,unsafe_ref(xupper)[1]
end


# These functions find the upper and lower range limits of the i-th and j-th
# bins in the x and y directions of the histogram h.  The range limits are
# stored in xlower and xupper or ylower and yupper.  The lower limits are
# inclusive (i.e. events with these coordinates are included in the bin) and
# the upper limits are exclusive (i.e. events with the value of the upper limit
# are not included and fall in the neighboring higher bin, if it exists).  The
# functions return 0 to indicate success.  If i or j lies outside the valid
# range of indices for the histogram then the error handler is called with an
# error code of GSL_EDOM.
# 
#   Returns: Cint
function gsl_histogram2d_get_yrange(h::Ptr{gsl_histogram2d}, j::Integer)
    ylower = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    yupper = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_histogram2d_get_yrange, :libgsl), Cint,
        (Ptr{gsl_histogram2d}, Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), h, j,
        ylower, yupper )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(ylower)[1] ,unsafe_ref(yupper)[1]
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_xmax(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmax, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_xmin(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmin, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Csize_t
function gsl_histogram2d_nx(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_nx, :libgsl), Csize_t, (Ptr{gsl_histogram2d},
        ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_ymax(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymax, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_ymin(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymin, :libgsl), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Csize_t
function gsl_histogram2d_ny(h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ny, :libgsl), Csize_t, (Ptr{gsl_histogram2d},
        ), h )
end


# This function resets all the bins of the histogram h to zero.
# 
#   Returns: Void
function gsl_histogram2d_reset()
    h = convert(Ptr{gsl_histogram2d}, Array(gsl_histogram2d, 1))
    ccall( (:gsl_histogram2d_reset, :libgsl), Void, (Ptr{gsl_histogram2d},
        ), h )
    return unsafe_ref(h)[1]
end
