#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 9.5 Permutation functions #
#############################
export permutation_reverse, permutation_inverse, permutation_next,
       permutation_prev


# This function reverses the elements of the permutation p.
# 
#   Returns: Void
function permutation_reverse()
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    ccall( (:gsl_permutation_reverse, :libgsl), Void,
        (Ptr{gsl_permutation}, ), p )
    return unsafe_load(p)
end


# This function computes the inverse of the permutation p, storing the result
# in inv.
# 
#   Returns: Cint
function permutation_inverse(p::Ptr{gsl_permutation})
    inv = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    errno = ccall( (:gsl_permutation_inverse, :libgsl), Cint,
        (Ptr{gsl_permutation}, Ptr{gsl_permutation}), inv, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(inv)
end


# This function advances the permutation p to the next permutation in
# lexicographic order and returns GSL_SUCCESS.  If no further permutations are
# available it returns GSL_FAILURE and leaves p unmodified.  Starting with the
# identity permutation and repeatedly applying this function will iterate
# through all possible permutations of a given order.
# 
#   Returns: Cint
function permutation_next(p::Ptr{gsl_permutation})
    errno = ccall( (:gsl_permutation_next, :libgsl), Cint,
        (Ptr{gsl_permutation}, ), p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function steps backwards from the permutation p to the previous
# permutation in lexicographic order, returning GSL_SUCCESS.  If no previous
# permutation is available it returns GSL_FAILURE and leaves p unmodified.
# 
#   Returns: Cint
function permutation_prev()
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    errno = ccall( (:gsl_permutation_prev, :libgsl), Cint,
        (Ptr{gsl_permutation}, ), p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(p)
end
