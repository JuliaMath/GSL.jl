#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 8.4.6 Creating row and column views #
#######################################
export gsl_matrix_row, gsl_matrix_const_row, gsl_matrix_column,
       gsl_matrix_const_column, gsl_matrix_subrow, gsl_matrix_const_subrow,
       gsl_matrix_subcolumn, gsl_matrix_const_subcolumn, gsl_matrix_diagonal,
       gsl_matrix_const_diagonal, gsl_matrix_subdiagonal,
       gsl_matrix_const_subdiagonal, gsl_matrix_superdiagonal,
       gsl_matrix_const_superdiagonal


# These functions return a vector view of the i-th row of the matrix m.  The
# data pointer of the new vector is set to null if i is out of range.
# The function gsl_vector_const_row is equivalent to gsl_matrix_row but can be
# used for matrices which are declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_row(m::Ptr{gsl_matrix}, i::Integer)
    ccall( (:gsl_matrix_row, :libgsl), gsl_vector_view, (Ptr{gsl_matrix},
        Csize_t), m, i )
end


# These functions return a vector view of the i-th row of the matrix m.  The
# data pointer of the new vector is set to null if i is out of range.
# The function gsl_vector_const_row is equivalent to gsl_matrix_row but can be
# used for matrices which are declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_row(m::Ptr{gsl_matrix}, i::Integer)
    ccall( (:gsl_matrix_const_row, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t), m, i )
end


# These functions return a vector view of the j-th column of the matrix m.  The
# data pointer of the new vector is set to null if j is out of range.
# The function gsl_vector_const_column is equivalent to gsl_matrix_column but
# can be used for matrices which are declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_column(m::Ptr{gsl_matrix}, j::Integer)
    ccall( (:gsl_matrix_column, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, Csize_t), m, j )
end


# These functions return a vector view of the j-th column of the matrix m.  The
# data pointer of the new vector is set to null if j is out of range.
# The function gsl_vector_const_column is equivalent to gsl_matrix_column but
# can be used for matrices which are declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_column(m::Ptr{gsl_matrix}, j::Integer)
    ccall( (:gsl_matrix_const_column, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t), m, j )
end


# These functions return a vector view of the i-th row of the matrix m
# beginning at offset elements past the first column and containing n elements.
# The data pointer of the new vector is set to null if i, offset, or n are out
# of range.          The function gsl_vector_const_subrow is equivalent to
# gsl_matrix_subrow but can be used for matrices which are declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_subrow(m::Ptr{gsl_matrix}, i::Integer, offset::Integer, n::Integer)
    ccall( (:gsl_matrix_subrow, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n )
end


# These functions return a vector view of the i-th row of the matrix m
# beginning at offset elements past the first column and containing n elements.
# The data pointer of the new vector is set to null if i, offset, or n are out
# of range.          The function gsl_vector_const_subrow is equivalent to
# gsl_matrix_subrow but can be used for matrices which are declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_subrow(m::Ptr{gsl_matrix}, i::Integer, offset::Integer, n::Integer)
    ccall( (:gsl_matrix_const_subrow, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n )
end


# These functions return a vector view of the j-th column of the matrix m
# beginning at offset elements past the first row and containing n elements.
# The data pointer of the new vector is set to null if j, offset, or n are out
# of range.          The function gsl_vector_const_subcolumn is equivalent to
# gsl_matrix_subcolumn but can be used for matrices which are declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_subcolumn(m::Ptr{gsl_matrix}, j::Integer, offset::Integer, n::Integer)
    ccall( (:gsl_matrix_subcolumn, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n )
end


# These functions return a vector view of the j-th column of the matrix m
# beginning at offset elements past the first row and containing n elements.
# The data pointer of the new vector is set to null if j, offset, or n are out
# of range.          The function gsl_vector_const_subcolumn is equivalent to
# gsl_matrix_subcolumn but can be used for matrices which are declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_subcolumn(m::Ptr{gsl_matrix}, j::Integer, offset::Integer, n::Integer)
    ccall( (:gsl_matrix_const_subcolumn, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n )
end


# These functions return a vector view of the diagonal of the matrix m. The
# matrix m is not required to be square. For a rectangular matrix the length of
# the diagonal is the same as the smaller dimension of the matrix.          The
# function gsl_matrix_const_diagonal is equivalent to gsl_matrix_diagonal but
# can be used for matrices which are declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_diagonal(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_diagonal, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, ), m )
end


# These functions return a vector view of the diagonal of the matrix m. The
# matrix m is not required to be square. For a rectangular matrix the length of
# the diagonal is the same as the smaller dimension of the matrix.          The
# function gsl_matrix_const_diagonal is equivalent to gsl_matrix_diagonal but
# can be used for matrices which are declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_diagonal(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_const_diagonal, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, ), m )
end


# These functions return a vector view of the k-th subdiagonal of the matrix m.
# The matrix m is not required to be square.  The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_subdiagonal is
# equivalent to gsl_matrix_subdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_subdiagonal(m::Ptr{gsl_matrix}, k::Integer)
    ccall( (:gsl_matrix_subdiagonal, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end


# These functions return a vector view of the k-th subdiagonal of the matrix m.
# The matrix m is not required to be square.  The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_subdiagonal is
# equivalent to gsl_matrix_subdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_subdiagonal(m::Ptr{gsl_matrix}, k::Integer)
    ccall( (:gsl_matrix_const_subdiagonal, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end


# These functions return a vector view of the k-th superdiagonal of the matrix
# m. The matrix m is not required to be square. The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_superdiagonal is
# equivalent to gsl_matrix_superdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: gsl_vector_view
function gsl_matrix_superdiagonal(m::Ptr{gsl_matrix}, k::Integer)
    ccall( (:gsl_matrix_superdiagonal, :libgsl), gsl_vector_view,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end


# These functions return a vector view of the k-th superdiagonal of the matrix
# m. The matrix m is not required to be square. The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_superdiagonal is
# equivalent to gsl_matrix_superdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: gsl_vector__view
function gsl_matrix_const_superdiagonal(m::Ptr{gsl_matrix}, k::Integer)
    ccall( (:gsl_matrix_const_superdiagonal, :libgsl), gsl_vector__view,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end
