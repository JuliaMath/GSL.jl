#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 9.4 Permutation properties #
##############################
export gsl_permutation_size, gsl_permutation_data, gsl_permutation_valid


### Function uses unknown type; disabled
### # This function returns the size of the permutation p.
# 
### #   Returns: Csize_t
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_size (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_size, "libgsl"), Csize_t,
###         (Ptr{gsl_permutation}, ), p )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to the array of elements in the permutation
# p.
# 
### #   Returns: Ptr{Csize_t}
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_data (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_data, "libgsl"), Ptr{Csize_t},
###         (Ptr{gsl_permutation}, ), p )
### end


### Function uses unknown type; disabled
### # This function checks that the permutation p is valid.  The n elements should
# contain each of the numbers 0 to n-1 once and only once.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_valid (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_valid, "libgsl"), Cint, (Ptr{gsl_permutation},
###         ), p )
### end