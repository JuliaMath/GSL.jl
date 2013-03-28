#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 8.4.7 Copying matrices #
##########################
export gsl_matrix_memcpy, gsl_matrix_swap


### Function uses unknown type; disabled
### # This function copies the elements of the matrix src into the matrix dest.
# The two matrices must have the same size.
# 
### #   Returns: Cint
### #XXX Unknown input type dest::Ptr{gsl_matrix}
### #XXX Unknown input type src::Ptr{gsl_matrix}
### function gsl_matrix_memcpy (dest::Ptr{gsl_matrix}, src::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_memcpy, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}), dest, src )
### end


### Function uses unknown type; disabled
### # This function exchanges the elements of the matrices m1 and m2 by copying.
# The two matrices must have the same size.
# 
### #   Returns: Cint
### #XXX Unknown input type m1::Ptr{gsl_matrix}
### #XXX Unknown input type m2::Ptr{gsl_matrix}
### function gsl_matrix_swap (m1::Ptr{gsl_matrix}, m2::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_swap, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}), m1, m2 )
### end