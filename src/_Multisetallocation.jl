#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 11.2 Multiset allocation #
############################
export gsl_multiset_alloc, gsl_multiset_calloc, gsl_multiset_init_first,
       gsl_multiset_init_last, gsl_multiset_free, gsl_multiset_memcpy


# This function allocates memory for a new multiset with parameters n, k.  The
# multiset is not initialized and its elements are undefined.  Use the function
# gsl_multiset_calloc if you want to create a multiset which is initialized to
# the lexicographically first multiset element. A null pointer is returned if
# insufficient memory is available to create the multiset.
# 
#   Returns: Ptr{gsl_multiset}
function gsl_multiset_alloc (n::Csize_t, k::Csize_t)
    ccall( (:gsl_multiset_alloc, "libgsl"), Ptr{gsl_multiset}, (Csize_t,
        Csize_t), n, k )
end


# This function allocates memory for a new multiset with parameters n, k and
# initializes it to the lexicographically first multiset element. A null
# pointer is returned if insufficient memory is available to create the
# multiset.
# 
#   Returns: Ptr{gsl_multiset}
function gsl_multiset_calloc (n::Csize_t, k::Csize_t)
    ccall( (:gsl_multiset_calloc, "libgsl"), Ptr{gsl_multiset}, (Csize_t,
        Csize_t), n, k )
end


# This function initializes the multiset c to the lexicographically first
# multiset element, i.e. 0 repeated k times.
# 
#   Returns: Void
function gsl_multiset_init_first (c::Ptr{gsl_multiset})
    ccall( (:gsl_multiset_init_first, "libgsl"), Void, (Ptr{gsl_multiset},
        ), c )
end


# This function initializes the multiset c to the lexicographically last
# multiset element, i.e. n-1 repeated k times.
# 
#   Returns: Void
function gsl_multiset_init_last (c::Ptr{gsl_multiset})
    ccall( (:gsl_multiset_init_last, "libgsl"), Void, (Ptr{gsl_multiset},
        ), c )
end


# This function frees all the memory used by the multiset c.
# 
#   Returns: Void
function gsl_multiset_free (c::Ptr{gsl_multiset})
    ccall( (:gsl_multiset_free, "libgsl"), Void, (Ptr{gsl_multiset}, ), c )
end


# This function copies the elements of the multiset src into the multiset dest.
# The two multisets must have the same size.
# 
#   Returns: Cint
function gsl_multiset_memcpy (dest::Ptr{gsl_multiset}, src::Ptr{gsl_multiset})
    ccall( (:gsl_multiset_memcpy, "libgsl"), Cint, (Ptr{gsl_multiset},
        Ptr{gsl_multiset}), dest, src )
end