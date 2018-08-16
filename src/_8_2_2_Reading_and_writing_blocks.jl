#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 8.2.2 Reading and writing blocks #
####################################
export block_fwrite, block_fread, block_fprintf, block_fscanf


# This function writes the elements of the block b to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
#
#   Returns: Cint
function block_fwrite(stream::Ref{Cvoid}, b::Ref{gsl_block})
    errno = ccall( (:gsl_block_fwrite, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_block}), stream, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the block b from the open stream stream in binary
# format.  The block b must be preallocated with the correct length since the
# function uses the size of b to determine how many bytes to read.  The return
# value is 0 for success and GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
#
#   Returns: Cint
function block_fread(stream::Ref{Cvoid})
    b = Ref{gsl_block}()
    errno = ccall( (:gsl_block_fread, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_block}), stream, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return b[]
end


# This function writes the elements of the block b line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
#
#   Returns: Cint
function block_fprintf(stream::Ref{Cvoid}, b::Ref{gsl_block})
    format = Ref{Cchar}()
    errno = ccall( (:gsl_block_fprintf, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_block}, Ref{Cchar}), stream, b, format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return format[]
end


# This function reads formatted data from the stream stream into the block b.
# The block b must be preallocated with the correct length since the function
# uses the size of b to determine how many numbers to read.  The function
# returns 0 for success and GSL_EFAILED if there was a problem reading from the
# file.
#
#   Returns: Cint
function block_fscanf(stream::Ref{Cvoid})
    b = Ref{gsl_block}()
    errno = ccall( (:gsl_block_fscanf, libgsl), Cint, (Ref{Cvoid},
        Ref{gsl_block}), stream, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return b[]
end
