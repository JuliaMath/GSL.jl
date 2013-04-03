#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 15.2 Complex Hermitian Matrices #
###################################
export eigen_herm_alloc, eigen_herm_free, eigen_herm, eigen_hermv_alloc,
       eigen_hermv_free, eigen_hermv


# This function allocates a workspace for computing eigenvalues of n-by-n
# complex hermitian matrices.  The size of the workspace is O(3n).
# 
#   Returns: Ptr{gsl_eigen_herm_workspace}
function eigen_herm_alloc(n::Integer)
    ccall( (:gsl_eigen_herm_alloc, :libgsl), Ptr{gsl_eigen_herm_workspace},
        (Csize_t, ), n )
end
@vectorize_1arg Number eigen_herm_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_herm_free(w::Ptr{gsl_eigen_herm_workspace})
    ccall( (:gsl_eigen_herm_free, :libgsl), Void,
        (Ptr{gsl_eigen_herm_workspace}, ), w )
end


# This function computes the eigenvalues of the complex hermitian matrix A.
# Additional workspace of the appropriate size must be provided in w.  The
# diagonal and lower triangular part of A are destroyed during the computation,
# but the strict upper triangular part is not referenced.  The imaginary parts
# of the diagonal are assumed to be zero and are not referenced. The
# eigenvalues are stored in the vector eval and are unordered.
# 
#   Returns: Cint
function eigen_herm()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_eigen_herm_workspace}, Array(gsl_eigen_herm_workspace, 1))
    errno = ccall( (:gsl_eigen_herm, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector},
        Ptr{gsl_eigen_herm_workspace}), A, eval, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A) ,unsafe_ref(eval) ,unsafe_ref(w)
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex hermitian matrices.  The size of the workspace
# is O(5n).
# 
#   Returns: Ptr{gsl_eigen_hermv_workspace}
function eigen_hermv_alloc(n::Integer)
    ccall( (:gsl_eigen_hermv_alloc, :libgsl),
        Ptr{gsl_eigen_hermv_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_hermv_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_hermv_free(w::Ptr{gsl_eigen_hermv_workspace})
    ccall( (:gsl_eigen_hermv_free, :libgsl), Void,
        (Ptr{gsl_eigen_hermv_workspace}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the complex
# hermitian matrix A.  Additional workspace of the appropriate size must be
# provided in w.  The diagonal and lower triangular part of A are destroyed
# during the computation, but the strict upper triangular part is not
# referenced. The imaginary parts of the diagonal are assumed to be zero and
# are not referenced.  The eigenvalues are stored in the vector eval and are
# unordered.  The corresponding complex eigenvectors are stored in the columns
# of the matrix evec.  For example, the eigenvector in the first column
# corresponds to the first eigenvalue.  The eigenvectors are guaranteed to be
# mutually orthogonal and normalised to unit magnitude.
# 
#   Returns: Cint
function eigen_hermv()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    w = convert(Ptr{gsl_eigen_hermv_workspace}, Array(gsl_eigen_hermv_workspace, 1))
    errno = ccall( (:gsl_eigen_hermv, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_matrix_complex},
        Ptr{gsl_eigen_hermv_workspace}), A, eval, evec, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A) ,unsafe_ref(eval) ,unsafe_ref(evec) ,unsafe_ref(w)
end
