#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################################
# 14.9 Hessenberg-Triangular Decomposition of Real Matrices #
#############################################################
export gsl_linalg_hesstri_decomp


### Function uses unknown type; disabled
### # This function computes the Hessenberg-Triangular decomposition of the matrix
# pair (A, B). On output, H is stored in A, and R is stored in B. If U and V
# are provided (they may be null), the similarity transformations are stored in
# them.  Additional workspace of length N is needed in work.
# 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type U::Ptr{gsl_matrix}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type work::Ptr{gsl_vector}
### function gsl_linalg_hesstri_decomp (A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, U::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, work::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_hesstri_decomp, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}), A,
###         B, U, V, work )
### end