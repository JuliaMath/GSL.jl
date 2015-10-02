#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 11.3 Accessing multiset elements #
####################################
export multiset_get


# This function returns the value of the i-th element of the multiset c.  If i
# lies outside the allowed range of 0 to k-1 then the error handler is invoked
# and 0 is returned.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: Csize_t
function multiset_get(c::Ref{gsl_multiset}, i::Integer)
    ccall( (:gsl_multiset_get, libgsl), Csize_t, (Ref{gsl_multiset},
        Csize_t), c, i )
end
