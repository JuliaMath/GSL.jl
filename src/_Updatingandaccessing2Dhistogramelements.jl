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
function gsl_histogram2d_increment (h::Ptr{gsl_histogram2d}, x::Cdouble, y::Cdouble)
    ccall( (:gsl_histogram2d_increment, "libgsl"), Cint,
        (Ptr{gsl_histogram2d}, Cdouble, Cdouble), h, x, y )
end


# This function is similar to gsl_histogram2d_increment but increases the value
# of the appropriate bin in the histogram h by the floating-point number
# weight.
# 
#   Returns: Cint
function gsl_histogram2d_accumulate (h::Ptr{gsl_histogram2d}, x::Cdouble, y::Cdouble, weight::Cdouble)
    ccall( (:gsl_histogram2d_accumulate, "libgsl"), Cint,
        (Ptr{gsl_histogram2d}, Cdouble, Cdouble, Cdouble), h, x, y, weight )
end


# This function returns the contents of the (i,j)-th bin of the histogram h.
# If (i,j) lies outside the valid range of indices for the histogram then the
# error handler is called with an error code of GSL_EDOM and the function
# returns 0.
# 
#   Returns: Cdouble
function gsl_histogram2d_get (h::Ptr{gsl_histogram2d}, i::Csize_t, j::Csize_t)
    ccall( (:gsl_histogram2d_get, "libgsl"), Cdouble,
        (Ptr{gsl_histogram2d}, Csize_t, Csize_t), h, i, j )
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
function gsl_histogram2d_get_xrange (h::Ptr{gsl_histogram2d}, i::Csize_t, xlower::Ptr{Cdouble}, xupper::Ptr{Cdouble})
    ccall( (:gsl_histogram2d_get_xrange, "libgsl"), Cint,
        (Ptr{gsl_histogram2d}, Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), h, i,
        xlower, xupper )
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
function gsl_histogram2d_get_yrange (h::Ptr{gsl_histogram2d}, j::Csize_t, ylower::Ptr{Cdouble}, yupper::Ptr{Cdouble})
    ccall( (:gsl_histogram2d_get_yrange, "libgsl"), Cint,
        (Ptr{gsl_histogram2d}, Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), h, j,
        ylower, yupper )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_xmax (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmax, "libgsl"), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_xmin (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_xmin, "libgsl"), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Csize_t
function gsl_histogram2d_nx (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_nx, "libgsl"), Csize_t, (Ptr{gsl_histogram2d},
        ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_ymax (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymax, "libgsl"), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Cdouble
function gsl_histogram2d_ymin (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ymin, "libgsl"), Cdouble,
        (Ptr{gsl_histogram2d}, ), h )
end


# These functions return the maximum upper and minimum lower range limits and
# the number of bins for the x and y directions of the histogram h.  They
# provide a way of determining these values without accessing the
# gsl_histogram2d struct directly.
# 
#   Returns: Csize_t
function gsl_histogram2d_ny (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_ny, "libgsl"), Csize_t, (Ptr{gsl_histogram2d},
        ), h )
end


# This function resets all the bins of the histogram h to zero.
# 
#   Returns: Void
function gsl_histogram2d_reset (h::Ptr{gsl_histogram2d})
    ccall( (:gsl_histogram2d_reset, "libgsl"), Void, (Ptr{gsl_histogram2d},
        ), h )
end