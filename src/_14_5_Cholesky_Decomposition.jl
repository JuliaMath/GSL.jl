#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 14.5 Cholesky Decomposition #
###############################
export linalg_cholesky_decomp, linalg_complex_cholesky_decomp,
       linalg_cholesky_solve, linalg_complex_cholesky_solve,
       linalg_cholesky_svx, linalg_complex_cholesky_svx,
       linalg_cholesky_invert, linalg_complex_cholesky_invert




# These functions factorize the symmetric, positive-definite square matrix A
# into the Cholesky decomposition A = L L^T (or  A = L L^H for the complex
# case). On input, the values from the diagonal and lower-triangular part of
# the matrix A are used (the upper triangular part is ignored).  On output the
# diagonal and lower triangular part of the input matrix A contain the matrix
# L, while the upper triangular part of the input matrix is overwritten with
# L^T (the diagonal terms being identical for both L and L^T).  If the matrix
# is not positive-definite then the decomposition will fail, returning the
# error code GSL_EDOM.          When testing whether a matrix is positive-
# definite, disable the error handler first to avoid triggering an error.
# 
#   Returns: Cint
function linalg_cholesky_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_cholesky_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, ), A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)
end


# These functions factorize the symmetric, positive-definite square matrix A
# into the Cholesky decomposition A = L L^T (or  A = L L^H for the complex
# case). On input, the values from the diagonal and lower-triangular part of
# the matrix A are used (the upper triangular part is ignored).  On output the
# diagonal and lower triangular part of the input matrix A contain the matrix
# L, while the upper triangular part of the input matrix is overwritten with
# L^T (the diagonal terms being identical for both L and L^T).  If the matrix
# is not positive-definite then the decomposition will fail, returning the
# error code GSL_EDOM.          When testing whether a matrix is positive-
# definite, disable the error handler first to avoid triggering an error.
# 
#   Returns: Cint
function linalg_complex_cholesky_decomp()
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_linalg_complex_cholesky_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, ), A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)
end


# These functions solve the system A x = b using the Cholesky decomposition of
# A held in the matrix cholesky which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.
# 
#   Returns: Cint
function linalg_cholesky_solve(cholesky::Ptr{gsl_matrix}, b::Ptr{gsl_vector})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_cholesky_solve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), cholesky, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# These functions solve the system A x = b using the Cholesky decomposition of
# A held in the matrix cholesky which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.
# 
#   Returns: Cint
function linalg_complex_cholesky_solve(cholesky::Ptr{gsl_matrix_complex}, b::Ptr{gsl_vector_complex})
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_linalg_complex_cholesky_solve, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_vector_complex}), cholesky, b, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# These functions solve the system A x = b in-place using the Cholesky
# decomposition of A held in the matrix cholesky which must have been
# previously computed by gsl_linalg_cholesky_decomp or
# gsl_linalg_complex_cholesky_decomp. On input x should contain the right-hand
# side b, which is replaced by the solution on output.
# 
#   Returns: Cint
function linalg_cholesky_svx(cholesky::Ptr{gsl_matrix})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_cholesky_svx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), cholesky, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# These functions solve the system A x = b in-place using the Cholesky
# decomposition of A held in the matrix cholesky which must have been
# previously computed by gsl_linalg_cholesky_decomp or
# gsl_linalg_complex_cholesky_decomp. On input x should contain the right-hand
# side b, which is replaced by the solution on output.
# 
#   Returns: Cint
function linalg_complex_cholesky_svx(cholesky::Ptr{gsl_matrix_complex})
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_linalg_complex_cholesky_svx, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex}), cholesky, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)
end


# These functions compute the inverse of a matrix from its Cholesky
# decomposition cholesky, which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.  On output,
# the inverse is stored in-place in cholesky.
# 
#   Returns: Cint
function linalg_cholesky_invert()
    cholesky = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_cholesky_invert, :libgsl), Cint,
        (Ptr{gsl_matrix}, ), cholesky )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(cholesky)
end


# These functions compute the inverse of a matrix from its Cholesky
# decomposition cholesky, which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.  On output,
# the inverse is stored in-place in cholesky.
# 
#   Returns: Cint
function linalg_complex_cholesky_invert()
    cholesky = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_linalg_complex_cholesky_invert, :libgsl), Cint,
        (Ptr{gsl_matrix_complex}, ), cholesky )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(cholesky)
end
