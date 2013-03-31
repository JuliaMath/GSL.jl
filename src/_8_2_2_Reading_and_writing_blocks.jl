#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 8.2.2 Reading and writing blocks #
####################################
export gsl_block_fwrite, gsl_block_fread, gsl_block_fprintf, gsl_block_fscanf


# This function writes the elements of the block b to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
#   Returns: Cint
function gsl_block_fwrite(stream::Ptr{Void}, b::Ptr{gsl_block})
    gsl_errno = ccall( (:gsl_block_fwrite, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_block}), stream, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function reads into the block b from the open stream stream in binary
# format.  The block b must be preallocated with the correct length since the
# function uses the size of b to determine how many bytes to read.  The return
# value is 0 for success and GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
function gsl_block_fread(stream::Ptr{Void})
    b = convert(Ptr{gsl_block}, Array(gsl_block, 1))
    gsl_errno = ccall( (:gsl_block_fread, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_block}), stream, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(b)
end


# This function writes the elements of the block b line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
#   Returns: Cint
function gsl_block_fprintf(stream::Ptr{Void}, b::Ptr{gsl_block})
    format = convert(Ptr{Cchar}, Array(Cchar, 1))
    gsl_errno = ccall( (:gsl_block_fprintf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_block}, Ptr{Cchar}), stream, b, format )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(format)
end


# This function reads formatted data from the stream stream into the block b.
# The block b must be preallocated with the correct length since the function
# uses the size of b to determine how many numbers to read.  The function
# returns 0 for success and GSL_EFAILED if there was a problem reading from the
# file.
# 
#   Returns: Cint
function gsl_block_fscanf(stream::Ptr{Void})
    b = convert(Ptr{gsl_block}, Array(gsl_block, 1))
    gsl_errno = ccall( (:gsl_block_fscanf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_block}), stream, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(b)
end
