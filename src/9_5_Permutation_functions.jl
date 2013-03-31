#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 9.5 Permutation functions #
#############################
export gsl_permutation_reverse, gsl_permutation_inverse, gsl_permutation_next,
       gsl_permutation_prev


# This function reverses the elements of the permutation p.
# 
#   Returns: Void
function gsl_permutation_reverse()
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    ccall( (:gsl_permutation_reverse, :libgsl), Void,
        (Ptr{gsl_permutation}, ), p )
    return unsafe_ref(p)
end


# This function computes the inverse of the permutation p, storing the result
# in inv.
# 
#   Returns: Cint
function gsl_permutation_inverse(p::Ptr{gsl_permutation})
    inv = gsl_permutation_alloc(unsafe_ref(p).size)
    gsl_errno = ccall( (:gsl_permutation_inverse, :libgsl), Cint,
        (Ptr{gsl_permutation}, Ptr{gsl_permutation}), inv, p )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return inv
end


# This function advances the permutation p to the next permutation in
# lexicographic order and returns GSL_SUCCESS.  If no further permutations are
# available it returns GSL_FAILURE and leaves p unmodified.  Starting with the
# identity permutation and repeatedly applying this function will iterate
# through all possible permutations of a given order.
# 
#   Returns: Cint
function gsl_permutation_next(p::Ptr{gsl_permutation})
    gsl_errno = ccall( (:gsl_permutation_next, :libgsl), Cint,
        (Ptr{gsl_permutation}, ), p )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return p
end


# This function steps backwards from the permutation p to the previous
# permutation in lexicographic order, returning GSL_SUCCESS.  If no previous
# permutation is available it returns GSL_FAILURE and leaves p unmodified.
# 
#   Returns: Cint
function gsl_permutation_prev()
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    gsl_errno = ccall( (:gsl_permutation_prev, :libgsl), Cint,
        (Ptr{gsl_permutation}, ), p )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(p)
end
