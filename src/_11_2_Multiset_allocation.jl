#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 11.2 Multiset allocation #
############################
export multiset_alloc, multiset_calloc, multiset_init_first,
       multiset_init_last, multiset_free, multiset_memcpy


# This function allocates memory for a new multiset with parameters n, k.  The
# multiset is not initialized and its elements are undefined.  Use the function
# gsl_multiset_calloc if you want to create a multiset which is initialized to
# the lexicographically first multiset element. A null pointer is returned if
# insufficient memory is available to create the multiset.
#
#   Returns: Ptr{gsl_multiset}
function multiset_alloc(n::Integer, k::Integer)
    output_ptr = ccall( (:gsl_multiset_alloc, libgsl), Ptr{gsl_multiset},
        (Csize_t, Csize_t), n, k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number multiset_alloc


# This function allocates memory for a new multiset with parameters n, k and
# initializes it to the lexicographically first multiset element. A null
# pointer is returned if insufficient memory is available to create the
# multiset.
#
#   Returns: Ptr{gsl_multiset}
function multiset_calloc(n::Integer, k::Integer)
    output_ptr = ccall( (:gsl_multiset_calloc, libgsl), Ptr{gsl_multiset},
        (Csize_t, Csize_t), n, k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number multiset_calloc


# This function initializes the multiset c to the lexicographically first
# multiset element, i.e. 0 repeated k times.
#
#   Returns: Void
function multiset_init_first()
    c = Ref{gsl_multiset}()
    ccall( (:gsl_multiset_init_first, libgsl), Void, (Ref{gsl_multiset},
        ), c )
    return c[]
end


# This function initializes the multiset c to the lexicographically last
# multiset element, i.e. n-1 repeated k times.
#
#   Returns: Void
function multiset_init_last()
    c = Ref{gsl_multiset}()
    ccall( (:gsl_multiset_init_last, libgsl), Void, (Ref{gsl_multiset}, ),
        c )
    return c[]
end


# This function frees all the memory used by the multiset c.
#
#   Returns: Void
function multiset_free(c::Ref{gsl_multiset})
    ccall( (:gsl_multiset_free, libgsl), Void, (Ref{gsl_multiset}, ), c )
end


# This function copies the elements of the multiset src into the multiset dest.
# The two multisets must have the same size.
#
#   Returns: Cint
function multiset_memcpy(src::Ref{gsl_multiset})
    dest = Ref{gsl_multiset}()
    errno = ccall( (:gsl_multiset_memcpy, libgsl), Cint,
        (Ref{gsl_multiset}, Ref{gsl_multiset}), dest, src )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return dest[]
end
