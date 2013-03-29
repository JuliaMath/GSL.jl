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
function gsl_linalg_HH_solve (A::Ptr{gsl_matrix}, b::Ptr{gsl_vector}, x::Ptr{gsl_vector})
    ccall( (:gsl_linalg_HH_solve, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}, Ptr{gsl_vector}), A, b, x )
end


# This function solves the system A x = b in-place using Householder
# transformations.  On input x should contain the right-hand side b, which is
# replaced by the solution on output.  The matrix A is destroyed by the
# Householder transformations.
# 
#   Returns: Cint
function gsl_linalg_HH_svx (A::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
    ccall( (:gsl_linalg_HH_svx, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}), A, x )
end
