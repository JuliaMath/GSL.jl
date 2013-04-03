#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 8.4.9 Exchanging rows and columns #
#####################################
export gsl_matrix_swap_rows, gsl_matrix_swap_columns, gsl_matrix_swap_rowcol,
       gsl_matrix_transpose_memcpy, gsl_matrix_transpose


# This function exchanges the i-th and j-th rows of the matrix m in-place.
# 
#   Returns: Cint
function gsl_matrix_swap_rows(i::Integer, j::Integer)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_swap_rows, :libgsl), Cint,
        (Ptr{gsl_matrix}, Csize_t, Csize_t), m, i, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)[1]
end
@vectorize_2arg Number gsl_matrix_swap_rows


# This function exchanges the i-th and j-th columns of the matrix m in-place.
# 
#   Returns: Cint
function gsl_matrix_swap_columns(i::Integer, j::Integer)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_swap_columns, :libgsl), Cint,
        (Ptr{gsl_matrix}, Csize_t, Csize_t), m, i, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)[1]
end
@vectorize_2arg Number gsl_matrix_swap_columns


# This function exchanges the i-th row and j-th column of the matrix m in-
# place.  The matrix must be square for this operation to be possible.
# 
#   Returns: Cint
function gsl_matrix_swap_rowcol(i::Integer, j::Integer)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_swap_rowcol, :libgsl), Cint,
        (Ptr{gsl_matrix}, Csize_t, Csize_t), m, i, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)[1]
end
@vectorize_2arg Number gsl_matrix_swap_rowcol


# This function makes the matrix dest the transpose of the matrix src by
# copying the elements of src into dest.  This function works for all matrices
# provided that the dimensions of the matrix dest match the transposed
# dimensions of the matrix src.
# 
#   Returns: Cint
function gsl_matrix_transpose_memcpy(src::Ptr{gsl_matrix})
    dest = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_transpose_memcpy, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}), dest, src )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(dest)[1]
end


# This function replaces the matrix m by its transpose by copying the elements
# of the matrix in-place.  The matrix must be square for this operation to be
# possible.
# 
#   Returns: Cint
function gsl_matrix_transpose()
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_transpose, :libgsl), Cint,
        (Ptr{gsl_matrix}, ), m )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)[1]
end
