#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 12.3 Selecting the k smallest or largest elements #
#####################################################
export sort_smallest, sort_largest, sort_vector_smallest, sort_vector_largest,
       sort_smallest_index, sort_largest_index, sort_vector_smallest_index,
       sort_vector_largest_index


# This function copies the k smallest elements of the array src, of size n and
# stride stride, in ascending numerical order into the array dest.  The size k
# of the subset must be less than or equal to n.  The data src is not modified
# by this operation.
# 
#   Returns: Cint
function sort_smallest{tA<:Real}(k::Integer, src_in::Vector{tA}, stride::Integer, n::Integer)
    convert(Vector{Cdouble}, src_in)
    dest = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sort_smallest, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), dest, k, src, stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dest)
end


# This function copies the k largest elements of the array src, of size n and
# stride stride, in descending numerical order into the array dest. k must be
# less than or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function sort_largest{tA<:Real}(k::Integer, src_in::Vector{tA}, stride::Integer, n::Integer)
    convert(Vector{Cdouble}, src_in)
    dest = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sort_largest, :libgsl), Cint, (Ptr{Cdouble},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), dest, k, src, stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dest)
end


# These functions copy the k smallest or largest elements of the vector v into
# the array dest. k must be less than or equal to the length of the vector v.
# 
#   Returns: Cint
function sort_vector_smallest(k::Integer, v::Ptr{gsl_vector})
    dest = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sort_vector_smallest, :libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{gsl_vector}), dest, k, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dest)
end


# These functions copy the k smallest or largest elements of the vector v into
# the array dest. k must be less than or equal to the length of the vector v.
# 
#   Returns: Cint
function sort_vector_largest(k::Integer, v::Ptr{gsl_vector})
    dest = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sort_vector_largest, :libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{gsl_vector}), dest, k, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dest)
end


# This function stores the indices of the k smallest elements of the array src,
# of size n and stride stride, in the array p.  The indices are chosen so that
# the corresponding data is in ascending numerical order.  k must be less than
# or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function sort_smallest_index{tA<:Real}(k::Integer, src_in::Vector{tA}, stride::Integer, n::Integer)
    convert(Vector{Cdouble}, src_in)
    p = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    errno = ccall( (:gsl_sort_smallest_index, :libgsl), Cint,
        (Ptr{Csize_t}, Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), p, k, src,
        stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(p)
end


# This function stores the indices of the k largest elements of the array src,
# of size n and stride stride, in the array p.  The indices are chosen so that
# the corresponding data is in descending numerical order.  k must be less than
# or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function sort_largest_index{tA<:Real}(k::Integer, src_in::Vector{tA}, stride::Integer, n::Integer)
    convert(Vector{Cdouble}, src_in)
    p = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    errno = ccall( (:gsl_sort_largest_index, :libgsl), Cint, (Ptr{Csize_t},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), p, k, src, stride, n )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(p)
end


# These functions store the indices of the k smallest or largest elements of
# the vector v in the array p. k must be less than or equal to the length of
# the vector v.
# 
#   Returns: Cint
function sort_vector_smallest_index(k::Integer, v::Ptr{gsl_vector})
    p = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    errno = ccall( (:gsl_sort_vector_smallest_index, :libgsl), Cint,
        (Ptr{Csize_t}, Csize_t, Ptr{gsl_vector}), p, k, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(p)
end


# These functions store the indices of the k smallest or largest elements of
# the vector v in the array p. k must be less than or equal to the length of
# the vector v.
# 
#   Returns: Cint
function sort_vector_largest_index(k::Integer, v::Ptr{gsl_vector})
    p = convert(Ptr{Csize_t}, Array(Csize_t, 1))
    errno = ccall( (:gsl_sort_vector_largest_index, :libgsl), Cint,
        (Ptr{Csize_t}, Csize_t, Ptr{gsl_vector}), p, k, v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(p)
end
