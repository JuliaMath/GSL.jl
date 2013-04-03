#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 15.4 Real Generalized Symmetric-Definite Eigensystems #
#########################################################
export eigen_gensymm_alloc, eigen_gensymm_free, eigen_gensymm,
       eigen_gensymmv_alloc, eigen_gensymmv_free, eigen_gensymmv






# This function allocates a workspace for computing eigenvalues of n-by-n real
# generalized symmetric-definite eigensystems. The size of the workspace is
# O(2n).
# 
#   Returns: Ptr{gsl_eigen_gensymm_workspace}
function eigen_gensymm_alloc(n::Integer)
    ccall( (:gsl_eigen_gensymm_alloc, :libgsl),
        Ptr{gsl_eigen_gensymm_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_gensymm_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_gensymm_free(w::Ptr{gsl_eigen_gensymm_workspace})
    ccall( (:gsl_eigen_gensymm_free, :libgsl), Void,
        (Ptr{gsl_eigen_gensymm_workspace}, ), w )
end


# This function computes the eigenvalues of the real generalized symmetric-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
function eigen_gensymm()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_eigen_gensymm_workspace}, Array(gsl_eigen_gensymm_workspace, 1))
    errno = ccall( (:gsl_eigen_gensymm, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_eigen_gensymm_workspace}), A,
        B, eval, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(eval)[1] ,unsafe_ref(w)[1]
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real generalized symmetric-definite eigensystems. The
# size of the workspace is O(4n).
# 
#   Returns: Ptr{gsl_eigen_gensymmv_workspace}
function eigen_gensymmv_alloc(n::Integer)
    ccall( (:gsl_eigen_gensymmv_alloc, :libgsl),
        Ptr{gsl_eigen_gensymmv_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_gensymmv_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_gensymmv_free(w::Ptr{gsl_eigen_gensymmv_workspace})
    ccall( (:gsl_eigen_gensymmv_free, :libgsl), Void,
        (Ptr{gsl_eigen_gensymmv_workspace}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the real
# generalized symmetric-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
function eigen_gensymmv()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_eigen_gensymmv_workspace}, Array(gsl_eigen_gensymmv_workspace, 1))
    errno = ccall( (:gsl_eigen_gensymmv, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix},
        Ptr{gsl_eigen_gensymmv_workspace}), A, B, eval, evec, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(eval)[1] ,unsafe_ref(evec)[1] ,unsafe_ref(w)[1]
end
