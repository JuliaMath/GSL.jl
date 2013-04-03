#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 15.1 Real Symmetric Matrices #
################################
export eigen_symm_alloc, eigen_symm_free, eigen_symm, eigen_symmv_alloc,
       eigen_symmv_free, eigen_symmv


# This function allocates a workspace for computing eigenvalues of n-by-n real
# symmetric matrices.  The size of the workspace is O(2n).
# 
#   Returns: Ptr{gsl_eigen_symm_workspace}
function eigen_symm_alloc(n::Integer)
    ccall( (:gsl_eigen_symm_alloc, :libgsl), Ptr{gsl_eigen_symm_workspace},
        (Csize_t, ), n )
end
@vectorize_1arg Number eigen_symm_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_symm_free(w::Ptr{gsl_eigen_symm_workspace})
    ccall( (:gsl_eigen_symm_free, :libgsl), Void,
        (Ptr{gsl_eigen_symm_workspace}, ), w )
end


# This function computes the eigenvalues of the real symmetric matrix A.
# Additional workspace of the appropriate size must be provided in w.  The
# diagonal and lower triangular part of A are destroyed during the computation,
# but the strict upper triangular part is not referenced.  The eigenvalues are
# stored in the vector eval and are unordered.
# 
#   Returns: Cint
function eigen_symm()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_eigen_symm_workspace}, Array(gsl_eigen_symm_workspace, 1))
    errno = ccall( (:gsl_eigen_symm, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_eigen_symm_workspace}), A, eval, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A) ,unsafe_ref(eval) ,unsafe_ref(w)
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real symmetric matrices.  The size of the workspace is
# O(4n).
# 
#   Returns: Ptr{gsl_eigen_symmv_workspace}
function eigen_symmv_alloc(n::Integer)
    ccall( (:gsl_eigen_symmv_alloc, :libgsl),
        Ptr{gsl_eigen_symmv_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_symmv_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_symmv_free(w::Ptr{gsl_eigen_symmv_workspace})
    ccall( (:gsl_eigen_symmv_free, :libgsl), Void,
        (Ptr{gsl_eigen_symmv_workspace}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the real symmetric
# matrix A.  Additional workspace of the appropriate size must be provided in
# w.  The diagonal and lower triangular part of A are destroyed during the
# computation, but the strict upper triangular part is not referenced.  The
# eigenvalues are stored in the vector eval and are unordered.  The
# corresponding eigenvectors are stored in the columns of the matrix evec.  For
# example, the eigenvector in the first column corresponds to the first
# eigenvalue.  The eigenvectors are guaranteed to be mutually orthogonal and
# normalised to unit magnitude.
# 
#   Returns: Cint
function eigen_symmv()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_eigen_symmv_workspace}, Array(gsl_eigen_symmv_workspace, 1))
    errno = ccall( (:gsl_eigen_symmv, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_eigen_symmv_workspace}), A,
        eval, evec, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A) ,unsafe_ref(eval) ,unsafe_ref(evec) ,unsafe_ref(w)
end
