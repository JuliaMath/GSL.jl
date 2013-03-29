#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 8.4.12 Matrix properties #
############################
export gsl_matrix_isnull, gsl_matrix_ispos, gsl_matrix_isneg,
       gsl_matrix_isnonneg, gsl_matrix_equal


# These functions return 1 if all the elements of the matrix m are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise. To test whether a matrix is positive-definite, use the Cholesky
# decomposition (see Cholesky Decomposition).
# 
#   Returns: Cint
function gsl_matrix_isnull (m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_isnull, "libgsl"), Cint, (Ptr{gsl_matrix}, ), m )
end


# These functions return 1 if all the elements of the matrix m are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise. To test whether a matrix is positive-definite, use the Cholesky
# decomposition (see Cholesky Decomposition).
# 
#   Returns: Cint
function gsl_matrix_ispos (m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_ispos, "libgsl"), Cint, (Ptr{gsl_matrix}, ), m )
end


# These functions return 1 if all the elements of the matrix m are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise. To test whether a matrix is positive-definite, use the Cholesky
# decomposition (see Cholesky Decomposition).
# 
#   Returns: Cint
function gsl_matrix_isneg (m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_isneg, "libgsl"), Cint, (Ptr{gsl_matrix}, ), m )
end


# These functions return 1 if all the elements of the matrix m are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise. To test whether a matrix is positive-definite, use the Cholesky
# decomposition (see Cholesky Decomposition).
# 
#   Returns: Cint
function gsl_matrix_isnonneg (m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_isnonneg, "libgsl"), Cint, (Ptr{gsl_matrix}, ), m )
end


# This function returns 1 if the matrices a and b are equal (by comparison of
# element values) and 0 otherwise.
# 
#   Returns: Cint
function gsl_matrix_equal (a::Ptr{gsl_matrix}, b::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_equal, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}), a, b )
end
