#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 14.5 Cholesky Decomposition #
###############################
export gsl_linalg_cholesky_decomp, gsl_linalg_complex_cholesky_decomp,
       gsl_linalg_cholesky_solve, gsl_linalg_complex_cholesky_solve,
       gsl_linalg_cholesky_svx, gsl_linalg_complex_cholesky_svx,
       gsl_linalg_cholesky_invert, gsl_linalg_complex_cholesky_invert


### Function uses unknown type; disabled
### # These functions factorize the symmetric, positive-definite square matrix A
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
### #   {$A = L L^{\dagger}$} 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_linalg_cholesky_decomp (A::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_cholesky_decomp, "libgsl"), Cint, (Ptr{gsl_matrix},
###         ), A )
### end


### Function uses unknown type; disabled
### # These functions factorize the symmetric, positive-definite square matrix A
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
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_linalg_complex_cholesky_decomp (A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_linalg_complex_cholesky_decomp, "libgsl"), Cint,
###         (Ptr{gsl_matrix_complex}, ), A )
### end


### Function uses unknown type; disabled
### # These functions solve the system A x = b using the Cholesky decomposition of
# A held in the matrix cholesky which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix}
### #XXX Unknown input type b::Ptr{gsl_vector}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_linalg_cholesky_solve (cholesky::Ptr{gsl_matrix}, b::Ptr{gsl_vector}, x::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_cholesky_solve, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}, Ptr{gsl_vector}), cholesky, b, x )
### end


### Function uses unknown type; disabled
### # These functions solve the system A x = b using the Cholesky decomposition of
# A held in the matrix cholesky which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix_complex}
### #XXX Unknown input type b::Ptr{gsl_vector_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### function gsl_linalg_complex_cholesky_solve (cholesky::Ptr{gsl_matrix_complex}, b::Ptr{gsl_vector_complex}, x::Ptr{gsl_vector_complex})
###     ccall( (:gsl_linalg_complex_cholesky_solve, "libgsl"), Cint,
###         (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
###         Ptr{gsl_vector_complex}), cholesky, b, x )
### end


### Function uses unknown type; disabled
### # These functions solve the system A x = b in-place using the Cholesky
# decomposition of A held in the matrix cholesky which must have been
# previously computed by gsl_linalg_cholesky_decomp or
# gsl_linalg_complex_cholesky_decomp. On input x should contain the right-hand
# side b, which is replaced by the solution on output.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_linalg_cholesky_svx (cholesky::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_cholesky_svx, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_vector}), cholesky, x )
### end


### Function uses unknown type; disabled
### # These functions solve the system A x = b in-place using the Cholesky
# decomposition of A held in the matrix cholesky which must have been
# previously computed by gsl_linalg_cholesky_decomp or
# gsl_linalg_complex_cholesky_decomp. On input x should contain the right-hand
# side b, which is replaced by the solution on output.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### function gsl_linalg_complex_cholesky_svx (cholesky::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex})
###     ccall( (:gsl_linalg_complex_cholesky_svx, "libgsl"), Cint,
###         (Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex}), cholesky, x )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse of a matrix from its Cholesky
# decomposition cholesky, which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.  On output,
# the inverse is stored in-place in cholesky.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix}
### function gsl_linalg_cholesky_invert (cholesky::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_cholesky_invert, "libgsl"), Cint, (Ptr{gsl_matrix},
###         ), cholesky )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse of a matrix from its Cholesky
# decomposition cholesky, which must have been previously computed by
# gsl_linalg_cholesky_decomp or gsl_linalg_complex_cholesky_decomp.  On output,
# the inverse is stored in-place in cholesky.
# 
### #   Returns: Cint
### #XXX Unknown input type cholesky::Ptr{gsl_matrix_complex}
### function gsl_linalg_complex_cholesky_invert (cholesky::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_linalg_complex_cholesky_invert, "libgsl"), Cint,
###         (Ptr{gsl_matrix_complex}, ), cholesky )
### end