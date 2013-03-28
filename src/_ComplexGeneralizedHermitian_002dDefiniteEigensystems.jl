#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################################
# 15.5 Complex Generalized Hermitian-Definite Eigensystems #
############################################################
export gsl_eigen_genherm_alloc, gsl_eigen_genherm_free, gsl_eigen_genherm,
       gsl_eigen_genhermv_alloc, gsl_eigen_genhermv_free, gsl_eigen_genhermv


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues of n-by-n
# complex generalized hermitian-definite eigensystems. The size of the
# workspace is O(3n).
# 
### #   Returns: Ptr{gsl_eigen_genherm_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_genherm_workspace}
### function gsl_eigen_genherm_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_genherm_alloc, "libgsl"),
###         Ptr{gsl_eigen_genherm_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_genherm_workspace}
### function gsl_eigen_genherm_free (w::Ptr{gsl_eigen_genherm_workspace})
###     ccall( (:gsl_eigen_genherm_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_genherm_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues of the complex generalized hermitian-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type w::Ptr{gsl_eigen_genherm_workspace}
### function gsl_eigen_genherm (A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, eval::Ptr{gsl_vector}, w::Ptr{gsl_eigen_genherm_workspace})
###     ccall( (:gsl_eigen_genherm, "libgsl"), Cint, (Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}, Ptr{gsl_vector},
###         Ptr{gsl_eigen_genherm_workspace}), A, B, eval, w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex generalized hermitian-definite eigensystems.
# The size of the workspace is O(5n).
# 
### #   Returns: Ptr{gsl_eigen_genhermv_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_genhermv_workspace}
### function gsl_eigen_genhermv_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_genhermv_alloc, "libgsl"),
###         Ptr{gsl_eigen_genhermv_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_genhermv_workspace}
### function gsl_eigen_genhermv_free (w::Ptr{gsl_eigen_genhermv_workspace})
###     ccall( (:gsl_eigen_genhermv_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_genhermv_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues and eigenvectors of the complex
# generalized hermitian-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type w::Ptr{gsl_eigen_genhermv_workspace}
### function gsl_eigen_genhermv (A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix_complex}, w::Ptr{gsl_eigen_genhermv_workspace})
###     ccall( (:gsl_eigen_genhermv, "libgsl"), Cint, (Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_matrix_complex},
###         Ptr{gsl_eigen_genhermv_workspace}), A, B, eval, evec, w )
### end