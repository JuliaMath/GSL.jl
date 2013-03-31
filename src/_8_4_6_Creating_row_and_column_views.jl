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
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_row{gsl_int<:Integer}(i::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_row, :libgsl), Void, (Ptr{gsl_matrix}, Csize_t), m,
        i )
    return unsafe_ref(m)
end


# These functions return a vector view of the i-th row of the matrix m.  The
# data pointer of the new vector is set to null if i is out of range.
# The function gsl_vector_const_row is equivalent to gsl_matrix_row but can be
# used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_row{gsl_int<:Integer}(m::Ptr{gsl_matrix}, i::gsl_int)
    ccall( (:gsl_matrix_const_row, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t), m, i )
end


# These functions return a vector view of the j-th column of the matrix m.  The
# data pointer of the new vector is set to null if j is out of range.
# The function gsl_vector_const_column is equivalent to gsl_matrix_column but
# can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_column{gsl_int<:Integer}(j::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_column, :libgsl), Void, (Ptr{gsl_matrix}, Csize_t),
        m, j )
    return unsafe_ref(m)
end


# These functions return a vector view of the j-th column of the matrix m.  The
# data pointer of the new vector is set to null if j is out of range.
# The function gsl_vector_const_column is equivalent to gsl_matrix_column but
# can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_column{gsl_int<:Integer}(m::Ptr{gsl_matrix}, j::gsl_int)
    ccall( (:gsl_matrix_const_column, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t), m, j )
end


# These functions return a vector view of the i-th row of the matrix m
# beginning at offset elements past the first column and containing n elements.
# The data pointer of the new vector is set to null if i, offset, or n are out
# of range.          The function gsl_vector_const_subrow is equivalent to
# gsl_matrix_subrow but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_subrow{gsl_int<:Integer}(i::gsl_int, offset::gsl_int, n::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_subrow, :libgsl), Void, (Ptr{gsl_matrix}, Csize_t,
        Csize_t, Csize_t), m, i, offset, n )
    return unsafe_ref(m)
end


# These functions return a vector view of the i-th row of the matrix m
# beginning at offset elements past the first column and containing n elements.
# The data pointer of the new vector is set to null if i, offset, or n are out
# of range.          The function gsl_vector_const_subrow is equivalent to
# gsl_matrix_subrow but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_subrow{gsl_int<:Integer}(m::Ptr{gsl_matrix}, i::gsl_int, offset::gsl_int, n::gsl_int)
    ccall( (:gsl_matrix_const_subrow, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t, Csize_t, Csize_t), m, i, offset, n )
end


# These functions return a vector view of the j-th column of the matrix m
# beginning at offset elements past the first row and containing n elements.
# The data pointer of the new vector is set to null if j, offset, or n are out
# of range.          The function gsl_vector_const_subcolumn is equivalent to
# gsl_matrix_subcolumn but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_subcolumn{gsl_int<:Integer}(j::gsl_int, offset::gsl_int, n::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_subcolumn, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t, Csize_t, Csize_t), m, j, offset, n )
    return unsafe_ref(m)
end


# These functions return a vector view of the j-th column of the matrix m
# beginning at offset elements past the first row and containing n elements.
# The data pointer of the new vector is set to null if j, offset, or n are out
# of range.          The function gsl_vector_const_subcolumn is equivalent to
# gsl_matrix_subcolumn but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_subcolumn{gsl_int<:Integer}(m::Ptr{gsl_matrix}, j::gsl_int, offset::gsl_int, n::gsl_int)
    ccall( (:gsl_matrix_const_subcolumn, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t, Csize_t, Csize_t), m, j, offset, n )
end


# These functions return a vector view of the diagonal of the matrix m. The
# matrix m is not required to be square. For a rectangular matrix the length of
# the diagonal is the same as the smaller dimension of the matrix.          The
# function gsl_matrix_const_diagonal is equivalent to gsl_matrix_diagonal but
# can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_diagonal()
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_diagonal, :libgsl), Void, (Ptr{gsl_matrix}, ), m )
    return unsafe_ref(m)
end


# These functions return a vector view of the diagonal of the matrix m. The
# matrix m is not required to be square. For a rectangular matrix the length of
# the diagonal is the same as the smaller dimension of the matrix.          The
# function gsl_matrix_const_diagonal is equivalent to gsl_matrix_diagonal but
# can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_diagonal(m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_const_diagonal, :libgsl), Void, (Ptr{gsl_matrix},
        ), m )
end


# These functions return a vector view of the k-th subdiagonal of the matrix m.
# The matrix m is not required to be square.  The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_subdiagonal is
# equivalent to gsl_matrix_subdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_subdiagonal{gsl_int<:Integer}(k::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_subdiagonal, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t), m, k )
    return unsafe_ref(m)
end


# These functions return a vector view of the k-th subdiagonal of the matrix m.
# The matrix m is not required to be square.  The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_subdiagonal is
# equivalent to gsl_matrix_subdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_subdiagonal{gsl_int<:Integer}(m::Ptr{gsl_matrix}, k::gsl_int)
    ccall( (:gsl_matrix_const_subdiagonal, :libgsl), Void,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end


# These functions return a vector view of the k-th superdiagonal of the matrix
# m. The matrix m is not required to be square. The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_superdiagonal is
# equivalent to gsl_matrix_superdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_matrix_superdiagonal{gsl_int<:Integer}(k::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_superdiagonal, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t), m, k )
    return unsafe_ref(m)
end


# These functions return a vector view of the k-th superdiagonal of the matrix
# m. The matrix m is not required to be square. The diagonal of the matrix
# corresponds to k = 0.          The function gsl_matrix_const_superdiagonal is
# equivalent to gsl_matrix_superdiagonal but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_matrix_const_superdiagonal{gsl_int<:Integer}(m::Ptr{gsl_matrix}, k::gsl_int)
    ccall( (:gsl_matrix_const_superdiagonal, :libgsl), Void,
        (Ptr{gsl_matrix}, Csize_t), m, k )
end
