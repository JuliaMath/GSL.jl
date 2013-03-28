#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 4.5 Testing the Sign of Numbers #
###################################
export GSL_SIGN


### Function uses unknown type; disabled
### # This macro returns the sign of x. It is defined as ((x) >= 0 ? 1 : -1). Note
# that with this definition the sign of zero is positive (regardless of its
# ieee sign bit).
# 
### #   Returns: 
### #XXX Unknown input type x::
### #XXX Unknown output type 
### function GSL_SIGN (x::)
###     ccall( (:GSL_SIGN, "libgsl"), , (, ), x )
### end