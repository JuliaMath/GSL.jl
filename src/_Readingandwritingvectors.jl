#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 8.3.4 Reading and writing vectors #
#####################################
export gsl_vector_fwrite, gsl_vector_fread, gsl_vector_fprintf,
       gsl_vector_fscanf


# This function writes the elements of the vector v to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_vector_fwrite (stream::Ptr{FILE}, v::Ptr{gsl_vector})
    ccall( (:gsl_vector_fwrite, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_vector}), stream, v )
end


# This function reads into the vector v from the open stream stream in binary
# format.  The vector v must be preallocated with the correct length since the
# function uses the size of v to determine how many bytes to read.  The return
# value is 0 for success and GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_vector_fread (stream::Ptr{FILE}, v::Ptr{gsl_vector})
    ccall( (:gsl_vector_fread, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_vector}), stream, v )
end


# This function writes the elements of the vector v line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_vector_fprintf (stream::Ptr{FILE}, v::Ptr{gsl_vector}, format::Ptr{Cchar})
    ccall( (:gsl_vector_fprintf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_vector}, Ptr{Cchar}), stream, v, format )
end


# This function reads formatted data from the stream stream into the vector v.
# The vector v must be preallocated with the correct length since the function
# uses the size of v to determine how many numbers to read.  The function
# returns 0 for success and GSL_EFAILED if there was a problem reading from the
# file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_vector_fscanf (stream::Ptr{FILE}, v::Ptr{gsl_vector})
    ccall( (:gsl_vector_fscanf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_vector}), stream, v )
end