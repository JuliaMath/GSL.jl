#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 9.3 Accessing permutation elements #
######################################
export permutation_get, permutation_swap


# This function returns the value of the i-th element of the permutation p.  If
# i lies outside the allowed range of 0 to n-1 then the error handler is
# invoked and 0 is returned.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: Csize_t
function permutation_get(p::Ptr{gsl_permutation}, i::Integer)
    ccall( (:gsl_permutation_get, libgsl), Csize_t, (Ptr{gsl_permutation},
        Csize_t), p, i )
end


# This function exchanges the i-th and j-th elements of the permutation p.
# 
#   Returns: Cint
function permutation_swap(i::Integer, j::Integer)
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    errno = ccall( (:gsl_permutation_swap, libgsl), Cint,
        (Ptr{gsl_permutation}, Csize_t, Csize_t), p, i, j )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(p)
end
@vectorize_2arg Number permutation_swap
