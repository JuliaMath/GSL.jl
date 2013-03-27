#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################
# 14.14 Balancing #
###################
export gsl_linalg_balance_matrix


# This function replaces the matrix A with its balanced counterpart and stores
# the diagonal elements of the similarity transformation into the vector D.
# 
#   Returns: Cint
function gsl_linalg_balance_matrix (A::Ptr{gsl_matrix}, D::Ptr{gsl_vector})
    ccall( (:gsl_linalg_balance_matrix, "libgsl"), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_vector}), A, D )
end