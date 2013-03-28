#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 10.4 Combination properties #
###############################
export gsl_combination_n, gsl_combination_k, gsl_combination_data,
       gsl_combination_valid


### Function uses unknown type; disabled
### # This function returns the range (n) of the combination c.
# 
### #   Returns: Csize_t
### #XXX Unknown input type c::Ptr{gsl_combination}
### function gsl_combination_n (c::Ptr{gsl_combination})
###     ccall( (:gsl_combination_n, "libgsl"), Csize_t, (Ptr{gsl_combination},
###         ), c )
### end


### Function uses unknown type; disabled
### # This function returns the number of elements (k) in the combination c.
# 
### #   Returns: Csize_t
### #XXX Unknown input type c::Ptr{gsl_combination}
### function gsl_combination_k (c::Ptr{gsl_combination})
###     ccall( (:gsl_combination_k, "libgsl"), Csize_t, (Ptr{gsl_combination},
###         ), c )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to the array of elements in the combination
# c.
# 
### #   Returns: Ptr{Csize_t}
### #XXX Unknown input type c::Ptr{gsl_combination}
### function gsl_combination_data (c::Ptr{gsl_combination})
###     ccall( (:gsl_combination_data, "libgsl"), Ptr{Csize_t},
###         (Ptr{gsl_combination}, ), c )
### end


### Function uses unknown type; disabled
### # This function checks that the combination c is valid.  The k elements should
# lie in the range 0 to n-1, with each value occurring once at most and in
# increasing order.
# 
### #   Returns: Cint
### #XXX Unknown input type c::Ptr{gsl_combination}
### function gsl_combination_valid (c::Ptr{gsl_combination})
###     ccall( (:gsl_combination_valid, "libgsl"), Cint, (Ptr{gsl_combination},
###         ), c )
### end