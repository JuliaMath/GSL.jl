#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 14.8 Hessenberg Decomposition of Real Matrices #
##################################################
export gsl_linalg_hessenberg_decomp, gsl_linalg_hessenberg_unpack,
       gsl_linalg_hessenberg_unpack_accum, gsl_linalg_hessenberg_set_zero


### Function uses unknown type; disabled
### # This function computes the Hessenberg decomposition of the matrix A by
# applying the similarity transformation H = U^T A U.  On output, H is stored
# in the upper portion of A. The information required to construct the matrix U
# is stored in the lower triangular portion of A. U is a product of N - 2
# Householder matrices. The Householder vectors are stored in the lower portion
# of A (below the subdiagonal) and the Householder coefficients are stored in
# the vector tau.  tau must be of length N.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type tau::Ptr{gsl_vector}
### function gsl_linalg_hessenberg_decomp (A::Ptr{gsl_matrix}, tau::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_hessenberg_decomp, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, Ptr{gsl_vector}), A, tau )
### end


### Function uses unknown type; disabled
### # This function constructs the orthogonal matrix U from the information stored
# in the Hessenberg matrix H along with the vector tau. H and tau are outputs
# from gsl_linalg_hessenberg_decomp.
# 
### #   Returns: Cint
### #XXX Unknown input type H::Ptr{gsl_matrix}
### #XXX Unknown input type tau::Ptr{gsl_vector}
### #XXX Unknown input type U::Ptr{gsl_matrix}
### function gsl_linalg_hessenberg_unpack (H::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, U::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_hessenberg_unpack, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}), H, tau, U )
### end


### Function uses unknown type; disabled
### # This function is similar to gsl_linalg_hessenberg_unpack, except it
# accumulates the matrix U into V, so that V' = VU.  The matrix V must be
# initialized prior to calling this function.  Setting V to the identity matrix
# provides the same result as gsl_linalg_hessenberg_unpack. If H is order N,
# then V must have N columns but may have any number of rows.
# 
### #   Returns: Cint
### #XXX Unknown input type H::Ptr{gsl_matrix}
### #XXX Unknown input type tau::Ptr{gsl_vector}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### function gsl_linalg_hessenberg_unpack_accum (H::Ptr{gsl_matrix}, tau::Ptr{gsl_vector}, V::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_hessenberg_unpack_accum, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_matrix}), H, tau, V )
### end


### Function uses unknown type; disabled
### # This function sets the lower triangular portion of H, below the subdiagonal,
# to zero. It is useful for clearing out the Householder vectors after calling
# gsl_linalg_hessenberg_decomp.
# 
### #   Returns: Cint
### #XXX Unknown input type H::Ptr{gsl_matrix}
### function gsl_linalg_hessenberg_set_zero (H::Ptr{gsl_matrix})
###     ccall( (:gsl_linalg_hessenberg_set_zero, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, ), H )
### end