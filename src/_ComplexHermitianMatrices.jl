#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 15.2 Complex Hermitian Matrices #
###################################
export gsl_eigen_herm_alloc, gsl_eigen_herm_free, gsl_eigen_herm,
       gsl_eigen_hermv_alloc, gsl_eigen_hermv_free, gsl_eigen_hermv


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues of n-by-n
# complex hermitian matrices.  The size of the workspace is O(3n).
# 
### #   Returns: Ptr{gsl_eigen_herm_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_herm_workspace}
### function gsl_eigen_herm_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_herm_alloc, "libgsl"),
###         Ptr{gsl_eigen_herm_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_herm_workspace}
### function gsl_eigen_herm_free (w::Ptr{gsl_eigen_herm_workspace})
###     ccall( (:gsl_eigen_herm_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_herm_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues of the complex hermitian matrix A.
# Additional workspace of the appropriate size must be provided in w.  The
# diagonal and lower triangular part of A are destroyed during the computation,
# but the strict upper triangular part is not referenced.  The imaginary parts
# of the diagonal are assumed to be zero and are not referenced. The
# eigenvalues are stored in the vector eval and are unordered.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type w::Ptr{gsl_eigen_herm_workspace}
### function gsl_eigen_herm (A::Ptr{gsl_matrix_complex}, eval::Ptr{gsl_vector}, w::Ptr{gsl_eigen_herm_workspace})
###     ccall( (:gsl_eigen_herm, "libgsl"), Cint, (Ptr{gsl_matrix_complex},
###         Ptr{gsl_vector}, Ptr{gsl_eigen_herm_workspace}), A, eval, w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex hermitian matrices.  The size of the workspace
# is O(5n).
# 
### #   Returns: Ptr{gsl_eigen_hermv_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_hermv_workspace}
### function gsl_eigen_hermv_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_hermv_alloc, "libgsl"),
###         Ptr{gsl_eigen_hermv_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_hermv_workspace}
### function gsl_eigen_hermv_free (w::Ptr{gsl_eigen_hermv_workspace})
###     ccall( (:gsl_eigen_hermv_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_hermv_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues and eigenvectors of the complex
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
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type w::Ptr{gsl_eigen_hermv_workspace}
### function gsl_eigen_hermv (A::Ptr{gsl_matrix_complex}, eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix_complex}, w::Ptr{gsl_eigen_hermv_workspace})
###     ccall( (:gsl_eigen_hermv, "libgsl"), Cint, (Ptr{gsl_matrix_complex},
###         Ptr{gsl_vector}, Ptr{gsl_matrix_complex},
###         Ptr{gsl_eigen_hermv_workspace}), A, eval, evec, w )
### end