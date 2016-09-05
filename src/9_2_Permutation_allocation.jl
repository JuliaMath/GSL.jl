#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 9.2 Permutation allocation #
##############################
export permutation_alloc, permutation_calloc, permutation_init,
       permutation_free, permutation_memcpy


# This function allocates memory for a new permutation of size n.  The
# permutation is not initialized and its elements are undefined.  Use the
# function gsl_permutation_calloc if you want to create a permutation which is
# initialized to the identity. A null pointer is returned if insufficient
# memory is available to create the permutation.
#
#   Returns: Ptr{gsl_permutation}
function permutation_alloc(n::Integer)
    output_ptr = ccall( (:gsl_permutation_alloc, libgsl),
        Ptr{gsl_permutation}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number permutation_alloc


# This function allocates memory for a new permutation of size n and
# initializes it to the identity. A null pointer is returned if insufficient
# memory is available to create the permutation.
#
#   Returns: Ptr{gsl_permutation}
function permutation_calloc(n::Integer)
    output_ptr = ccall( (:gsl_permutation_calloc, libgsl),
        Ptr{gsl_permutation}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number permutation_calloc


# This function initializes the permutation p to the identity, i.e.
# (0,1,2,...,n-1).
#
#   Returns: Void
function permutation_init(p::Ptr{gsl_permutation})
    ccall( (:gsl_permutation_init, libgsl), Void, (Ptr{gsl_permutation},
        ), p)
end


# This function frees all the memory used by the permutation p.
#
#   Returns: Void
function permutation_free(p::Ptr{gsl_permutation})
    ccall( (:gsl_permutation_free, libgsl), Void, (Ptr{gsl_permutation},
        ), p)
end


# This function copies the elements of the permutation src into the permutation
# dest.  The two permutations must have the same size.
#
#   Returns: Cint
function permutation_memcpy(dest::Ptr{gsl_permutation}, src::Ptr{gsl_permutation})
    errno = ccall( (:gsl_permutation_memcpy, libgsl), Cint,
        (Ptr{gsl_permutation}, Ptr{gsl_permutation}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
