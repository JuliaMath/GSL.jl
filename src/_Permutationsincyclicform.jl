#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 9.8 Permutations in cyclic form #
###################################
export gsl_permutation_linear_to_canonical,
       gsl_permutation_canonical_to_linear, gsl_permutation_inversions,
       gsl_permutation_linear_cycles, gsl_permutation_canonical_cycles


### Function uses unknown type; disabled
### # This function computes the canonical form of the permutation p and stores it
# in the output argument q.
# 
### #   Returns: Cint
### #XXX Unknown input type q::Ptr{gsl_permutation}
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_linear_to_canonical (q::Ptr{gsl_permutation}, p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_linear_to_canonical, "libgsl"), Cint,
###         (Ptr{gsl_permutation}, Ptr{gsl_permutation}), q, p )
### end


### Function uses unknown type; disabled
### # This function converts a permutation q in canonical form back into linear
# form storing it in the output argument p.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### #XXX Unknown input type q::Ptr{gsl_permutation}
### function gsl_permutation_canonical_to_linear (p::Ptr{gsl_permutation}, q::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_canonical_to_linear, "libgsl"), Cint,
###         (Ptr{gsl_permutation}, Ptr{gsl_permutation}), p, q )
### end


### Function uses unknown type; disabled
### # This function counts the number of inversions in the permutation p.  An
# inversion is any pair of elements that are not in order.  For example, the
# permutation 2031 has three inversions, corresponding to the pairs (2,0) (2,1)
# and (3,1).  The identity permutation has no inversions.
# 
### #   Returns: Csize_t
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_inversions (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_inversions, "libgsl"), Csize_t,
###         (Ptr{gsl_permutation}, ), p )
### end


### Function uses unknown type; disabled
### # This function counts the number of cycles in the permutation p, given in
# linear form.
# 
### #   Returns: Csize_t
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_linear_cycles (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_linear_cycles, "libgsl"), Csize_t,
###         (Ptr{gsl_permutation}, ), p )
### end


### Function uses unknown type; disabled
### # This function counts the number of cycles in the permutation q, given in
# canonical form.
# 
### #   Returns: Csize_t
### #XXX Unknown input type q::Ptr{gsl_permutation}
### function gsl_permutation_canonical_cycles (q::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_canonical_cycles, "libgsl"), Csize_t,
###         (Ptr{gsl_permutation}, ), q )
### end