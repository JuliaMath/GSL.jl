#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 22.20 Reading and writing 2D histograms #
###########################################
export histogram2d_fwrite, histogram2d_fread, histogram2d_fprintf,
       histogram2d_fscanf


# This function writes the ranges and bins of the histogram h to the stream
# stream in binary format.  The return value is 0 for success and GSL_EFAILED
# if there was a problem writing to the file.  Since the data is written in the
# native binary format it may not be portable between different architectures.
# 
#   Returns: Cint
function histogram2d_fwrite(stream::Ptr{Void}, h::Ptr{gsl_histogram2d})
    errno = ccall( (:gsl_histogram2d_fwrite, libgsl), Cint, (Ptr{Void},
        Ptr{gsl_histogram2d}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the histogram h from the stream stream in binary
# format.  The histogram h must be preallocated with the correct size since the
# function uses the number of x and y bins in h to determine how many bytes to
# read.  The return value is 0 for success and GSL_EFAILED if there was a
# problem reading from the file.  The data is assumed to have been written in
# the native binary format on the same architecture.
# 
#   Returns: Cint
function histogram2d_fread(stream::Ptr{Void})
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_fread, libgsl), Cint, (Ptr{Void},
        Ptr{gsl_histogram2d}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end


# This function writes the ranges and bins of the histogram h line-by-line to
# the stream stream using the format specifiers range_format and bin_format.
# These should be one of the %g, %e or %f formats for floating point numbers.
# The function returns 0 for success and GSL_EFAILED if there was a problem
# writing to the file.  The histogram output is formatted in five columns, and
# the columns are separated by spaces, like this,                 xrange[0]
# xrange[1] yrange[0] yrange[1] bin(0,0)           xrange[0] xrange[1]
# yrange[1] yrange[2] bin(0,1)           xrange[0] xrange[1] yrange[2]
# yrange[3] bin(0,2)           ....           xrange[0] xrange[1] yrange[ny-1]
# yrange[ny] bin(0,ny-1)                      xrange[1] xrange[2] yrange[0]
# yrange[1] bin(1,0)           xrange[1] xrange[2] yrange[1] yrange[2] bin(1,1)
# xrange[1] xrange[2] yrange[1] yrange[2] bin(1,2)           ....
# xrange[1] xrange[2] yrange[ny-1] yrange[ny] bin(1,ny-1)
# ....                      xrange[nx-1] xrange[nx] yrange[0] yrange[1]
# bin(nx-1,0)           xrange[nx-1] xrange[nx] yrange[1] yrange[2] bin(nx-1,1)
# xrange[nx-1] xrange[nx] yrange[1] yrange[2] bin(nx-1,2)           ....
# xrange[nx-1] xrange[nx] yrange[ny-1] yrange[ny] bin(nx-1,ny-1)  Each line
# contains the lower and upper limits of the bin and the contents of the bin.
# Since the upper limits of the each bin are the lower limits of the
# neighboring bins there is duplication of these values but this allows the
# histogram to be manipulated with line-oriented tools.
# 
#   Returns: Cint
function histogram2d_fprintf(stream::Ptr{Void}, h::Ptr{gsl_histogram2d})
    range_format = Ref{Cchar}()
    bin_format = Ref{Cchar}()
    errno = ccall( (:gsl_histogram2d_fprintf, libgsl), Cint, (Ptr{Void},
        Ptr{gsl_histogram2d}, Ptr{Cchar}, Ptr{Cchar}), stream, h, range_format,
        bin_format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return range_format[], bin_format[]
end


# This function reads formatted data from the stream stream into the histogram
# h.  The data is assumed to be in the five-column format used by
# gsl_histogram2d_fprintf.  The histogram h must be preallocated with the
# correct lengths since the function uses the sizes of h to determine how many
# numbers to read.  The function returns 0 for success and GSL_EFAILED if there
# was a problem reading from the file.
# 
#   Returns: Cint
function histogram2d_fscanf(stream::Ptr{Void})
    h = Ref{gsl_histogram2d}()
    errno = ccall( (:gsl_histogram2d_fscanf, libgsl), Cint, (Ptr{Void},
        Ptr{gsl_histogram2d}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
