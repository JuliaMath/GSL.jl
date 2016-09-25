#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 10.2 Combination allocation #
###############################
export combination_alloc, combination_calloc, combination_init_first,
       combination_init_last, combination_free, combination_memcpy


# This function allocates memory for a new combination with parameters n, k.
# The combination is not initialized and its elements are undefined.  Use the
# function gsl_combination_calloc if you want to create a combination which is
# initialized to the lexicographically first combination. A null pointer is
# returned if insufficient memory is available to create the combination.
#
#   Returns: Ptr{gsl_combination}
function combination_alloc(n::Integer, k::Integer)
    output_ptr = ccall( (:gsl_combination_alloc, libgsl),
        Ptr{gsl_combination}, (Csize_t, Csize_t), n, k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number combination_alloc


# This function allocates memory for a new combination with parameters n, k and
# initializes it to the lexicographically first combination. A null pointer is
# returned if insufficient memory is available to create the combination.
#
#   Returns: Ptr{gsl_combination}
function combination_calloc(n::Integer, k::Integer)
    output_ptr = ccall( (:gsl_combination_calloc, libgsl),
        Ptr{gsl_combination}, (Csize_t, Csize_t), n, k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number combination_calloc


# This function initializes the combination c to the lexicographically first
# combination, i.e.  (0,1,2,...,k-1).
#
#   Returns: Void
function combination_init_first()
    c = Ref{gsl_combination}()
    ccall( (:gsl_combination_init_first, libgsl), Void,
        (Ref{gsl_combination}, ), c )
    return c[]
end


# This function initializes the combination c to the lexicographically last
# combination, i.e.  (n-k,n-k+1,...,n-1).
#
#   Returns: Void
function combination_init_last()
    c = Ref{gsl_combination}()
    ccall( (:gsl_combination_init_last, libgsl), Void,
        (Ref{gsl_combination}, ), c )
    return c[]
end


# This function frees all the memory used by the combination c.
#
#   Returns: Void
function combination_free(c::Ref{gsl_combination})
    ccall( (:gsl_combination_free, libgsl), Void, (Ref{gsl_combination},
        ), c )
end


# This function copies the elements of the combination src into the combination
# dest.  The two combinations must have the same size.
#
#   Returns: Cint
function combination_memcpy(src::Ref{gsl_combination})
    dest = Ref{gsl_combination}()
    errno = ccall( (:gsl_combination_memcpy, libgsl), Cint,
        (Ref{gsl_combination}, Ref{gsl_combination}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return dest[]
end
