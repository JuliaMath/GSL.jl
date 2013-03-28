#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.3.3 Initializing vector elements #
######################################
export gsl_vector_set_all, gsl_vector_set_zero, gsl_vector_set_basis


### Function uses unknown type; disabled
### # This function sets all the elements of the vector v to the value x.
# 
### #   Returns: Void
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_set_all (v::Ptr{gsl_vector}, x::Cdouble)
###     ccall( (:gsl_vector_set_all, "libgsl"), Void, (Ptr{gsl_vector},
###         Cdouble), v, x )
### end


### Function uses unknown type; disabled
### # This function sets all the elements of the vector v to zero.
# 
### #   Returns: Void
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_set_zero (v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_set_zero, "libgsl"), Void, (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # This function makes a basis vector by setting all the elements of the vector
# v to zero except for the i-th element which is set to one.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_set_basis (v::Ptr{gsl_vector}, i::Csize_t)
###     ccall( (:gsl_vector_set_basis, "libgsl"), Cint, (Ptr{gsl_vector},
###         Csize_t), v, i )
### end