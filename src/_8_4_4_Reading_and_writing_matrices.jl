#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.4.4 Reading and writing matrices #
######################################
export matrix_fwrite, matrix_fread, matrix_fprintf, matrix_fscanf


# This function writes the elements of the matrix m to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
#   Returns: Cint
function matrix_fwrite(stream::Ptr{Void}, m::Ptr{gsl_matrix})
    errno = ccall( (:gsl_matrix_fwrite, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_matrix}), stream, m )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the matrix m from the open stream stream in binary
# format.  The matrix m must be preallocated with the correct dimensions since
# the function uses the size of m to determine how many bytes to read.  The
# return value is 0 for success and GSL_EFAILED if there was a problem reading
# from the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
function matrix_fread(stream::Ptr{Void})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_matrix_fread, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_matrix}), stream, m )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(m)
end


# This function writes the elements of the matrix m line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
#   Returns: Cint
function matrix_fprintf(stream::Ptr{Void}, m::Ptr{gsl_matrix})
    format = convert(Ptr{Cchar}, Array(Cchar, 1))
    errno = ccall( (:gsl_matrix_fprintf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_matrix}, Ptr{Cchar}), stream, m, format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(format)
end


# This function reads formatted data from the stream stream into the matrix m.
# The matrix m must be preallocated with the correct dimensions since the
# function uses the size of m to determine how many numbers to read.  The
# function returns 0 for success and GSL_EFAILED if there was a problem reading
# from the file.
# 
#   Returns: Cint
function matrix_fscanf(stream::Ptr{Void})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_matrix_fscanf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_matrix}), stream, m )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(m)
end
