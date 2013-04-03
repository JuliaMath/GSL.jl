#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 8.4.1 Matrix allocation #
###########################
export matrix_alloc, matrix_calloc, matrix_free


# This function creates a matrix of size n1 rows by n2 columns, returning a
# pointer to a newly initialized matrix struct. A new block is allocated for
# the elements of the matrix, and stored in the block component of the matrix
# struct.  The block is “owned” by the matrix, and will be deallocated when the
# matrix is deallocated.
# 
#   Returns: Ptr{gsl_matrix}
function matrix_alloc(n1::Integer, n2::Integer)
    ccall( (:gsl_matrix_alloc, :libgsl), Ptr{gsl_matrix}, (Csize_t,
        Csize_t), n1, n2 )
end
@vectorize_2arg Number matrix_alloc


# This function allocates memory for a matrix of size n1 rows by n2 columns and
# initializes all the elements of the matrix to zero.
# 
#   Returns: Ptr{gsl_matrix}
function matrix_calloc(n1::Integer, n2::Integer)
    ccall( (:gsl_matrix_calloc, :libgsl), Ptr{gsl_matrix}, (Csize_t,
        Csize_t), n1, n2 )
end
@vectorize_2arg Number matrix_calloc


# This function frees a previously allocated matrix m.  If the matrix was
# created using gsl_matrix_alloc then the block underlying the matrix will also
# be deallocated.  If the matrix has been created from another object then the
# memory is still owned by that object and will not be deallocated.  The matrix
# m must be a valid matrix object (a null pointer is not allowed).
# 
#   Returns: Void
function matrix_free(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_free, :libgsl), Void, (Ptr{gsl_matrix}, ), m )
end
