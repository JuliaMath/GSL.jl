#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 14.7 Tridiagonal Decomposition of Hermitian Matrices #
########################################################
export linalg_hermtd_decomp, linalg_hermtd_unpack, linalg_hermtd_unpack_T




# This function factorizes the hermitian matrix A into the symmetric
# tridiagonal decomposition U T U^T.  On output the real parts of the diagonal
# and subdiagonal part of the input matrix A contain the tridiagonal matrix T.
# The remaining lower triangular part of the input matrix contains the
# Householder vectors which, together with the Householder coefficients tau,
# encode the unitary matrix U. This storage scheme is the same as used by
# lapack.  The upper triangular part of A and imaginary parts of the diagonal
# are not referenced.
# 
#   Returns: Cint
function linalg_hermtd_decomp()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    tau = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_linalg_hermtd_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex}), A, tau )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(tau)[1]
end


# This function unpacks the encoded tridiagonal decomposition (A, tau) obtained
# from gsl_linalg_hermtd_decomp into the unitary matrix U, the real vector of
# diagonal elements diag and the real vector of subdiagonal elements subdiag.
# 
#   Returns: Cint
function linalg_hermtd_unpack(A::Ptr{gsl_matrix_complex}, tau::Ptr{gsl_vector_complex})
    U = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    diag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    subdiag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_hermtd_unpack, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau, U,
        diag, subdiag )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(U)[1] ,unsafe_ref(diag)[1] ,unsafe_ref(subdiag)[1]
end


# This function unpacks the diagonal and subdiagonal of the encoded tridiagonal
# decomposition (A, tau) obtained from the gsl_linalg_hermtd_decomp into the
# real vectors diag and subdiag.
# 
#   Returns: Cint
function linalg_hermtd_unpack_T(A::Ptr{gsl_matrix_complex})
    diag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    subdiag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_hermtd_unpack_T, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, diag,
        subdiag )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(diag)[1] ,unsafe_ref(subdiag)[1]
end
