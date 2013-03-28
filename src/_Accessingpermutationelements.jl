#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 9.3 Accessing permutation elements #
######################################
export gsl_permutation_get, gsl_permutation_swap


### Function uses unknown type; disabled
### # This function returns the value of the i-th element of the permutation p.  If
# i lies outside the allowed range of 0 to n-1 then the error handler is
# invoked and 0 is returned.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
### #   Returns: Csize_t
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_get (p::Ptr{gsl_permutation}, i::Csize_t)
###     ccall( (:gsl_permutation_get, "libgsl"), Csize_t,
###         (Ptr{gsl_permutation}, Csize_t), p, i )
### end


### Function uses unknown type; disabled
### # This function exchanges the i-th and j-th elements of the permutation p.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_swap (p::Ptr{gsl_permutation}, i::Csize_t, j::Csize_t)
###     ccall( (:gsl_permutation_swap, "libgsl"), Cint, (Ptr{gsl_permutation},
###         Csize_t, Csize_t), p, i, j )
### end