#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 15.4 Real Generalized Symmetric-Definite Eigensystems #
#########################################################
export gsl_eigen_gensymm_alloc, gsl_eigen_gensymm_free, gsl_eigen_gensymm,
       gsl_eigen_gensymmv_alloc, gsl_eigen_gensymmv_free, gsl_eigen_gensymmv






# This function allocates a workspace for computing eigenvalues of n-by-n real
# generalized symmetric-definite eigensystems. The size of the workspace is
# O(2n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_gensymm_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_gensymm_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_eigen_gensymm_alloc, :libgsl), Ptr{Void}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_gensymm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gensymm_free(w::Ptr{Void})
    ccall( (:gsl_eigen_gensymm_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues of the real generalized symmetric-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_eigen_gensymm_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gensymm(w::Ptr{Void})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_eigen_gensymm, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{Void}), A, B,
        eval, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(B) ,unsafe_ref(eval)
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n real generalized symmetric-definite eigensystems. The
# size of the workspace is O(4n).
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_eigen_gensymmv_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_eigen_gensymmv_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_eigen_gensymmv_alloc, :libgsl), Ptr{Void}, (Csize_t, ), n
        )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_eigen_gensymmv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gensymmv_free(w::Ptr{Void})
    ccall( (:gsl_eigen_gensymmv_free, :libgsl), Void, (Ptr{Void}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the real
# generalized symmetric-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_eigen_gensymmv_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_eigen_gensymmv(w::Ptr{Void})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_eigen_gensymmv, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix},
        Ptr{Void}), A, B, eval, evec, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(B) ,unsafe_ref(eval) ,unsafe_ref(evec)
end
