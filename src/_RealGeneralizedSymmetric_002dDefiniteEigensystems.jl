#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 15.4 Real Generalized Symmetric-Definite Eigensystems #
#########################################################
export gsl_eigen_gensymm_alloc, gsl_eigen_gensymm_free, gsl_eigen_gensymm,
       gsl_eigen_gensymmv_alloc, gsl_eigen_gensymmv_free, gsl_eigen_gensymmv


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues of n-by-n real
# generalized symmetric-definite eigensystems. The size of the workspace is
# O(2n).
# 
### #   Returns: Ptr{gsl_eigen_gensymm_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_gensymm_workspace}
### function gsl_eigen_gensymm_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_gensymm_alloc, "libgsl"),
###         Ptr{gsl_eigen_gensymm_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_gensymm_workspace}
### function gsl_eigen_gensymm_free (w::Ptr{gsl_eigen_gensymm_workspace})
###     ccall( (:gsl_eigen_gensymm_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_gensymm_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues of the real generalized symmetric-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type w::Ptr{gsl_eigen_gensymm_workspace}
### function gsl_eigen_gensymm (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, eval::Ptr{gsl_vector}, w::Ptr{gsl_eigen_gensymm_workspace})
###     ccall( (:gsl_eigen_gensymm, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_eigen_gensymm_workspace}), A,
###         B, eval, w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real generalized symmetric-definite eigensystems. The
# size of the workspace is O(4n).
# 
### #   Returns: Ptr{gsl_eigen_gensymmv_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_gensymmv_workspace}
### function gsl_eigen_gensymmv_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_gensymmv_alloc, "libgsl"),
###         Ptr{gsl_eigen_gensymmv_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_gensymmv_workspace}
### function gsl_eigen_gensymmv_free (w::Ptr{gsl_eigen_gensymmv_workspace})
###     ccall( (:gsl_eigen_gensymmv_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_gensymmv_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues and eigenvectors of the real
# generalized symmetric-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector}
### #XXX Unknown input type evec::Ptr{gsl_matrix}
### #XXX Unknown input type w::Ptr{gsl_eigen_gensymmv_workspace}
### function gsl_eigen_gensymmv (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, eval::Ptr{gsl_vector}, evec::Ptr{gsl_matrix}, w::Ptr{gsl_eigen_gensymmv_workspace})
###     ccall( (:gsl_eigen_gensymmv, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix},
###         Ptr{gsl_eigen_gensymmv_workspace}), A, B, eval, evec, w )
### end