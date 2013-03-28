#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.4.3 Initializing matrix elements #
######################################
export gsl_matrix_set_all, gsl_matrix_set_zero, gsl_matrix_set_identity


### Function uses unknown type; disabled
### # This function sets all the elements of the matrix m to the value x.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_set_all (m::Ptr{gsl_matrix}, x::Cdouble)
###     ccall( (:gsl_matrix_set_all, "libgsl"), Void, (Ptr{gsl_matrix},
###         Cdouble), m, x )
### end


### Function uses unknown type; disabled
### # This function sets all the elements of the matrix m to zero.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_set_zero (m::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_set_zero, "libgsl"), Void, (Ptr{gsl_matrix}, ), m )
### end


### Function uses unknown type; disabled
### # This function sets the elements of the matrix m to the corresponding elements
# of the identity matrix, m(i,j) = \delta(i,j), i.e. a unit diagonal with all
# off-diagonal elements zero.  This applies to both square and rectangular
# matrices.
# 
### #   Returns: Void
### #XXX Unknown input type m::Ptr{gsl_matrix}
### function gsl_matrix_set_identity (m::Ptr{gsl_matrix})
###     ccall( (:gsl_matrix_set_identity, "libgsl"), Void, (Ptr{gsl_matrix}, ),
###         m )
### end