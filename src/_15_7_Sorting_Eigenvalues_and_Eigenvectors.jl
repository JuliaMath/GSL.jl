#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 15.7 Sorting Eigenvalues and Eigenvectors #
#############################################
export eigen_symmv_sort, eigen_symmv_sort, eigen_symmv_sort, eigen_symmv_sort,
       eigen_hermv_sort, eigen_nonsymmv_sort, eigen_gensymmv_sort,
       eigen_genhermv_sort, eigen_genv_sort


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding real eigenvectors stored in the columns of the matrix
# evec into ascending or descending order according to the value of the
# parameter sort_type,             GSL_EIGEN_SORT_VAL_ASCascending order in
# numerical value GSL_EIGEN_SORT_VAL_DESCdescending order in numerical value
# GSL_EIGEN_SORT_ABS_ASCascending order in magnitude
# GSL_EIGEN_SORT_ABS_DESCdescending order in magnitude
# 
#   Returns: Cint
function eigen_symmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_eigen_symmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec,
        sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_symmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_eigen_symmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec,
        sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_symmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_eigen_symmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec,
        sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_symmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_eigen_symmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec,
        sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_hermv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_eigen_hermv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix_complex}, gsl_eigen_sort_t), eval,
        evec, sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.  Only GSL_EIGEN_SORT_ABS_ASC and
# GSL_EIGEN_SORT_ABS_DESC are supported due to the eigenvalues being complex.
# 
#   Returns: Cint
function eigen_nonsymmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_eigen_nonsymmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}, gsl_eigen_sort_t),
        eval, evec, sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding real eigenvectors stored in the columns of the matrix
# evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_gensymmv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_eigen_gensymmv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix}, gsl_eigen_sort_t), eval, evec,
        sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vector eval
# and the corresponding complex eigenvectors stored in the columns of the
# matrix evec into ascending or descending order according to the value of the
# parameter sort_type as shown above.
# 
#   Returns: Cint
function eigen_genhermv_sort(sort_type::gsl_eigen_sort_t)
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_eigen_genhermv_sort, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_matrix_complex}, gsl_eigen_sort_t), eval,
        evec, sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(eval)[1] ,unsafe_ref(evec)[1]
end


# This function simultaneously sorts the eigenvalues stored in the vectors
# (alpha, beta) and the corresponding complex eigenvectors stored in the
# columns of the matrix evec into ascending or descending order according to
# the value of the parameter sort_type as shown above. Only
# GSL_EIGEN_SORT_ABS_ASC and GSL_EIGEN_SORT_ABS_DESC are supported due to the
# eigenvalues being complex.
# 
#   Returns: Cint
function eigen_genv_sort(sort_type::gsl_eigen_sort_t)
    alpha = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    beta = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_eigen_genv_sort, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_vector}, Ptr{gsl_matrix_complex},
        gsl_eigen_sort_t), alpha, beta, evec, sort_type )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(alpha)[1] ,unsafe_ref(beta)[1] ,unsafe_ref(evec)[1]
end
