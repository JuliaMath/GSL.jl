#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 11.5 Multiset functions #
###########################
export multiset_next, multiset_prev


# This function advances the multiset c to the next multiset element in
# lexicographic order and returns GSL_SUCCESS.  If no further multisets
# elements are available it returns GSL_FAILURE and leaves c unmodified.
# Starting with the first multiset and repeatedly applying this function will
# iterate through all possible multisets of a given order.
# 
#   Returns: Cint
function multiset_next(c::Ptr{gsl_multiset})
    errno = ccall( (:gsl_multiset_next, libgsl), Cint, (Ptr{gsl_multiset},
        ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function steps backwards from the multiset c to the previous multiset
# element in lexicographic order, returning GSL_SUCCESS.  If no previous
# multiset is available it returns GSL_FAILURE and leaves c unmodified.
# 
#   Returns: Cint
function multiset_prev()
    c = Ref{gsl_multiset}()
    errno = ccall( (:gsl_multiset_prev, libgsl), Cint, (Ptr{gsl_multiset},
        ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(c)
end
