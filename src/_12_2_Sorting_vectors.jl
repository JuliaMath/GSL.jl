#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 12.2 Sorting vectors #
########################
export sort, sort_vector, sort_index, sort_vector_index


# This function sorts the n elements of the array data with stride stride into
# ascending numerical order.
# 
#   Returns: Void
function sort(stride::Integer, n::Integer)
    data = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_sort, :libgsl), Void, (Ptr{Cdouble}, Csize_t, Csize_t),
        data, stride, n )
    return unsafe_ref(data)
end
@vectorize_2arg Number sort


# This function sorts the elements of the vector v into ascending numerical
# order.
# 
#   Returns: Void
function sort_vector()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_sort_vector, :libgsl), Void, (Ptr{gsl_vector}, ), v )
    return unsafe_ref(v)
end


# This function indirectly sorts the n elements of the array data with stride
# stride into ascending order, storing the resulting permutation in p.  The
# array p must be allocated with a sufficient length to store the n elements of
# the permutation.  The elements of p give the index of the array element which
# would have been stored in that position if the array had been sorted in
# place.  The array data is not changed.
# 
#   Returns: Void
function sort_index{tA<:Real}(data_in::Vector{tA}, stride::Integer, n::Integer)
    convert(Vector{Cdouble}, data_in)
    p = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    ccall( (:gsl_sort_index, :libgsl), Void, (Ptr{Csize_t}, Ptr{Cdouble},
        Csize_t, Csize_t), p, data, stride, n )
    return unsafe_ref(p)
end


# This function indirectly sorts the elements of the vector v into ascending
# order, storing the resulting permutation in p.  The elements of p give the
# index of the vector element which would have been stored in that position if
# the vector had been sorted in place.  The first element of p gives the index
# of the least element in v, and the last element of p gives the index of the
# greatest element in v.  The vector v is not changed.
# 
#   Returns: Cint
function sort_vector_index(v::Ptr{gsl_vector})
    p = convert(Ptr{gsl_permutation}, Array(gsl_permutation, 1))
    errno = ccall( (:gsl_sort_vector_index, :libgsl), Cint,
        (Ptr{gsl_permutation}, Ptr{gsl_vector}), p, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(p)
end
