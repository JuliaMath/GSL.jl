#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################
# 8.4.5 Matrix views #
######################
export gsl_matrix_submatrix, gsl_matrix_const_submatrix, gsl_matrix_view_array,
       gsl_matrix_const_view_array, gsl_matrix_view_array_with_tda,
       gsl_matrix_const_view_array_with_tda, gsl_matrix_view_vector,
       gsl_matrix_const_view_vector, gsl_matrix_view_vector_with_tda,
       gsl_matrix_const_view_vector_with_tda












# These functions return a matrix view of a submatrix of the matrix m.  The
# upper-left element of the submatrix is the element (k1,k2) of the original
# matrix.  The submatrix has n1 rows and n2 columns.  The physical number of
# columns in memory given by tda is unchanged.  Mathematically, the (i,j)-th
# element of the new matrix is given by,                 m'(i,j) =
# m->data[(k1*m->tda + k2) + i*m->tda + j]  where the index i runs from 0 to
# n1-1 and the index j runs from 0 to n2-1.          The data pointer of the
# returned matrix struct is set to null if the combined parameters
# (i,j,n1,n2,tda) overrun the ends of the original matrix.          The new
# matrix view is only a view of the block underlying the existing matrix, m.
# The block containing the elements of m is not owned by the new matrix view.
# When the view goes out of scope the original matrix m and its block will
# continue to exist.  The original memory can only be deallocated by freeing
# the original matrix.  Of course, the original matrix should not be
# deallocated while the view is still in use.          The function
# gsl_matrix_const_submatrix is equivalent to gsl_matrix_submatrix but can be
# used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix_view
#XXX Coerced type for output Void
function gsl_matrix_submatrix{gsl_int<:Integer}(k1::gsl_int, k2::gsl_int, n1::gsl_int, n2::gsl_int)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_submatrix, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2 )
    return unsafe_ref(m)
end


# These functions return a matrix view of a submatrix of the matrix m.  The
# upper-left element of the submatrix is the element (k1,k2) of the original
# matrix.  The submatrix has n1 rows and n2 columns.  The physical number of
# columns in memory given by tda is unchanged.  Mathematically, the (i,j)-th
# element of the new matrix is given by,                 m'(i,j) =
# m->data[(k1*m->tda + k2) + i*m->tda + j]  where the index i runs from 0 to
# n1-1 and the index j runs from 0 to n2-1.          The data pointer of the
# returned matrix struct is set to null if the combined parameters
# (i,j,n1,n2,tda) overrun the ends of the original matrix.          The new
# matrix view is only a view of the block underlying the existing matrix, m.
# The block containing the elements of m is not owned by the new matrix view.
# When the view goes out of scope the original matrix m and its block will
# continue to exist.  The original memory can only be deallocated by freeing
# the original matrix.  Of course, the original matrix should not be
# deallocated while the view is still in use.          The function
# gsl_matrix_const_submatrix is equivalent to gsl_matrix_submatrix but can be
# used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix__view
#XXX Coerced type for output Void
function gsl_matrix_const_submatrix{gsl_int<:Integer}(m::Ptr{gsl_matrix}, k1::gsl_int, k2::gsl_int, n1::gsl_int, n2::gsl_int)
    ccall( (:gsl_matrix_const_submatrix, :libgsl), Void, (Ptr{gsl_matrix},
        Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2 )
end


# These functions return a matrix view of the array base.  The matrix has n1
# rows and n2 columns.  The physical number of columns in memory is also given
# by n2.  Mathematically, the (i,j)-th element of the new matrix is given by,
# m'(i,j) = base[i*n2 + j]  where the index i runs from 0 to n1-1 and the index
# j runs from 0 to n2-1.          The new matrix is only a view of the array
# base.  When the view goes out of scope the original array base will continue
# to exist.  The original memory can only be deallocated by freeing the
# original array.  Of course, the original array should not be deallocated
# while the view is still in use.          The function
# gsl_matrix_const_view_array is equivalent to gsl_matrix_view_array but can be
# used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix_view
#XXX Coerced type for output Void
function gsl_matrix_view_array{gsl_int<:Integer}(n1::gsl_int, n2::gsl_int)
    base = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_matrix_view_array, :libgsl), Void, (Ptr{Cdouble}, Csize_t,
        Csize_t), base, n1, n2 )
    return unsafe_ref(base)
end


# These functions return a matrix view of the array base.  The matrix has n1
# rows and n2 columns.  The physical number of columns in memory is also given
# by n2.  Mathematically, the (i,j)-th element of the new matrix is given by,
# m'(i,j) = base[i*n2 + j]  where the index i runs from 0 to n1-1 and the index
# j runs from 0 to n2-1.          The new matrix is only a view of the array
# base.  When the view goes out of scope the original array base will continue
# to exist.  The original memory can only be deallocated by freeing the
# original array.  Of course, the original array should not be deallocated
# while the view is still in use.          The function
# gsl_matrix_const_view_array is equivalent to gsl_matrix_view_array but can be
# used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix__view
#XXX Coerced type for output Void
function gsl_matrix_const_view_array{gsl_int<:Integer}(base::Ptr{Cdouble}, n1::gsl_int, n2::gsl_int)
    ccall( (:gsl_matrix_const_view_array, :libgsl), Void, (Ptr{Cdouble},
        Csize_t, Csize_t), base, n1, n2 )
end


# These functions return a matrix view of the array base with a physical number
# of columns tda which may differ from the corresponding dimension of the
# matrix.  The matrix has n1 rows and n2 columns, and the physical number of
# columns in memory is given by tda.  Mathematically, the (i,j)-th element of
# the new matrix is given by,                 m'(i,j) = base[i*tda + j]  where
# the index i runs from 0 to n1-1 and the index j runs from 0 to n2-1.
# The new matrix is only a view of the array base.  When the view goes out of
# scope the original array base will continue to exist.  The original memory
# can only be deallocated by freeing the original array.  Of course, the
# original array should not be deallocated while the view is still in use.
# The function gsl_matrix_const_view_array_with_tda is equivalent to
# gsl_matrix_view_array_with_tda but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix_view
#XXX Coerced type for output Void
function gsl_matrix_view_array_with_tda{gsl_int<:Integer}(n1::gsl_int, n2::gsl_int, tda::gsl_int)
    base = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_matrix_view_array_with_tda, :libgsl), Void, (Ptr{Cdouble},
        Csize_t, Csize_t, Csize_t), base, n1, n2, tda )
    return unsafe_ref(base)
end


# These functions return a matrix view of the array base with a physical number
# of columns tda which may differ from the corresponding dimension of the
# matrix.  The matrix has n1 rows and n2 columns, and the physical number of
# columns in memory is given by tda.  Mathematically, the (i,j)-th element of
# the new matrix is given by,                 m'(i,j) = base[i*tda + j]  where
# the index i runs from 0 to n1-1 and the index j runs from 0 to n2-1.
# The new matrix is only a view of the array base.  When the view goes out of
# scope the original array base will continue to exist.  The original memory
# can only be deallocated by freeing the original array.  Of course, the
# original array should not be deallocated while the view is still in use.
# The function gsl_matrix_const_view_array_with_tda is equivalent to
# gsl_matrix_view_array_with_tda but can be used for matrices which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix__view
#XXX Coerced type for output Void
function gsl_matrix_const_view_array_with_tda{gsl_int<:Integer}(base::Ptr{Cdouble}, n1::gsl_int, n2::gsl_int, tda::gsl_int)
    ccall( (:gsl_matrix_const_view_array_with_tda, :libgsl), Void,
        (Ptr{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda )
end


# These functions return a matrix view of the vector v.  The matrix has n1 rows
# and n2 columns. The vector must have unit stride. The physical number of
# columns in memory is also given by n2.  Mathematically, the (i,j)-th element
# of the new matrix is given by,                 m'(i,j) = v->data[i*n2 + j]
# where the index i runs from 0 to n1-1 and the index j runs from 0 to n2-1.
# The new matrix is only a view of the vector v.  When the view goes out of
# scope the original vector v will continue to exist.  The original memory can
# only be deallocated by freeing the original vector.  Of course, the original
# vector should not be deallocated while the view is still in use.          The
# function gsl_matrix_const_view_vector is equivalent to gsl_matrix_view_vector
# but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix_view
#XXX Coerced type for output Void
function gsl_matrix_view_vector{gsl_int<:Integer}(n1::gsl_int, n2::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_matrix_view_vector, :libgsl), Void, (Ptr{gsl_vector},
        Csize_t, Csize_t), v, n1, n2 )
    return unsafe_ref(v)
end


# These functions return a matrix view of the vector v.  The matrix has n1 rows
# and n2 columns. The vector must have unit stride. The physical number of
# columns in memory is also given by n2.  Mathematically, the (i,j)-th element
# of the new matrix is given by,                 m'(i,j) = v->data[i*n2 + j]
# where the index i runs from 0 to n1-1 and the index j runs from 0 to n2-1.
# The new matrix is only a view of the vector v.  When the view goes out of
# scope the original vector v will continue to exist.  The original memory can
# only be deallocated by freeing the original vector.  Of course, the original
# vector should not be deallocated while the view is still in use.          The
# function gsl_matrix_const_view_vector is equivalent to gsl_matrix_view_vector
# but can be used for matrices which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix__view
#XXX Coerced type for output Void
function gsl_matrix_const_view_vector{gsl_int<:Integer}(v::Ptr{gsl_vector}, n1::gsl_int, n2::gsl_int)
    ccall( (:gsl_matrix_const_view_vector, :libgsl), Void,
        (Ptr{gsl_vector}, Csize_t, Csize_t), v, n1, n2 )
end


# These functions return a matrix view of the vector v with a physical number
# of columns tda which may differ from the corresponding matrix dimension.  The
# vector must have unit stride. The matrix has n1 rows and n2 columns, and the
# physical number of columns in memory is given by tda.  Mathematically, the
# (i,j)-th element of the new matrix is given by,                 m'(i,j) =
# v->data[i*tda + j]  where the index i runs from 0 to n1-1 and the index j
# runs from 0 to n2-1.          The new matrix is only a view of the vector v.
# When the view goes out of scope the original vector v will continue to exist.
# The original memory can only be deallocated by freeing the original vector.
# Of course, the original vector should not be deallocated while the view is
# still in use.          The function gsl_matrix_const_view_vector_with_tda is
# equivalent to gsl_matrix_view_vector_with_tda but can be used for matrices
# which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix_view
#XXX Coerced type for output Void
function gsl_matrix_view_vector_with_tda{gsl_int<:Integer}(n1::gsl_int, n2::gsl_int, tda::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_matrix_view_vector_with_tda, :libgsl), Void,
        (Ptr{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda )
    return unsafe_ref(v)
end


# These functions return a matrix view of the vector v with a physical number
# of columns tda which may differ from the corresponding matrix dimension.  The
# vector must have unit stride. The matrix has n1 rows and n2 columns, and the
# physical number of columns in memory is given by tda.  Mathematically, the
# (i,j)-th element of the new matrix is given by,                 m'(i,j) =
# v->data[i*tda + j]  where the index i runs from 0 to n1-1 and the index j
# runs from 0 to n2-1.          The new matrix is only a view of the vector v.
# When the view goes out of scope the original vector v will continue to exist.
# The original memory can only be deallocated by freeing the original vector.
# Of course, the original vector should not be deallocated while the view is
# still in use.          The function gsl_matrix_const_view_vector_with_tda is
# equivalent to gsl_matrix_view_vector_with_tda but can be used for matrices
# which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_matrix__view
#XXX Coerced type for output Void
function gsl_matrix_const_view_vector_with_tda{gsl_int<:Integer}(v::Ptr{gsl_vector}, n1::gsl_int, n2::gsl_int, tda::gsl_int)
    ccall( (:gsl_matrix_const_view_vector_with_tda, :libgsl), Void,
        (Ptr{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda )
end
