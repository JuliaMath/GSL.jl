#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 14.12 Householder solver for linear systems #
###############################################
export gsl_linalg_HH_solve, gsl_linalg_HH_svx


# This function solves the system A x = b directly using Householder
# transformations. On output the solution is stored in x and b is not modified.
# The matrix A is destroyed by the Householder transformations.
# 
#   Returns: Cint
function gsl_linalg_HH_solve(b::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_HH_solve, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, b, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(x)
end


# This function solves the system A x = b in-place using Householder
# transformations.  On input x should contain the right-hand side b, which is
# replaced by the solution on output.  The matrix A is destroyed by the
# Householder transformations.
# 
#   Returns: Cint
function gsl_linalg_HH_svx()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_HH_svx, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), A, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(x)
end
