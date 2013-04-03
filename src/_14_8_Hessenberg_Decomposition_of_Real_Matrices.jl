#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 14.8 Hessenberg Decomposition of Real Matrices #
##################################################
export linalg_hessenberg_decomp, linalg_hessenberg_unpack,
       linalg_hessenberg_unpack_accum, linalg_hessenberg_set_zero




# This function computes the Hessenberg decomposition of the matrix A by
# applying the similarity transformation H = U^T A U.  On output, H is stored
# in the upper portion of A. The information required to construct the matrix U
# is stored in the lower triangular portion of A. U is a product of N - 2
# Householder matrices. The Householder vectors are stored in the lower portion
# of A (below the subdiagonal) and the Householder coefficients are stored in
# the vector tau.  tau must be of length N.
# 
#   Returns: Cint
function linalg_hessenberg_decomp()
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_linalg_hessenberg_decomp, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}), A, tau )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1] ,unsafe_ref(tau)[1]
end


# This function constructs the orthogonal matrix U from the information stored
# in the Hessenberg matrix H along with the vector tau. H and tau are outputs
# from gsl_linalg_hessenberg_decomp.
# 
#   Returns: Cint
function linalg_hessenberg_unpack()
    H = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    U = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_hessenberg_unpack, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}), H, tau, U )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(H)[1] ,unsafe_ref(tau)[1] ,unsafe_ref(U)[1]
end


# This function is similar to gsl_linalg_hessenberg_unpack, except it
# accumulates the matrix U into V, so that V' = VU.  The matrix V must be
# initialized prior to calling this function.  Setting V to the identity matrix
# provides the same result as gsl_linalg_hessenberg_unpack. If H is order N,
# then V must have N columns but may have any number of rows.
# 
#   Returns: Cint
function linalg_hessenberg_unpack_accum()
    H = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    tau = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    V = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_hessenberg_unpack_accum, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}), H, tau, V )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(H)[1] ,unsafe_ref(tau)[1] ,unsafe_ref(V)[1]
end


# This function sets the lower triangular portion of H, below the subdiagonal,
# to zero. It is useful for clearing out the Householder vectors after calling
# gsl_linalg_hessenberg_decomp.
# 
#   Returns: Cint
function linalg_hessenberg_set_zero()
    H = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_linalg_hessenberg_set_zero, :libgsl), Cint,
        (Ptr{gsl_matrix}, ), H )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(H)[1]
end
