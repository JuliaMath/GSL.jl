#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 9.8 Permutations in cyclic form #
###################################
export permutation_linear_to_canonical, permutation_canonical_to_linear,
       permutation_inversions, permutation_linear_cycles,
       permutation_canonical_cycles


# This function computes the canonical form of the permutation p and stores it
# in the output argument q.
#
#   Returns: Cint
function permutation_linear_to_canonical(p::Ref{gsl_permutation})
    q = permutation_alloc(permutation_size(p))
    errno = ccall( (:gsl_permutation_linear_to_canonical, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_permutation}), q, p )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return q
end


# This function converts a permutation q in canonical form back into linear
# form storing it in the output argument p.
#
#   Returns: Cint
function permutation_canonical_to_linear(q::Ref{gsl_permutation})
    p = permutation_alloc(permutation_size(q))
    errno = ccall( (:gsl_permutation_canonical_to_linear, libgsl), Cint,
        (Ref{gsl_permutation}, Ref{gsl_permutation}), p, q )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return p
end


# This function counts the number of inversions in the permutation p.  An
# inversion is any pair of elements that are not in order.  For example, the
# permutation 2031 has three inversions, corresponding to the pairs (2,0) (2,1)
# and (3,1).  The identity permutation has no inversions.
#
#   Returns: Csize_t
function permutation_inversions(p::Ref{gsl_permutation})
    ccall( (:gsl_permutation_inversions, libgsl), Csize_t,
        (Ref{gsl_permutation}, ), p )
end


# This function counts the number of cycles in the permutation p, given in
# linear form.
#
#   Returns: Csize_t
function permutation_linear_cycles(p::Ref{gsl_permutation})
    ccall( (:gsl_permutation_linear_cycles, libgsl), Csize_t,
        (Ref{gsl_permutation}, ), p )
end


# This function counts the number of cycles in the permutation q, given in
# canonical form.
#
#   Returns: Csize_t
function permutation_canonical_cycles(q::Ref{gsl_permutation})
    ccall( (:gsl_permutation_canonical_cycles, libgsl), Csize_t,
        (Ref{gsl_permutation}, ), q )
end
