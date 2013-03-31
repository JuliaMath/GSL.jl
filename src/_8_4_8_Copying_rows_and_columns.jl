#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 8.4.8 Copying rows and columns #
##################################
export gsl_matrix_get_row, gsl_matrix_get_col, gsl_matrix_set_row,
       gsl_matrix_set_col


# This function copies the elements of the i-th row of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# row.
# 
#   Returns: Cint
function gsl_matrix_get_row{gsl_int<:Integer}(m::Ptr{gsl_matrix}, i::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_matrix_get_row, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, Csize_t), v, m, i )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)
end


# This function copies the elements of the j-th column of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# column.
# 
#   Returns: Cint
function gsl_matrix_get_col{gsl_int<:Integer}(m::Ptr{gsl_matrix}, j::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_matrix_get_col, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, Csize_t), v, m, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)
end


# This function copies the elements of the vector v into the i-th row of the
# matrix m.  The length of the vector must be the same as the length of the
# row.
# 
#   Returns: Cint
function gsl_matrix_set_row{gsl_int<:Integer}(i::gsl_int, v::Ptr{gsl_vector})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_set_row, :libgsl), Cint,
        (Ptr{gsl_matrix}, Csize_t, Ptr{gsl_vector}), m, i, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)
end


# This function copies the elements of the vector v into the j-th column of the
# matrix m.  The length of the vector must be the same as the length of the
# column.
# 
#   Returns: Cint
function gsl_matrix_set_col{gsl_int<:Integer}(j::gsl_int, v::Ptr{gsl_vector})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_set_col, :libgsl), Cint,
        (Ptr{gsl_matrix}, Csize_t, Ptr{gsl_vector}), m, j, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m)
end
