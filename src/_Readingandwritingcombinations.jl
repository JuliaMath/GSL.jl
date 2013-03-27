#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 10.6 Reading and writing combinations #
#########################################
#############
# Footnotes #
#############
export gsl_combination_fwrite, gsl_combination_fread, gsl_combination_fprintf,
       gsl_combination_fscanf


# This function writes the elements of the combination c to the stream stream
# in binary format.  The function returns GSL_EFAILED if there was a problem
# writing to the file.  Since the data is written in the native binary format
# it may not be portable between different architectures.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_combination_fwrite (stream::Ptr{FILE}, c::Ptr{gsl_combination})
    ccall( (:gsl_combination_fwrite, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_combination}), stream, c )
end


# This function reads elements from the open stream stream into the combination
# c in binary format.  The combination c must be preallocated with correct
# values of n and k since the function uses the size of c to determine how many
# bytes to read.  The function returns GSL_EFAILED if there was a problem
# reading from the file.  The data is assumed to have been written in the
# native binary format on the same architecture.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_combination_fread (stream::Ptr{FILE}, c::Ptr{gsl_combination})
    ccall( (:gsl_combination_fread, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_combination}), stream, c )
end


# This function writes the elements of the combination c line-by-line to the
# stream stream using the format specifier format, which should be suitable for
# a type of size_t.  In ISO C99 the type modifier z represents size_t, so
# "%zu\n" is a suitable format.1  The function returns GSL_EFAILED if there was
# a problem writing to the file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_combination_fprintf (stream::Ptr{FILE}, c::Ptr{gsl_combination}, format::Ptr{Cchar})
    ccall( (:gsl_combination_fprintf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_combination}, Ptr{Cchar}), stream, c, format )
end


# This function reads formatted data from the stream stream into the
# combination c.  The combination c must be preallocated with correct values of
# n and k since the function uses the size of c to determine how many numbers
# to read.  The function returns GSL_EFAILED if there was a problem reading
# from the file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_combination_fscanf (stream::Ptr{FILE}, c::Ptr{gsl_combination})
    ccall( (:gsl_combination_fscanf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_combination}), stream, c )
end