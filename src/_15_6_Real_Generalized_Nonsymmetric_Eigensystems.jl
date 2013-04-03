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
#   Returns: Ptr{gsl_eigen_gen_workspace}
function gsl_eigen_gen_alloc(n::Integer)
    ccall( (:gsl_eigen_gen_alloc, :libgsl), Ptr{gsl_eigen_gen_workspace},
        (Csize_t, ), n )
end
@vectorize_1arg Number gsl_eigen_gen_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_eigen_gen_free(w::Ptr{gsl_eigen_gen_workspace})
    ccall( (:gsl_eigen_gen_free, :libgsl), Void,
        (Ptr{gsl_eigen_gen_workspace}, ), w )
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
function gsl_eigen_gen_params(compute_s::Integer, compute_t::Integer, balance::Integer)
    w = convert(Ptr{gsl_eigen_gen_workspace}, Array(gsl_eigen_gen_workspace, 1))
    ccall( (:gsl_eigen_gen_params, :libgsl), Void, (Cint, Cint, Cint,
        Ptr{gsl_eigen_gen_workspace}), compute_s, compute_t, balance, w )
    return unsafe_ref(w)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_eigen_gen_params


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
function gsl_eigen_gen()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    alpha = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    beta = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_eigen_gen_workspace}, Array(gsl_eigen_gen_workspace, 1))
    gsl_errno = ccall( (:gsl_eigen_gen, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_vector_complex}, Ptr{gsl_vector},
        Ptr{gsl_eigen_gen_workspace}), A, B, alpha, beta, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(alpha)[1] ,unsafe_ref(beta)[1] ,unsafe_ref(w)[1]
end


# This function is identical to gsl_eigen_gen except that it also computes the
# left and right Schur vectors and stores them into Q and Z respectively.
# 
#   Returns: Cint
function gsl_eigen_gen_QZ()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    alpha = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    beta = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    Z = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_eigen_gen_workspace}, Array(gsl_eigen_gen_workspace, 1))
    gsl_errno = ccall( (:gsl_eigen_gen_QZ, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector_complex},
        Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_matrix},
        Ptr{gsl_eigen_gen_workspace}), A, B, alpha, beta, Q, Z, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(alpha)[1] ,unsafe_ref(beta)[1] ,unsafe_ref(Q)[1] ,unsafe_ref(Z)[1] ,unsafe_ref(w)[1]
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real generalized nonsymmetric eigensystems. The size
# of the workspace is O(7n).
# 
#   Returns: Ptr{gsl_eigen_genv_workspace}
function gsl_eigen_genv_alloc(n::Integer)
    ccall( (:gsl_eigen_genv_alloc, :libgsl), Ptr{gsl_eigen_genv_workspace},
        (Csize_t, ), n )
end
@vectorize_1arg Number gsl_eigen_genv_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_eigen_genv_free(w::Ptr{gsl_eigen_genv_workspace})
    ccall( (:gsl_eigen_genv_free, :libgsl), Void,
        (Ptr{gsl_eigen_genv_workspace}, ), w )
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
function gsl_eigen_genv()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    alpha = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    beta = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    w = convert(Ptr{gsl_eigen_genv_workspace}, Array(gsl_eigen_genv_workspace, 1))
    gsl_errno = ccall( (:gsl_eigen_genv, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_vector_complex}, Ptr{gsl_vector},
        Ptr{gsl_matrix_complex}, Ptr{gsl_eigen_genv_workspace}), A, B, alpha,
        beta, evec, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(alpha)[1] ,unsafe_ref(beta)[1] ,unsafe_ref(evec)[1] ,unsafe_ref(w)[1]
end


# This function is identical to gsl_eigen_genv except that it also computes the
# left and right Schur vectors and stores them into Q and Z respectively.
# 
#   Returns: Cint
function gsl_eigen_genv_QZ()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    alpha = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    beta = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    Z = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_eigen_genv_workspace}, Array(gsl_eigen_genv_workspace, 1))
    gsl_errno = ccall( (:gsl_eigen_genv_QZ, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector_complex},
        Ptr{gsl_vector}, Ptr{gsl_matrix_complex}, Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_eigen_genv_workspace}), A, B, alpha, beta,
        evec, Q, Z, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(alpha)[1] ,unsafe_ref(beta)[1] ,unsafe_ref(evec)[1] ,unsafe_ref(Q)[1] ,unsafe_ref(Z)[1] ,unsafe_ref(w)[1]
end
