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
#   Returns: Cvoid
function permutation_reverse()
    p = Ref{gsl_permutation}()
    ccall( (:gsl_permutation_reverse, libgsl), Cvoid,
        (Ref{gsl_permutation}, ), p )
    return p[]
end


# This function computes the inverse of the permutation p, storing the result
# in inv.
#
#   Returns: Cint
function permutation_inverse(p::Ref{gsl_permutation})
    inv = Ref{gsl_permutation}()
    errno = ccall( (:gsl_permutation_inverse, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_permutation}), inv, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return inv[]
end


# This function advances the permutation p to the next permutation in
# lexicographic order and returns GSL_SUCCESS.  If no further permutations are
# available it returns GSL_FAILURE and leaves p unmodified.  Starting with the
# identity permutation and repeatedly applying this function will iterate
# through all possible permutations of a given order.
#
#   Returns: Cint
function permutation_next(p::Ref{gsl_permutation})
    errno = ccall( (:gsl_permutation_next, libgsl), Cint,
        (Ref{gsl_permutation}, ), p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function steps backwards from the permutation p to the previous
# permutation in lexicographic order, returning GSL_SUCCESS.  If no previous
# permutation is available it returns GSL_FAILURE and leaves p unmodified.
#
#   Returns: Cint
function permutation_prev()
    p = Ref{gsl_permutation}()
    errno = ccall( (:gsl_permutation_prev, libgsl), Cint,
        (Ref{gsl_permutation}, ), p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p[]
end
