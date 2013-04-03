#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 8.3.1 Vector allocation #
###########################
export vector_alloc, vector_calloc, vector_free


# This function creates a vector of length n, returning a pointer to a newly
# initialized vector struct. A new block is allocated for the elements of the
# vector, and stored in the block component of the vector struct.  The block is
# “owned” by the vector, and will be deallocated when the vector is
# deallocated.
# 
#   Returns: Ptr{gsl_vector}
function vector_alloc(n::Integer)
    ccall( (:gsl_vector_alloc, :libgsl), Ptr{gsl_vector}, (Csize_t, ), n )
end
@vectorize_1arg Number vector_alloc


# This function allocates memory for a vector of length n and initializes all
# the elements of the vector to zero.
# 
#   Returns: Ptr{gsl_vector}
function vector_calloc(n::Integer)
    ccall( (:gsl_vector_calloc, :libgsl), Ptr{gsl_vector}, (Csize_t, ), n )
end
@vectorize_1arg Number vector_calloc


# This function frees a previously allocated vector v.  If the vector was
# created using gsl_vector_alloc then the block underlying the vector will also
# be deallocated.  If the vector has been created from another object then the
# memory is still owned by that object and will not be deallocated.  The vector
# v must be a valid vector object (a null pointer is not allowed).
# 
#   Returns: Void
function vector_free(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_free, :libgsl), Void, (Ptr{gsl_vector}, ), v )
end
