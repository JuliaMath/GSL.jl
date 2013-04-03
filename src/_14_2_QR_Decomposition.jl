#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 14.2 QR Decomposition #
#########################
export gsl_linalg_QR_decomp, gsl_linalg_QR_solve, gsl_linalg_QR_svx,
       gsl_linalg_QR_lssolve, gsl_linalg_QR_QTvec, gsl_linalg_QR_Qvec,
       gsl_linalg_QR_QTmat, gsl_linalg_QR_Rsolve, gsl_linalg_QR_Rsvx,
       gsl_linalg_QR_unpack, gsl_linalg_QR_QRsolve, gsl_linalg_QR_update,
       gsl_linalg_R_solve, gsl_linalg_R_svx




# This function factorizes the M-by-N matrix A into the QR decomposition A = Q
# R.  On output the diagonal and upper triangular part of the input matrix
# contain the matrix R. The vector tau and the columns of the lower triangular
# part of the matrix A contain the Householder coefficients and Householder
# vectors which encode the orthogonal matrix Q.  The vector tau must be of
# length k=\min(M,N). The matrix Q is related to these components by, Q = Q_k
# ... Q_2 Q_1 where Q_i = I - \tau_i v_i v_i^T and v_i is the Householder
# vector v_i = (0,...,1,A(i+1,i),A(i+2,i),...,A(m,i)). This is the same storage
# scheme as used by lapack.          The algorithm used to perform the
# decomposition is Householder QR (Golub & Van Loan, Matrix Computations,
# Algorithm 5.2.1).
# 
#   Returns: Cint
function gsl_linalg_QR_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), A, tau )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(tau)[1]
end


# This function solves the square system A x = b using the QR decomposition of
# A held in (QR, tau) which must have been computed previously with
# gsl_linalg_QR_decomp.  The least-squares solution for rectangular systems can
# be found using gsl_linalg_QR_lssolve.
# 
#   Returns: Cint
function gsl_linalg_QR_solve(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_solve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        QR, tau, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end


# This function solves the square system A x = b in-place using the QR
# decomposition of A held in (QR,tau) which must have been computed previously
# by gsl_linalg_QR_decomp.  On input x should contain the right-hand side b,
# which is replaced by the solution on output.
# 
#   Returns: Cint
function gsl_linalg_QR_svx(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_svx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), QR, tau, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end


# This function finds the least squares solution to the overdetermined system A
# x = b where the matrix A has more rows than columns.  The least squares
# solution minimizes the Euclidean norm of the residual, ||Ax - b||.The routine
# requires as input the QR decomposition of A into (QR, tau) given by
# gsl_linalg_QR_decomp.  The solution is returned in x.  The residual is
# computed as a by-product and stored in residual.
# 
#   Returns: Cint
function gsl_linalg_QR_lssolve(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    residual = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_lssolve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector},
        Ptr{gsl_vector}), QR, tau, b, x, residual )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(residual)[1]
end


# This function applies the matrix Q^T encoded in the decomposition (QR,tau) to
# the vector v, storing the result Q^T v in v.  The matrix multiplication is
# carried out directly using the encoding of the Householder vectors without
# needing to form the full matrix Q^T.
# 
#   Returns: Cint
function gsl_linalg_QR_QTvec(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_QTvec, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), QR, tau, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)[1]
end


# This function applies the matrix Q encoded in the decomposition (QR,tau) to
# the vector v, storing the result Q v in v.  The matrix multiplication is
# carried out directly using the encoding of the Householder vectors without
# needing to form the full matrix Q.
# 
#   Returns: Cint
function gsl_linalg_QR_Qvec(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_Qvec, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), QR, tau, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)[1]
end


# This function applies the matrix Q^T encoded in the decomposition (QR,tau) to
# the matrix A, storing the result Q^T A in A.  The matrix multiplication is
# carried out directly using the encoding of the Householder vectors without
# needing to form the full matrix Q^T.
# 
#   Returns: Cint
function gsl_linalg_QR_QTmat(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_QTmat, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}), QR, tau, A )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A)[1]
end


# This function solves the triangular system R x = b for x. It may be useful if
# the product b' = Q^T b has already been computed using gsl_linalg_QR_QTvec.
# 
#   Returns: Cint
function gsl_linalg_QR_Rsolve(QR::Ptr{gsl_matrix}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_Rsolve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), QR, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end


# This function solves the triangular system R x = b for x in-place. On input x
# should contain the right-hand side b and is replaced by the solution on
# output. This function may be useful if the product b' = Q^T b has already
# been computed using gsl_linalg_QR_QTvec.
# 
#   Returns: Cint
function gsl_linalg_QR_Rsvx(QR::Ptr{gsl_matrix})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_Rsvx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), QR, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end


# This function unpacks the encoded QR decomposition (QR,tau) into the matrices
# Q and R, where Q is M-by-M and R is M-by-N.
# 
#   Returns: Cint
function gsl_linalg_QR_unpack(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    R = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_unpack, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}, Ptr{gsl_matrix}),
        QR, tau, Q, R )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(Q)[1] ,unsafe_ref(R)[1]
end


# This function solves the system R x = Q^T b for x. It can be used when the QR
# decomposition of a matrix is available in unpacked form as (Q, R).
# 
#   Returns: Cint
function gsl_linalg_QR_QRsolve(b::Ptr{gsl_vector})
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    R = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_QRsolve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        Q, R, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(Q)[1] ,unsafe_ref(R)[1] ,unsafe_ref(x)[1]
end


# This function performs a rank-1 update w v^T of the QR decomposition (Q, R).
# The update is given by Q'R' = Q (R + w v^T) where the output matrices Q' and
# R' are also orthogonal and right triangular. Note that w is destroyed by the
# update.
# 
#   Returns: Cint
function gsl_linalg_QR_update(v::Ptr{gsl_vector})
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    R = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QR_update, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}),
        Q, R, w, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(Q)[1] ,unsafe_ref(R)[1] ,unsafe_ref(w)[1]
end


# This function solves the triangular system R x = b for the N-by-N matrix R.
# 
#   Returns: Cint
function gsl_linalg_R_solve(R::Ptr{gsl_matrix}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_R_solve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), R, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end


# This function solves the triangular system R x = b in-place. On input x
# should contain the right-hand side b, which is replaced by the solution on
# output.
# 
#   Returns: Cint
function gsl_linalg_R_svx(R::Ptr{gsl_matrix})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_R_svx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), R, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)[1]
end
