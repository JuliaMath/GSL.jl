#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################################
# 14.9 Hessenberg-Triangular Decomposition of Real Matrices #
#############################################################
export gsl_linalg_hesstri_decomp




# This function computes the Hessenberg-Triangular decomposition of the matrix
# pair (A, B). On output, H is stored in A, and R is stored in B. If U and V
# are provided (they may be null), the similarity transformations are stored in
# them.  Additional workspace of length N is needed in work.
# 
#   Returns: Cint
function gsl_linalg_hesstri_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    U = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    work = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_linalg_hesstri_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_matrix},
        Ptr{gsl_vector}), A, B, U, V, work )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(A) ,unsafe_ref(B) ,unsafe_ref(U) ,unsafe_ref(V) ,unsafe_ref(work)
end
