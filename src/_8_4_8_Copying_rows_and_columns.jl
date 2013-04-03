#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 8.4.8 Copying rows and columns #
##################################
export matrix_get_row, matrix_get_col, matrix_set_row, matrix_set_col


# This function copies the elements of the i-th row of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# row.
# 
#   Returns: Cint
function matrix_get_row(m::Ptr{gsl_matrix}, i::Integer)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_matrix_get_row, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_matrix}, Csize_t), v, m, i )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)
end


# This function copies the elements of the j-th column of the matrix m into the
# vector v.  The length of the vector must be the same as the length of the
# column.
# 
#   Returns: Cint
function matrix_get_col(m::Ptr{gsl_matrix}, j::Integer)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_matrix_get_col, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_matrix}, Csize_t), v, m, j )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)
end


# This function copies the elements of the vector v into the i-th row of the
# matrix m.  The length of the vector must be the same as the length of the
# row.
# 
#   Returns: Cint
function matrix_set_row(i::Integer, v::Ptr{gsl_vector})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_matrix_set_row, :libgsl), Cint, (Ptr{gsl_matrix},
        Csize_t, Ptr{gsl_vector}), m, i, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(m)
end


# This function copies the elements of the vector v into the j-th column of the
# matrix m.  The length of the vector must be the same as the length of the
# column.
# 
#   Returns: Cint
function matrix_set_col(j::Integer, v::Ptr{gsl_vector})
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_matrix_set_col, :libgsl), Cint, (Ptr{gsl_matrix},
        Csize_t, Ptr{gsl_vector}), m, j, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(m)
end
