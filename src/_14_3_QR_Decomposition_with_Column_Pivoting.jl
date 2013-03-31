#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 14.3 QR Decomposition with Column Pivoting #
##############################################
export gsl_linalg_QRPT_decomp, gsl_linalg_QRPT_decomp2, gsl_linalg_QRPT_solve,
       gsl_linalg_QRPT_svx, gsl_linalg_QRPT_QRsolve, gsl_linalg_QRPT_update,
       gsl_linalg_QRPT_Rsolve, gsl_linalg_QRPT_Rsvx




# This function factorizes the M-by-N matrix A into the QRP^T decomposition A =
# Q R P^T.  On output the diagonal and upper triangular part of the input
# matrix contain the matrix R. The permutation matrix P is stored in the
# permutation p.  The sign of the permutation is given by signum. It has the
# value (-1)^n, where n is the number of interchanges in the permutation. The
# vector tau and the columns of the lower triangular part of the matrix A
# contain the Householder coefficients and vectors which encode the orthogonal
# matrix Q.  The vector tau must be of length k=\min(M,N). The matrix Q is
# related to these components by, Q = Q_k ... Q_2 Q_1 where Q_i = I - \tau_i
# v_i v_i^T and v_i is the Householder vector v_i =
# (0,...,1,A(i+1,i),A(i+2,i),...,A(m,i)). This is the same storage scheme as
# used by lapack.  The vector norm is a workspace of length N used for column
# pivoting.          The algorithm used to perform the decomposition is
# Householder QR with column pivoting (Golub & Van Loan, Matrix Computations,
# Algorithm 5.4.1).
# 
#   Returns: Cint
function gsl_linalg_QRPT_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    signum = convert(Ptr{Cint}, Array(Cint, 1))
    norm = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_permutation}, Ptr{Cint},
        Ptr{gsl_vector}), A, tau, p, signum, norm )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(tau) ,unsafe_ref(p) ,unsafe_ref(signum) ,unsafe_ref(norm)
end


# This function factorizes the matrix A into the decomposition A = Q R P^T
# without modifying A itself and storing the output in the separate matrices q
# and r.
# 
#   Returns: Cint
function gsl_linalg_QRPT_decomp2(A::Ptr{gsl_matrix})
    q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    r = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    signum = convert(Ptr{Cint}, Array(Cint, 1))
    norm = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_decomp2, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector},
        Ptr{gsl_permutation}, Ptr{Cint}, Ptr{gsl_vector}), A, q, r, tau, p,
        signum, norm )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(q) ,unsafe_ref(r) ,unsafe_ref(tau) ,unsafe_ref(p) ,unsafe_ref(signum) ,unsafe_ref(norm)
end


# This function solves the square system A x = b using the QRP^T decomposition
# of A held in (QR, tau, p) which must have been computed previously by
# gsl_linalg_QRPT_decomp.
# 
#   Returns: Cint
function gsl_linalg_QRPT_solve(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, p::Ptr{gsl_permutation}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_solve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_permutation},
        Ptr{gsl_vector}, Ptr{gsl_vector}), QR, tau, p, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)
end


# This function solves the square system A x = b in-place using the QRP^T
# decomposition of A held in (QR,tau,p). On input x should contain the right-
# hand side b, which is replaced by the solution on output.
# 
#   Returns: Cint
function gsl_linalg_QRPT_svx(QR::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, p::Ptr{gsl_permutation})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_svx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_permutation},
        Ptr{gsl_vector}), QR, tau, p, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)
end


# This function solves the square system R P^T x = Q^T b for x. It can be used
# when the QR decomposition of a matrix is available in unpacked form as (Q,
# R).
# 
#   Returns: Cint
function gsl_linalg_QRPT_QRsolve(Q::Ptr{gsl_matrix}, R::Ptr{gsl_matrix}, p::Ptr{gsl_permutation}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_QRsolve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_permutation},
        Ptr{gsl_vector}, Ptr{gsl_vector}), Q, R, p, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)
end


# This function performs a rank-1 update w v^T of the QRP^T decomposition (Q,
# R, p). The update is given by Q'R' = Q (R + w v^T P) where the output
# matrices Q' and R' are also orthogonal and right triangular. Note that w is
# destroyed by the update. The permutation p is not changed.
# 
#   Returns: Cint
function gsl_linalg_QRPT_update(p::Ptr{gsl_permutation}, v::Ptr{gsl_vector})
    Q = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    R = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    w = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_update, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_permutation},
        Ptr{gsl_vector}, Ptr{gsl_vector}), Q, R, p, w, v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(Q) ,unsafe_ref(R) ,unsafe_ref(w)
end


# This function solves the triangular system R P^T x = b for the N-by-N matrix
# R contained in QR.
# 
#   Returns: Cint
function gsl_linalg_QRPT_Rsolve(QR::Ptr{gsl_matrix}, p::Ptr{gsl_permutation}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_Rsolve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_permutation}, Ptr{gsl_vector},
        Ptr{gsl_vector}), QR, p, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)
end


# This function solves the triangular system R P^T x = b in-place for the
# N-by-N matrix R contained in QR. On input x should contain the right-hand
# side b, which is replaced by the solution on output.
# 
#   Returns: Cint
function gsl_linalg_QRPT_Rsvx(QR::Ptr{gsl_matrix}, p::Ptr{gsl_permutation})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_QRPT_Rsvx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_permutation}, Ptr{gsl_vector}), QR, p, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(x)
end
