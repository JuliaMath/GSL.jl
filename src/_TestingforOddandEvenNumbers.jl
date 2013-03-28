#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 4.6 Testing for Odd and Even Numbers #
########################################
export GSL_IS_ODD, GSL_IS_EVEN


### Function uses unknown type; disabled
### # This macro evaluates to 1 if n is odd and 0 if n is even. The argument n must
# be of integer type.
# 
### #   Returns: 
### #XXX Unknown input type n::
### #XXX Unknown output type 
### function GSL_IS_ODD (n::)
###     ccall( (:GSL_IS_ODD, "libgsl"), , (, ), n )
### end


### Function uses unknown type; disabled
### # This macro is the opposite of GSL_IS_ODD(n). It evaluates to 1 if n is even
# and 0 if n is odd. The argument n must be of integer type.
# 
### #   Returns: 
### #XXX Unknown input type n::
### #XXX Unknown output type 
### function GSL_IS_EVEN (n::)
###     ccall( (:GSL_IS_EVEN, "libgsl"), , (, ), n )
### end