#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 12.2 Sorting vectors #
########################
export gsl_sort, gsl_sort_vector, gsl_sort_index, gsl_sort_vector_index


# This function sorts the n elements of the array data with stride stride into
# ascending numerical order.
# 
#   Returns: Void
function gsl_sort (data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort, "libgsl"), Void, (Ptr{Cdouble}, Csize_t, Csize_t),
        data, stride, n )
end


### Function uses unknown type; disabled
### # This function sorts the elements of the vector v into ascending numerical
# order.
# 
### #   Returns: Void
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector (v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector, "libgsl"), Void, (Ptr{gsl_vector}, ), v )
### end


# This function indirectly sorts the n elements of the array data with stride
# stride into ascending order, storing the resulting permutation in p.  The
# array p must be allocated with a sufficient length to store the n elements of
# the permutation.  The elements of p give the index of the array element which
# would have been stored in that position if the array had been sorted in
# place.  The array data is not changed.
# 
#   Returns: Void
function gsl_sort_index (p::Ptr{Csize_t}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort_index, "libgsl"), Void, (Ptr{Csize_t}, Ptr{Cdouble},
        Csize_t, Csize_t), p, data, stride, n )
end


### Function uses unknown type; disabled
### # This function indirectly sorts the elements of the vector v into ascending
# order, storing the resulting permutation in p.  The elements of p give the
# index of the vector element which would have been stored in that position if
# the vector had been sorted in place.  The first element of p gives the index
# of the least element in v, and the last element of p gives the index of the
# greatest element in v.  The vector v is not changed.
# 
### #   Returns: Cint
### #XXX Unknown input type p::Ptr{gsl_permutation}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector_index (p::Ptr{gsl_permutation}, v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector_index, "libgsl"), Cint, (Ptr{gsl_permutation},
###         Ptr{gsl_vector}), p, v )
### end