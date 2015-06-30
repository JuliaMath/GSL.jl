#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 10.3 Accessing combination elements #
#######################################
export combination_get


# This function returns the value of the i-th element of the combination c.  If
# i lies outside the allowed range of 0 to k-1 then the error handler is
# invoked and 0 is returned.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: Csize_t
function combination_get(c::Ptr{gsl_combination}, i::Integer)
    ccall( (:gsl_combination_get, libgsl), Csize_t, (Ptr{gsl_combination},
        Csize_t), c, i )
end
