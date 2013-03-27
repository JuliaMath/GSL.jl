#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 14.7 Tridiagonal Decomposition of Hermitian Matrices #
########################################################
export gsl_linalg_hermtd_decomp, gsl_linalg_hermtd_unpack,
       gsl_linalg_hermtd_unpack_T


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
function gsl_linalg_hermtd_decomp (A::Ptr{gsl_matrix_complex}, tau::Ptr{gsl_vector_complex})
    ccall( (:gsl_linalg_hermtd_decomp, "libgsl"), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex}), A, tau )
end


# This function unpacks the encoded tridiagonal decomposition (A, tau) obtained
# from gsl_linalg_hermtd_decomp into the unitary matrix U, the real vector of
# diagonal elements diag and the real vector of subdiagonal elements subdiag.
# 
#   Returns: Cint
function gsl_linalg_hermtd_unpack (A::Ptr{gsl_matrix_complex}, tau::Ptr{gsl_vector_complex}, U::Ptr{gsl_matrix_complex}, diag::Ptr{gsl_vector}, subdiag::Ptr{gsl_vector})
    ccall( (:gsl_linalg_hermtd_unpack, "libgsl"), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau, U,
        diag, subdiag )
end


# This function unpacks the diagonal and subdiagonal of the encoded tridiagonal
# decomposition (A, tau) obtained from the gsl_linalg_hermtd_decomp into the
# real vectors diag and subdiag.
# 
#   Returns: Cint
function gsl_linalg_hermtd_unpack_T (A::Ptr{gsl_matrix_complex}, diag::Ptr{gsl_vector}, subdiag::Ptr{gsl_vector})
    ccall( (:gsl_linalg_hermtd_unpack_T, "libgsl"), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, diag,
        subdiag )
end