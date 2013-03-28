#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 14.10 Bidiagonalization #
###########################
export gsl_linalg_bidiag_decomp, gsl_linalg_bidiag_unpack,
       gsl_linalg_bidiag_unpack2, gsl_linalg_bidiag_unpack_B


### Function uses unknown type; disabled
### # This function factorizes the M-by-N matrix A into bidiagonal form U B V^T.
# The diagonal and superdiagonal of the matrix B are stored in the diagonal and
# superdiagonal of A.  The orthogonal matrices U and V are stored as compressed
# Householder vectors in the remaining elements of A.  The Householder
# coefficients are stored in the vectors tau_U and tau_V.  The length of tau_U
# must equal the number of elements in the diagonal of A and the length of
# tau_V should be one element shorter.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type tau_U::Ptr{gsl_vector}
### #XXX Unknown input type tau_V::Ptr{gsl_vector}
### function gsl_linalg_bidiag_decomp (A::Ptr{gsl_matrix}, tau_U::Ptr{gsl_vector}, tau_V::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_bidiag_decomp, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau_U, tau_V )
### end


### Function uses unknown type; disabled
### # This function unpacks the bidiagonal decomposition of A produced by
# gsl_linalg_bidiag_decomp, (A, tau_U, tau_V) into the separate orthogonal
# matrices U, V and the diagonal vector diag and superdiagonal superdiag.  Note
# that U is stored as a compact M-by-N orthogonal matrix satisfying U^T U = I
# for efficiency.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type tau_U::Ptr{gsl_vector}
### #XXX Unknown input type U::Ptr{gsl_matrix}
### #XXX Unknown input type tau_V::Ptr{gsl_vector}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type diag::Ptr{gsl_vector}
### #XXX Unknown input type superdiag::Ptr{gsl_vector}
### function gsl_linalg_bidiag_unpack (A::Ptr{gsl_matrix}, tau_U::Ptr{gsl_vector}, U::Ptr{gsl_matrix}, tau_V::Ptr{gsl_vector}, V::Ptr{gsl_matrix}, diag::Ptr{gsl_vector}, superdiag::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_bidiag_unpack, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_vector}), A, tau_U, U, tau_V, V, diag,
###         superdiag )
### end


### Function uses unknown type; disabled
### # This function unpacks the bidiagonal decomposition of A produced by
# gsl_linalg_bidiag_decomp, (A, tau_U, tau_V) into the separate orthogonal
# matrices U, V and the diagonal vector diag and superdiagonal superdiag.  The
# matrix U is stored in-place in A.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type tau_U::Ptr{gsl_vector}
### #XXX Unknown input type tau_V::Ptr{gsl_vector}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### function gsl_linalg_bidiag_unpack2 (A::Ptr{gsl_matrix}, tau_U::Ptr{gsl_vector}, tau_V::Ptr{gsl_vector}, V::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_bidiag_unpack2, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}), A, tau_U, tau_V, V
###         )
### end


### Function uses unknown type; disabled
### # This function unpacks the diagonal and superdiagonal of the bidiagonal
# decomposition of A from gsl_linalg_bidiag_decomp, into the diagonal vector
# diag and superdiagonal vector superdiag.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type diag::Ptr{gsl_vector}
### #XXX Unknown input type superdiag::Ptr{gsl_vector}
### function gsl_linalg_bidiag_unpack_B (A::Ptr{gsl_matrix}, diag::Ptr{gsl_vector}, superdiag::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_bidiag_unpack_B, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_vector}), A, diag, superdiag )
### end