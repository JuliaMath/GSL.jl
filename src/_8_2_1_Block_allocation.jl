#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 8.2.1 Block allocation #
##########################
export block_alloc, block_calloc, block_free


# This function allocates memory for a block of n double-precision elements,
# returning a pointer to the block struct.  The block is not initialized and so
# the values of its elements are undefined.  Use the function gsl_block_calloc
# if you want to ensure that all the elements are initialized to zero.
# A null pointer is returned if insufficient memory is available to create the
# block.
#
#   Returns: Ptr{gsl_block}
function block_alloc(n::Integer)
    output_ptr = ccall( (:gsl_block_alloc, libgsl), Ptr{gsl_block},
        (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number block_alloc


# This function allocates memory for a block and initializes all the elements
# of the block to zero.
#
#   Returns: Ptr{gsl_block}
function block_calloc(n::Integer)
    output_ptr = ccall( (:gsl_block_calloc, libgsl), Ptr{gsl_block},
        (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number block_calloc


# This function frees the memory used by a block b previously allocated with
# gsl_block_alloc or gsl_block_calloc.  The block b must be a valid block
# object (a null pointer is not allowed).
#
#   Returns: Void
function block_free(b::Ref{gsl_block})
    ccall( (:gsl_block_free, libgsl), Void, (Ref{gsl_block}, ), b )
end
