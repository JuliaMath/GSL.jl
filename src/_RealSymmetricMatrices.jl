#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 15.1 Real Symmetric Matrices #
################################
export gsl_eigen_symm_alloc, gsl_eigen_symm_free, gsl_eigen_symm,
       gsl_eigen_symmv_alloc, gsl_eigen_symmv_free, gsl_eigen_symmv


# This function allocates a workspace for computing eigenvalues of n-by-n real
# symmetric matrices.  The size of the workspace is O(2n).
# 
#   Returns: Ptr{gsl_eigen_symm_workspace}
function gsl_eigen_symm_alloc (n::Csize_t)
    ccall( (:gsl_eigen_symm_alloc, "libgsl"),
        Ptr{gsl_eigen_symm_workspace}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_eigen_symm_free (w::Ptr{gsl_eigen_symm_workspace})
    ccall( (:gsl_eigen_symm_free, "libgsl"), Void,
        (Ptr{gsl_eigen_symm_workspace}, ), w )
end


# This function computes the eigenvalues of the real symmetric matrix A.
# Additional workspace of the appropriate size must be provided in w.  The
# diagonal and lower triangular part of A are destroyed during the computation,
# but the strict upper triangular part is not referenced.  The eigenvalues are
# stored in the vector eval and are unordered.
# 
#   Returns: Cint
function gsl_eigen_symm (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector}, w::Ptr{gsl_eigen_symm_workspace})
    ccall( (:gsl_eigen_symm, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_eigen_symm_workspace}), A, eval, w )
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real symmetric matrices.  The size of the workspace is
# O(4n).
# 
#   Returns: Ptr{gsl_eigen_symmv_workspace}
function gsl_eigen_symmv_alloc (n::Csize_t)
    ccall( (:gsl_eigen_symmv_alloc, "libgsl"),
        Ptr{gsl_eigen_symmv_workspace}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_eigen_symmv_free (w::Ptr{gsl_eigen_symmv_workspace})
    ccall( (:gsl_eigen_symmv_free, "libgsl"), Void,
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
function gsl_eigen_symmv (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, w::Ptr{gsl_eigen_symmv_workspace})
    ccall( (:gsl_eigen_symmv, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_eigen_symmv_workspace}), A,
        eval, evec, w )
end