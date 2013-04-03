#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################################
# 15.5 Complex Generalized Hermitian-Definite Eigensystems #
############################################################
export eigen_genherm_alloc, eigen_genherm_free, eigen_genherm,
       eigen_genhermv_alloc, eigen_genhermv_free, eigen_genhermv




# This function allocates a workspace for computing eigenvalues of n-by-n
# complex generalized hermitian-definite eigensystems. The size of the
# workspace is O(3n).
# 
#   Returns: Ptr{gsl_eigen_genherm_workspace}
function eigen_genherm_alloc(n::Integer)
    ccall( (:gsl_eigen_genherm_alloc, :libgsl),
        Ptr{gsl_eigen_genherm_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_genherm_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_genherm_free(w::Ptr{gsl_eigen_genherm_workspace})
    ccall( (:gsl_eigen_genherm_free, :libgsl), Void,
        (Ptr{gsl_eigen_genherm_workspace}, ), w )
end


# This function computes the eigenvalues of the complex generalized hermitian-
# definite matrix pair (A, B), and stores them in eval, using the method
# outlined above. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
function eigen_genherm()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    B = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_eigen_genherm_workspace}, Array(gsl_eigen_genherm_workspace, 1))
    errno = ccall( (:gsl_eigen_genherm, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex}, Ptr{gsl_vector},
        Ptr{gsl_eigen_genherm_workspace}), A, B, eval, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(eval)[1] ,unsafe_ref(w)[1]
end


# This function allocates a workspace for computing eigenvalues and
# eigenvectors of n-by-n complex generalized hermitian-definite eigensystems.
# The size of the workspace is O(5n).
# 
#   Returns: Ptr{gsl_eigen_genhermv_workspace}
function eigen_genhermv_alloc(n::Integer)
    ccall( (:gsl_eigen_genhermv_alloc, :libgsl),
        Ptr{gsl_eigen_genhermv_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number eigen_genhermv_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function eigen_genhermv_free(w::Ptr{gsl_eigen_genhermv_workspace})
    ccall( (:gsl_eigen_genhermv_free, :libgsl), Void,
        (Ptr{gsl_eigen_genhermv_workspace}, ), w )
end


# This function computes the eigenvalues and eigenvectors of the complex
# generalized hermitian-definite matrix pair (A, B), and stores them in eval
# and evec respectively. The computed eigenvectors are normalized to have unit
# magnitude. On output, B contains its Cholesky decomposition and A is
# destroyed.
# 
#   Returns: Cint
function eigen_genhermv()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    B = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    eval = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    evec = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    w = convert(Ptr{gsl_eigen_genhermv_workspace}, Array(gsl_eigen_genhermv_workspace, 1))
    errno = ccall( (:gsl_eigen_genhermv, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex}, Ptr{gsl_vector},
        Ptr{gsl_matrix_complex}, Ptr{gsl_eigen_genhermv_workspace}), A, B,
        eval, evec, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(B)[1] ,unsafe_ref(eval)[1] ,unsafe_ref(evec)[1] ,unsafe_ref(w)[1]
end
