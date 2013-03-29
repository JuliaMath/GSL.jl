#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################################
# 15.6 Real Generalized Nonsymmetric Eigensystems #
###################################################
export gsl_eigen_gen_alloc, gsl_eigen_gen_free, gsl_eigen_gen_params,
       gsl_eigen_gen, gsl_eigen_gen_QZ, gsl_eigen_genv_alloc,
       gsl_eigen_genv_free, gsl_eigen_genv, gsl_eigen_genv_QZ










# This function allocates a workspace for computing eigenvalues of n-by-n real
# generalized nonsymmetric eigensystems. The size of the workspace is O(n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_gen_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_gen_alloc (n::Csize_t)
    ccall( (:gsl_eigen_gen_alloc, "libgsl"), Ptr{Void}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_gen_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gen_free (w::Ptr{Void})
    ccall( (:gsl_eigen_gen_free, "libgsl"), Void, (Ptr{Void}, ), w )
end


# This function sets some parameters which determine how the eigenvalue problem
# is solved in subsequent calls to gsl_eigen_gen.          If compute_s is set
# to 1, the full Schur form S will be computed by gsl_eigen_gen. If it is set
# to 0, S will not be computed (this is the default setting). S is a quasi
# upper triangular matrix with 1-by-1 and 2-by-2 blocks on its diagonal. 1-by-1
# blocks correspond to real eigenvalues, and 2-by-2 blocks correspond to
# complex eigenvalues.          If compute_t is set to 1, the full Schur form T
# will be computed by gsl_eigen_gen. If it is set to 0, T will not be computed
# (this is the default setting). T is an upper triangular matrix with non-
# negative elements on its diagonal.  Any 2-by-2 blocks in S will correspond to
# a 2-by-2 diagonal block in T.          The balance parameter is currently
# ignored, since generalized balancing is not yet implemented.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_gen_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gen_params (compute_s::Cint, compute_t::Cint, balance::Cint, w::Ptr{Void})
    ccall( (:gsl_eigen_gen_params, "libgsl"), Void, (Cint, Cint, Cint,
        Ptr{Void}), compute_s, compute_t, balance, w )
end


# This function computes the eigenvalues of the real generalized nonsymmetric
# matrix pair (A, B), and stores them as pairs in (alpha, beta), where alpha is
# complex and beta is real. If \beta_i is non-zero, then \lambda = \alpha_i /
# \beta_i is an eigenvalue. Likewise, if \alpha_i is non-zero, then \mu =
# \beta_i / \alpha_i is an eigenvalue of the alternate problem \mu A y = B y.
# The elements of beta are normalized to be non-negative.          If S is
# desired, it is stored in A on output. If T is desired, it is stored in B on
# output. The ordering of eigenvalues in (alpha, beta) follows the ordering of
# the diagonal blocks in the Schur forms S and T. In rare cases, this function
# may fail to find all eigenvalues. If this occurs, an error code is returned.
# 
#   Returns: Cint
#XXX Unknown input type alpha::Ptr{gsl_vector_complex}
#XXX Coerced type for alpha::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_gen_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gen (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, alpha::Ptr{Void}, beta::Ptr{gsl_vector}, w::Ptr{Void})
    ccall( (:gsl_eigen_gen, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{Void}, Ptr{gsl_vector}, Ptr{Void}), A, B, alpha,
        beta, w )
end


# This function is identical to gsl_eigen_gen except that it also computes the
# left and right Schur vectors and stores them into Q and Z respectively.
# 
#   Returns: Cint
#XXX Unknown input type alpha::Ptr{gsl_vector_complex}
#XXX Coerced type for alpha::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_gen_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gen_QZ (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, alpha::Ptr{Void}, beta::Ptr{gsl_vector}, Q::Ptr{gsl_matrix}, Z::Ptr{gsl_matrix}, w::Ptr{Void})
    ccall( (:gsl_eigen_gen_QZ, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{Void}, Ptr{gsl_vector}, Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{Void}), A, B, alpha, beta, Q, Z, w )
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real generalized nonsymmetric eigensystems. The size
# of the workspace is O(7n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_genv_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_genv_alloc (n::Csize_t)
    ccall( (:gsl_eigen_genv_alloc, "libgsl"), Ptr{Void}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_genv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genv_free (w::Ptr{Void})
    ccall( (:gsl_eigen_genv_free, "libgsl"), Void, (Ptr{Void}, ), w )
end


# This function computes eigenvalues and right eigenvectors of the n-by-n real
# generalized nonsymmetric matrix pair (A, B). The eigenvalues are stored in
# (alpha, beta) and the eigenvectors are stored in evec. It first calls
# gsl_eigen_gen to compute the eigenvalues, Schur forms, and Schur vectors.
# Then it finds eigenvectors of the Schur forms and backtransforms them using
# the Schur vectors. The Schur vectors are destroyed in the process, but can be
# saved by using gsl_eigen_genv_QZ. The computed eigenvectors are normalized to
# have unit magnitude. On output, (A, B) contains the generalized Schur form
# (S, T). If gsl_eigen_gen fails, no eigenvectors are computed, and an error
# code is returned.
# 
#   Returns: Cint
#XXX Unknown input type alpha::Ptr{gsl_vector_complex}
#XXX Coerced type for alpha::Ptr{Void}
#XXX Unknown input type evec::Ptr{gsl_matrix_complex}
#XXX Coerced type for evec::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_genv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genv (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, alpha::Ptr{Void}, beta::Ptr{gsl_vector}, evec::Ptr{Void}, w::Ptr{Void})
    ccall( (:gsl_eigen_genv, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{Void}, Ptr{gsl_vector}, Ptr{Void}, Ptr{Void}), A,
        B, alpha, beta, evec, w )
end


# This function is identical to gsl_eigen_genv except that it also computes the
# left and right Schur vectors and stores them into Q and Z respectively.
# 
#   Returns: Cint
#XXX Unknown input type alpha::Ptr{gsl_vector_complex}
#XXX Coerced type for alpha::Ptr{Void}
#XXX Unknown input type evec::Ptr{gsl_matrix_complex}
#XXX Coerced type for evec::Ptr{Void}
#XXX Unknown input type w::Ptr{gsl_eigen_genv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_genv_QZ (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, alpha::Ptr{Void}, beta::Ptr{gsl_vector}, evec::Ptr{Void}, Q::Ptr{gsl_matrix}, Z::Ptr{gsl_matrix}, w::Ptr{Void})
    ccall( (:gsl_eigen_genv_QZ, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{Void}, Ptr{gsl_vector}, Ptr{Void},
        Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{Void}), A, B, alpha, beta, evec,
        Q, Z, w )
end
