#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 8.2.2 Reading and writing blocks #
####################################
export gsl_block_fwrite, gsl_block_fread, gsl_block_fprintf, gsl_block_fscanf


### Function uses unknown type; disabled
### # This function writes the elements of the block b to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type b::Ptr{gsl_block}
### function gsl_block_fwrite (stream::Ptr{FILE}, b::Ptr{gsl_block})
###     ccall( (:gsl_block_fwrite, "libgsl"), Cint, (Ptr{FILE},
###         Ptr{gsl_block}), stream, b )
### end


### Function uses unknown type; disabled
### # This function reads into the block b from the open stream stream in binary
# format.  The block b must be preallocated with the correct length since the
# function uses the size of b to determine how many bytes to read.  The return
# value is 0 for success and GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type b::Ptr{gsl_block}
### function gsl_block_fread (stream::Ptr{FILE}, b::Ptr{gsl_block})
###     ccall( (:gsl_block_fread, "libgsl"), Cint, (Ptr{FILE}, Ptr{gsl_block}),
###         stream, b )
### end


### Function uses unknown type; disabled
### # This function writes the elements of the block b line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type b::Ptr{gsl_block}
### function gsl_block_fprintf (stream::Ptr{FILE}, b::Ptr{gsl_block}, format::Ptr{Cchar})
###     ccall( (:gsl_block_fprintf, "libgsl"), Cint, (Ptr{FILE},
###         Ptr{gsl_block}, Ptr{Cchar}), stream, b, format )
### end


### Function uses unknown type; disabled
### # This function reads formatted data from the stream stream into the block b.
# The block b must be preallocated with the correct length since the function
# uses the size of b to determine how many numbers to read.  The function
# returns 0 for success and GSL_EFAILED if there was a problem reading from the
# file.
# 
### #   Returns: Cint
### #XXX Unknown input type stream::Ptr{FILE}
### #XXX Unknown input type b::Ptr{gsl_block}
### function gsl_block_fscanf (stream::Ptr{FILE}, b::Ptr{gsl_block})
###     ccall( (:gsl_block_fscanf, "libgsl"), Cint, (Ptr{FILE},
###         Ptr{gsl_block}), stream, b )
### end