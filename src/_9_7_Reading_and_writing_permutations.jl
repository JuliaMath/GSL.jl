#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 9.7 Reading and writing permutations #
########################################
#############
# Footnotes #
#############
export permutation_fwrite, permutation_fread, permutation_fprintf,
       permutation_fscanf


# This function writes the elements of the permutation p to the stream stream
# in binary format.  The function returns GSL_EFAILED if there was a problem
# writing to the file.  Since the data is written in the native binary format
# it may not be portable between different architectures.
#
#   Returns: Cint
function permutation_fwrite(stream::Ref{Void}, p::Ref{gsl_permutation})
    errno = ccall( (:gsl_permutation_fwrite, libgsl), Cint, (Ref{Void},
        Ref{gsl_permutation}), stream, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function reads into the permutation p from the open stream stream in
# binary format.  The permutation p must be preallocated with the correct
# length since the function uses the size of p to determine how many bytes to
# read.  The function returns GSL_EFAILED if there was a problem reading from
# the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
#
#   Returns: Cint
function permutation_fread(stream::Ref{Void})
    p = Ref{gsl_permutation}()
    errno = ccall( (:gsl_permutation_fread, libgsl), Cint, (Ref{Void},
        Ref{gsl_permutation}), stream, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p[]
end


# This function writes the elements of the permutation p line-by-line to the
# stream stream using the format specifier format, which should be suitable for
# a type of size_t.  In ISO C99 the type modifier z represents size_t, so
# "%zu\n" is a suitable format.1 The function returns GSL_EFAILED if there was
# a problem writing to the file.
#
#   Returns: Cint
function permutation_fprintf(stream::Ref{Void}, p::Ref{gsl_permutation})
    format = Ref{Cchar}()
    errno = ccall( (:gsl_permutation_fprintf, libgsl), Cint, (Ref{Void},
        Ref{gsl_permutation}, Ref{Cchar}), stream, p, format )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return format[]
end


# This function reads formatted data from the stream stream into the
# permutation p.  The permutation p must be preallocated with the correct
# length since the function uses the size of p to determine how many numbers to
# read.  The function returns GSL_EFAILED if there was a problem reading from
# the file.
#
#   Returns: Cint
function permutation_fscanf(stream::Ref{Void})
    p = Ref{gsl_permutation}()
    errno = ccall( (:gsl_permutation_fscanf, libgsl), Cint, (Ref{Void},
        Ref{gsl_permutation}), stream, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p[]
end
