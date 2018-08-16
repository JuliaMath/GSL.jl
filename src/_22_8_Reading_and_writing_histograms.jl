#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 22.8 Reading and writing histograms #
#######################################
export histogram_fwrite, histogram_fread, histogram_fprintf, histogram_fscanf




# This function writes the ranges and bins of the histogram h to the stream
# stream in binary format.  The return value is 0 for success and GSL_EFAILED
# if there was a problem writing to the file.  Since the data is written in the
# native binary format it may not be portable between different architectures.
#
#   Returns: Cint
function histogram_fwrite(stream::Ref{Cvoid}, h::Ref{gsl_histogram})
    errno = ccall( (:gsl_histogram_fwrite, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_histogram}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the histogram h from the open stream stream in
# binary format.  The histogram h must be preallocated with the correct size
# since the function uses the number of bins in h to determine how many bytes
# to read.  The return value is 0 for success and GSL_EFAILED if there was a
# problem reading from the file.  The data is assumed to have been written in
# the native binary format on the same architecture.
#
#   Returns: Cint
function histogram_fread(stream::Ref{Cvoid})
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_fread, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_histogram}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end


# This function writes the ranges and bins of the histogram h line-by-line to
# the stream stream using the format specifiers range_format and bin_format.
# These should be one of the %g, %e or %f formats for floating point numbers.
# The function returns 0 for success and GSL_EFAILED if there was a problem
# writing to the file.  The histogram output is formatted in three columns, and
# the columns are separated by spaces, like this,                 range[0]
# range[1] bin[0]           range[1] range[2] bin[1]           range[2]
# range[3] bin[2]           ....           range[n-1] range[n] bin[n-1]  The
# values of the ranges are formatted using range_format and the value of the
# bins are formatted using bin_format.  Each line contains the lower and upper
# limit of the range of the bins and the value of the bin itself.  Since the
# upper limit of one bin is the lower limit of the next there is duplication of
# these values between lines but this allows the histogram to be manipulated
# with line-oriented tools.
#
#   Returns: Cint
function histogram_fprintf(stream::Ref{Cvoid}, h::Ref{gsl_histogram})
    range_format = Ref{Cchar}()
    bin_format = Ref{Cchar}()
    errno = ccall( (:gsl_histogram_fprintf, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_histogram}, Ref{Cchar}, Ref{Cchar}), stream, h, range_format,
        bin_format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return range_format[], bin_format[]
end


# This function reads formatted data from the stream stream into the histogram
# h.  The data is assumed to be in the three-column format used by
# gsl_histogram_fprintf.  The histogram h must be preallocated with the correct
# length since the function uses the size of h to determine how many numbers to
# read.  The function returns 0 for success and GSL_EFAILED if there was a
# problem reading from the file.
#
#   Returns: Cint
function histogram_fscanf(stream::Ref{Cvoid})
    h = Ref{gsl_histogram}()
    errno = ccall( (:gsl_histogram_fscanf, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_histogram}), stream, h )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return h[]
end
