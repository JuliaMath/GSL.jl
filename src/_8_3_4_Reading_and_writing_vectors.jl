#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 8.3.4 Reading and writing vectors #
#####################################
export vector_fwrite, vector_fread, vector_fprintf, vector_fscanf


# This function writes the elements of the vector v to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
#   Returns: Cint
function vector_fwrite(stream::Ptr{Void}, v::Ptr{gsl_vector})
    errno = ccall( (:gsl_vector_fwrite, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}), stream, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the vector v from the open stream stream in binary
# format.  The vector v must be preallocated with the correct length since the
# function uses the size of v to determine how many bytes to read.  The return
# value is 0 for success and GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
function vector_fread(stream::Ptr{Void})
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_vector_fread, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}), stream, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)[1]
end


# This function writes the elements of the vector v line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
#   Returns: Cint
function vector_fprintf(stream::Ptr{Void}, v::Ptr{gsl_vector})
    format = convert(Ptr{Cchar}, Array(Cchar, 1))
    errno = ccall( (:gsl_vector_fprintf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}, Ptr{Cchar}), stream, v, format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(format)[1]
end


# This function reads formatted data from the stream stream into the vector v.
# The vector v must be preallocated with the correct length since the function
# uses the size of v to determine how many numbers to read.  The function
# returns 0 for success and GSL_EFAILED if there was a problem reading from the
# file.
# 
#   Returns: Cint
function vector_fscanf(stream::Ptr{Void})
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_vector_fscanf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_vector}), stream, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)[1]
end
