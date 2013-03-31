#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 11.6 Reading and writing multisets #
######################################
#############
# Footnotes #
#############
export gsl_multiset_fwrite, gsl_multiset_fread, gsl_multiset_fprintf,
       gsl_multiset_fscanf


# This function writes the elements of the multiset c to the stream stream in
# binary format.  The function returns GSL_EFAILED if there was a problem
# writing to the file.  Since the data is written in the native binary format
# it may not be portable between different architectures.
# 
#   Returns: Cint
function gsl_multiset_fwrite(stream::Ptr{Void}, c::Ptr{gsl_multiset})
    gsl_errno = ccall( (:gsl_multiset_fwrite, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_multiset}), stream, c )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function reads elements from the open stream stream into the multiset c
# in binary format.  The multiset c must be preallocated with correct values of
# n and k since the function uses the size of c to determine how many bytes to
# read.  The function returns GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
function gsl_multiset_fread(stream::Ptr{Void})
    c = convert(Ptr{gsl_multiset}, Array(gsl_multiset, 1))
    gsl_errno = ccall( (:gsl_multiset_fread, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_multiset}), stream, c )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c)
end


# This function writes the elements of the multiset c line-by-line to the
# stream stream using the format specifier format, which should be suitable for
# a type of size_t.  In ISO C99 the type modifier z represents size_t, so
# "%zu\n" is a suitable format.1  The function returns GSL_EFAILED if there was
# a problem writing to the file.
# 
#   Returns: Cint
function gsl_multiset_fprintf(stream::Ptr{Void}, c::Ptr{gsl_multiset})
    format = convert(Ptr{Cchar}, Array(Cchar, 1))
    gsl_errno = ccall( (:gsl_multiset_fprintf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_multiset}, Ptr{Cchar}), stream, c, format )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(format)
end


# This function reads formatted data from the stream stream into the multiset
# c.  The multiset c must be preallocated with correct values of n and k since
# the function uses the size of c to determine how many numbers to read.  The
# function returns GSL_EFAILED if there was a problem reading from the file.
# 
#   Returns: Cint
function gsl_multiset_fscanf(stream::Ptr{Void})
    c = convert(Ptr{gsl_multiset}, Array(gsl_multiset, 1))
    gsl_errno = ccall( (:gsl_multiset_fscanf, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_multiset}), stream, c )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(c)
end
