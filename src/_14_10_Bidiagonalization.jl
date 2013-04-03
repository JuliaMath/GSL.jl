#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 14.10 Bidiagonalization #
###########################
export gsl_linalg_bidiag_decomp, gsl_linalg_bidiag_unpack,
       gsl_linalg_bidiag_unpack2, gsl_linalg_bidiag_unpack_B




# This function factorizes the M-by-N matrix A into bidiagonal form U B V^T.
# The diagonal and superdiagonal of the matrix B are stored in the diagonal and
# superdiagonal of A.  The orthogonal matrices U and V are stored as compressed
# Householder vectors in the remaining elements of A.  The Householder
# coefficients are stored in the vectors tau_U and tau_V.  The length of tau_U
# must equal the number of elements in the diagonal of A and the length of
# tau_V should be one element shorter.
# 
#   Returns: Cint
function gsl_linalg_bidiag_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau_U = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    tau_V = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_bidiag_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau_U, tau_V )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(tau_U)[1] ,unsafe_ref(tau_V)[1]
end


# This function unpacks the bidiagonal decomposition of A produced by
# gsl_linalg_bidiag_decomp, (A, tau_U, tau_V) into the separate orthogonal
# matrices U, V and the diagonal vector diag and superdiagonal superdiag.  Note
# that U is stored as a compact M-by-N orthogonal matrix satisfying U^T U = I
# for efficiency.
# 
#   Returns: Cint
function gsl_linalg_bidiag_unpack(A::Ptr{gsl_matrix}, tau_U::Ptr{gsl_vector}, tau_V::Ptr{gsl_vector})
    U = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    diag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    superdiag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_bidiag_unpack, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_vector},
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau_U, U, tau_V,
        V, diag, superdiag )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(U)[1] ,unsafe_ref(V)[1] ,unsafe_ref(diag)[1] ,unsafe_ref(superdiag)[1]
end


# This function unpacks the bidiagonal decomposition of A produced by
# gsl_linalg_bidiag_decomp, (A, tau_U, tau_V) into the separate orthogonal
# matrices U, V and the diagonal vector diag and superdiagonal superdiag.  The
# matrix U is stored in-place in A.
# 
#   Returns: Cint
function gsl_linalg_bidiag_unpack2()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau_U = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    tau_V = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_linalg_bidiag_unpack2, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}),
        A, tau_U, tau_V, V )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(tau_U)[1] ,unsafe_ref(tau_V)[1] ,unsafe_ref(V)[1]
end


# This function unpacks the diagonal and superdiagonal of the bidiagonal
# decomposition of A from gsl_linalg_bidiag_decomp, into the diagonal vector
# diag and superdiagonal vector superdiag.
# 
#   Returns: Cint
function gsl_linalg_bidiag_unpack_B(A::Ptr{gsl_matrix})
    diag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    superdiag = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_bidiag_unpack_B, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, diag, superdiag
        )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(diag)[1] ,unsafe_ref(superdiag)[1]
end
