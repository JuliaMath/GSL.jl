#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 14.4 Singular Value Decomposition #
#####################################
export linalg_SV_decomp, linalg_SV_decomp_mod, linalg_SV_decomp_jacobi,
       linalg_SV_solve




# This function factorizes the M-by-N matrix A into the singular value
# decomposition A = U S V^T for  M >= N.  On output the matrix A is replaced by
# U. The diagonal elements of the singular value matrix S are stored in the
# vector S. The singular values are non-negative and form a non-increasing
# sequence from S_1 to S_N. The matrix V contains the elements of V in
# untransposed form. To form the product U S V^T it is necessary to take the
# transpose of V.  A workspace of length N is required in work.          This
# routine uses the Golub-Reinsch SVD algorithm.
# 
#   Returns: Cint
function linalg_SV_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    S = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    work = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_SV_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        A, V, S, work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(V)[1] ,unsafe_ref(S)[1] ,unsafe_ref(work)[1]
end


# This function computes the SVD using the modified Golub-Reinsch algorithm,
# which is faster for  M>>N.  It requires the vector work of length N and the
# N-by-N matrix X as additional working space.
# 
#   Returns: Cint
function linalg_SV_decomp_mod()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    X = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    S = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    work = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_SV_decomp_mod, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector},
        Ptr{gsl_vector}), A, X, V, S, work )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(X)[1] ,unsafe_ref(V)[1] ,unsafe_ref(S)[1] ,unsafe_ref(work)[1]
end


# This function computes the SVD of the M-by-N matrix A using one-sided Jacobi
# orthogonalization for  M >= N.  The Jacobi method can compute singular values
# to higher relative accuracy than Golub-Reinsch algorithms (see references for
# details).
# 
#   Returns: Cint
function linalg_SV_decomp_jacobi()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    S = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_SV_decomp_jacobi, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}), A, V, S )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(V)[1] ,unsafe_ref(S)[1]
end


# This function solves the system A x = b using the singular value
# decomposition (U, S, V) of A which must have been computed previously with
# gsl_linalg_SV_decomp.          Only non-zero singular values are used in
# computing the solution. The parts of the solution corresponding to singular
# values of zero are ignored.  Other singular values can be edited out by
# setting them to zero before calling this function.          In the over-
# determined case where A has more rows than columns the system is solved in
# the least squares sense, returning the solution x which minimizes ||A x -
# b||_2.
# 
#   Returns: Cint
function linalg_SV_solve(U::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, S::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_SV_solve, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}), U,
        V, S, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end
