#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 15.3 Real Nonsymmetric Matrices #
###################################
export gsl_eigen_nonsymm_alloc, gsl_eigen_nonsymm_free,
       gsl_eigen_nonsymm_params, gsl_eigen_nonsymm, gsl_eigen_nonsymm_Z,
       gsl_eigen_nonsymmv_alloc, gsl_eigen_nonsymmv_free,
       gsl_eigen_nonsymmv_params, gsl_eigen_nonsymmv, gsl_eigen_nonsymmv_Z


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues of n-by-n real
# nonsymmetric matrices. The size of the workspace is O(2n).
# 
### #   Returns: Ptr{gsl_eigen_nonsymm_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymm_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_nonsymm_alloc, "libgsl"),
###         Ptr{gsl_eigen_nonsymm_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymm_free (w::Ptr{gsl_eigen_nonsymm_workspace})
###     ccall( (:gsl_eigen_nonsymm_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_nonsymm_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function sets some parameters which determine how the eigenvalue problem
# is solved in subsequent calls to gsl_eigen_nonsymm.          If compute_t is
# set to 1, the full Schur form T will be computed by gsl_eigen_nonsymm. If it
# is set to 0, T will not be computed (this is the default setting). Computing
# the full Schur form T requires approximately 1.5–2 times the number of flops.
# If balance is set to 1, a balancing transformation is applied to the matrix
# prior to computing eigenvalues. This transformation is designed to make the
# rows and columns of the matrix have comparable norms, and can result in more
# accurate eigenvalues for matrices whose entries vary widely in magnitude. See
# Balancing for more information. Note that the balancing transformation does
# not preserve the orthogonality of the Schur vectors, so if you wish to
# compute the Schur vectors with gsl_eigen_nonsymm_Z you will obtain the Schur
# vectors of the balanced matrix instead of the original matrix. The
# relationship will be                 T = Q^t D^(-1) A D Q  where Q is the
# matrix of Schur vectors for the balanced matrix, and D is the balancing
# transformation. Then gsl_eigen_nonsymm_Z will compute a matrix Z which
# satisfies                 T = Z^(-1) A Z  with Z = D Q. Note that Z will not
# be orthogonal. For this reason, balancing is not performed by default.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymm_params (compute_t::Cint, balance::Cint, w::Ptr{gsl_eigen_nonsymm_workspace})
###     ccall( (:gsl_eigen_nonsymm_params, "libgsl"), Void, (Cint, Cint,
###         Ptr{gsl_eigen_nonsymm_workspace}), compute_t, balance, w )
### end


### Function uses unknown type; disabled
### # This function computes the eigenvalues of the real nonsymmetric matrix A and
# stores them in the vector eval. If T is desired, it is stored in the upper
# portion of A on output.  Otherwise, on output, the diagonal of A will contain
# the 1-by-1 real eigenvalues and 2-by-2 complex conjugate eigenvalue systems,
# and the rest of A is destroyed. In rare cases, this function may fail to find
# all eigenvalues. If this happens, an error code is returned and the number of
# converged eigenvalues is stored in w->n_evals.  The converged eigenvalues are
# stored in the beginning of eval.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector_complex}
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymm (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector_complex}, w::Ptr{gsl_eigen_nonsymm_workspace})
###     ccall( (:gsl_eigen_nonsymm, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector_complex}, Ptr{gsl_eigen_nonsymm_workspace}), A, eval, w
###         )
### end


### Function uses unknown type; disabled
### # This function is identical to gsl_eigen_nonsymm except that it also computes
# the Schur vectors and stores them into Z.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector_complex}
### #XXX Unknown input type Z::Ptr{gsl_matrix}
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymm_Z (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector_complex}, Z::Ptr{gsl_matrix}, w::Ptr{gsl_eigen_nonsymm_workspace})
###     ccall( (:gsl_eigen_nonsymm_Z, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector_complex}, Ptr{gsl_matrix},
###         Ptr{gsl_eigen_nonsymm_workspace}), A, eval, Z, w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real nonsymmetric matrices. The size of the workspace
# is O(5n).
# 
### #   Returns: Ptr{gsl_eigen_nonsymmv_workspace}
### #XXX Unknown output type Ptr{gsl_eigen_nonsymmv_workspace}
### function gsl_eigen_nonsymmv_alloc (n::Csize_t)
###     ccall( (:gsl_eigen_nonsymmv_alloc, "libgsl"),
###         Ptr{gsl_eigen_nonsymmv_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymmv_workspace}
### function gsl_eigen_nonsymmv_free (w::Ptr{gsl_eigen_nonsymmv_workspace})
###     ccall( (:gsl_eigen_nonsymmv_free, "libgsl"), Void,
###         (Ptr{gsl_eigen_nonsymmv_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function sets parameters which determine how the eigenvalue problem is
# solved in subsequent calls to gsl_eigen_nonsymmv.  If balance is set to 1, a
# balancing transformation is applied to the matrix. See
# gsl_eigen_nonsymm_params for more information.  Balancing is turned off by
# default since it does not preserve the orthogonality of the Schur vectors.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymm_workspace}
### function gsl_eigen_nonsymmv_params (balance::Cint, w::Ptr{gsl_eigen_nonsymm_workspace})
###     ccall( (:gsl_eigen_nonsymmv_params, "libgsl"), Void, (Cint,
###         Ptr{gsl_eigen_nonsymm_workspace}), balance, w )
### end


### Function uses unknown type; disabled
### # This function computes eigenvalues and right eigenvectors of the n-by-n real
# nonsymmetric matrix A. It first calls gsl_eigen_nonsymm to compute the
# eigenvalues, Schur form T, and Schur vectors. Then it finds eigenvectors of T
# and backtransforms them using the Schur vectors. The Schur vectors are
# destroyed in the process, but can be saved by using gsl_eigen_nonsymmv_Z. The
# computed eigenvectors are normalized to have unit magnitude. On output, the
# upper portion of A contains the Schur form T. If gsl_eigen_nonsymm fails, no
# eigenvectors are computed, and an error code is returned.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector_complex}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymmv_workspace}
### function gsl_eigen_nonsymmv (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector_complex}, evec::Ptr{gsl_matrix_complex}, w::Ptr{gsl_eigen_nonsymmv_workspace})
###     ccall( (:gsl_eigen_nonsymmv, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex},
###         Ptr{gsl_eigen_nonsymmv_workspace}), A, eval, evec, w )
### end


### Function uses unknown type; disabled
### # This function is identical to gsl_eigen_nonsymmv except that it also saves
# the Schur vectors into Z.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type eval::Ptr{gsl_vector_complex}
### #XXX Unknown input type evec::Ptr{gsl_matrix_complex}
### #XXX Unknown input type Z::Ptr{gsl_matrix}
### #XXX Unknown input type w::Ptr{gsl_eigen_nonsymmv_workspace}
### function gsl_eigen_nonsymmv_Z (A::Ptr{gsl_matrix}, eval::Ptr{gsl_vector_complex}, evec::Ptr{gsl_matrix_complex}, Z::Ptr{gsl_matrix}, w::Ptr{gsl_eigen_nonsymmv_workspace})
###     ccall( (:gsl_eigen_nonsymmv_Z, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}, Ptr{gsl_matrix},
###         Ptr{gsl_eigen_nonsymmv_workspace}), A, eval, evec, Z, w )
### end