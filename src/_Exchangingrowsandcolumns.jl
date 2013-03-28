#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 8.4.9 Exchanging rows and columns #
#####################################
export gsl_matrix_swap_rows, gsl_matrix_swap_columns, gsl_matrix_swap_rowcol,
       gsl_matrix_transpose_memcpy, gsl_matrix_transpose


### Function uses unknown type; disabled
### # This function exchanges the i-th and j-th rows of the matrix m in-place.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_swap_rows (m::Ptr{gsl_matrix}, i::Csize_t, j::Csize_t)
###     ccall( (:gsl_matrix_swap_rows, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Csize_t, Csize_t), m, i, j )
### end


### Function uses unknown type; disabled
### # This function exchanges the i-th and j-th columns of the matrix m in-place.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_swap_columns (m::Ptr{gsl_matrix}, i::Csize_t, j::Csize_t)
###     ccall( (:gsl_matrix_swap_columns, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Csize_t, Csize_t), m, i, j )
### end


### Function uses unknown type; disabled
### # This function exchanges the i-th row and j-th column of the matrix m in-
# place.  The matrix must be square for this operation to be possible.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_swap_rowcol (m::Ptr{gsl_matrix}, i::Csize_t, j::Csize_t)
###     ccall( (:gsl_matrix_swap_rowcol, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Csize_t, Csize_t), m, i, j )
### end


### Function uses unknown type; disabled
### # This function makes the matrix dest the transpose of the matrix src by
# copying the elements of src into dest.  This function works for all matrices
# provided that the dimensions of the matrix dest match the transposed
# dimensions of the matrix src.
# 
### #   Returns: Cint
### #XXX Unknown input type dest::Ptr{gsl_matrix}
### #XXX Unknown input type src::Ptr{gsl_matrix}
### function gsl_matrix_transpose_memcpy (dest::Ptr{gsl_matrix}, src::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_transpose_memcpy, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, Ptr{gsl_matrix}), dest, src )
### end


### Function uses unknown type; disabled
### # This function replaces the matrix m by its transpose by copying the elements
# of the matrix in-place.  The matrix must be square for this operation to be
# possible.
# 
### #   Returns: Cint
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_transpose (m::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_transpose, "libgsl"), Cint, (Ptr{gsl_matrix}, ), m
###         )
### end