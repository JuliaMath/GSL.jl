#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 8.2.1 Block allocation #
##########################
export gsl_block_alloc, gsl_block_calloc, gsl_block_free


### Function uses unknown type; disabled
### # This function allocates memory for a block of n double-precision elements,
# returning a pointer to the block struct.  The block is not initialized and so
# the values of its elements are undefined.  Use the function gsl_block_calloc
# if you want to ensure that all the elements are initialized to zero.
# A null pointer is returned if insufficient memory is available to create the
# block.
# 
### #   Returns: Ptr{gsl_block}
### #XXX Unknown output type Ptr{gsl_block}
### function gsl_block_alloc (n::Csize_t)
###     ccall( (:gsl_block_alloc, "libgsl"), Ptr{gsl_block}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a block and initializes all the elements
# of the block to zero.
# 
### #   Returns: Ptr{gsl_block}
### #XXX Unknown output type Ptr{gsl_block}
### function gsl_block_calloc (n::Csize_t)
###     ccall( (:gsl_block_calloc, "libgsl"), Ptr{gsl_block}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory used by a block b previously allocated with
# gsl_block_alloc or gsl_block_calloc.  The block b must be a valid block
# object (a null pointer is not allowed).
# 
### #   Returns: Void
### #XXX Unknown input type b::Ptr{gsl_block}
### function gsl_block_free (b::Ptr{gsl_block})
###     ccall( (:gsl_block_free, "libgsl"), Void, (Ptr{gsl_block}, ), b )
### end