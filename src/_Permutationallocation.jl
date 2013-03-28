#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 9.2 Permutation allocation #
##############################
export gsl_permutation_alloc, gsl_permutation_calloc, gsl_permutation_init,
       gsl_permutation_free, gsl_permutation_memcpy


### Function uses unknown type; disabled
### # This function allocates memory for a new permutation of size n.  The
# permutation is not initialized and its elements are undefined.  Use the
# function gsl_permutation_calloc if you want to create a permutation which is
# initialized to the identity. A null pointer is returned if insufficient
# memory is available to create the permutation.
# 
### #   Returns: Ptr{gsl_permutation}
### #XXX Unknown output type Ptr{gsl_permutation}
### function gsl_permutation_alloc (n::Csize_t)
###     ccall( (:gsl_permutation_alloc, "libgsl"), Ptr{gsl_permutation},
###         (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function allocates memory for a new permutation of size n and
# initializes it to the identity. A null pointer is returned if insufficient
# memory is available to create the permutation.
# 
### #   Returns: Ptr{gsl_permutation}
### #XXX Unknown output type Ptr{gsl_permutation}
### function gsl_permutation_calloc (n::Csize_t)
###     ccall( (:gsl_permutation_calloc, "libgsl"), Ptr{gsl_permutation},
###         (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function initializes the permutation p to the identity, i.e.
# (0,1,2,...,n-1).
# 
### #   Returns: Void
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_init (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_init, "libgsl"), Void, (Ptr{gsl_permutation},
###         ), p )
### end


### Function uses unknown type; disabled
### # This function frees all the memory used by the permutation p.
# 
### #   Returns: Void
### #XXX Unknown input type p::Ptr{gsl_permutation}
### function gsl_permutation_free (p::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_free, "libgsl"), Void, (Ptr{gsl_permutation},
###         ), p )
### end


### Function uses unknown type; disabled
### # This function copies the elements of the permutation src into the permutation
# dest.  The two permutations must have the same size.
# 
### #   Returns: Cint
### #XXX Unknown input type dest::Ptr{gsl_permutation}
### #XXX Unknown input type src::Ptr{gsl_permutation}
### function gsl_permutation_memcpy (dest::Ptr{gsl_permutation}, src::Ptr{gsl_permutation})
###     ccall( (:gsl_permutation_memcpy, "libgsl"), Cint,
###         (Ptr{gsl_permutation}, Ptr{gsl_permutation}), dest, src )
### end