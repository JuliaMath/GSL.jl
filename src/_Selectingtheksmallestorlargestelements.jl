#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 12.3 Selecting the k smallest or largest elements #
#####################################################
export gsl_sort_smallest, gsl_sort_largest, gsl_sort_vector_smallest,
       gsl_sort_vector_largest, gsl_sort_smallest_index,
       gsl_sort_largest_index, gsl_sort_vector_smallest_index,
       gsl_sort_vector_largest_index


# This function copies the k smallest elements of the array src, of size n and
# stride stride, in ascending numerical order into the array dest.  The size k
# of the subset must be less than or equal to n.  The data src is not modified
# by this operation.
# 
#   Returns: Cint
function gsl_sort_smallest (dest::Ptr{Cdouble}, k::Csize_t, src::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort_smallest, "libgsl"), Cint, (Ptr{Cdouble}, Csize_t,
        Ptr{Cdouble}, Csize_t, Csize_t), dest, k, src, stride, n )
end


# This function copies the k largest elements of the array src, of size n and
# stride stride, in descending numerical order into the array dest. k must be
# less than or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function gsl_sort_largest (dest::Ptr{Cdouble}, k::Csize_t, src::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort_largest, "libgsl"), Cint, (Ptr{Cdouble}, Csize_t,
        Ptr{Cdouble}, Csize_t, Csize_t), dest, k, src, stride, n )
end


### Function uses unknown type; disabled
### # These functions copy the k smallest or largest elements of the vector v into
# the array dest. k must be less than or equal to the length of the vector v.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector_smallest (dest::Ptr{Cdouble}, k::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector_smallest, "libgsl"), Cint, (Ptr{Cdouble},
###         Csize_t, Ptr{gsl_vector}), dest, k, v )
### end


### Function uses unknown type; disabled
### # These functions copy the k smallest or largest elements of the vector v into
# the array dest. k must be less than or equal to the length of the vector v.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector_largest (dest::Ptr{Cdouble}, k::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector_largest, "libgsl"), Cint, (Ptr{Cdouble},
###         Csize_t, Ptr{gsl_vector}), dest, k, v )
### end


# This function stores the indices of the k smallest elements of the array src,
# of size n and stride stride, in the array p.  The indices are chosen so that
# the corresponding data is in ascending numerical order.  k must be less than
# or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function gsl_sort_smallest_index (p::Ptr{Csize_t}, k::Csize_t, src::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort_smallest_index, "libgsl"), Cint, (Ptr{Csize_t},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), p, k, src, stride, n )
end


# This function stores the indices of the k largest elements of the array src,
# of size n and stride stride, in the array p.  The indices are chosen so that
# the corresponding data is in descending numerical order.  k must be less than
# or equal to n. The data src is not modified by this operation.
# 
#   Returns: Cint
function gsl_sort_largest_index (p::Ptr{Csize_t}, k::Csize_t, src::Ptr{Cdouble}, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_sort_largest_index, "libgsl"), Cint, (Ptr{Csize_t},
        Csize_t, Ptr{Cdouble}, Csize_t, Csize_t), p, k, src, stride, n )
end


### Function uses unknown type; disabled
### # These functions store the indices of the k smallest or largest elements of
# the vector v in the array p. k must be less than or equal to the length of
# the vector v.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector_smallest_index (p::Ptr{Csize_t}, k::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector_smallest_index, "libgsl"), Cint,
###         (Ptr{Csize_t}, Csize_t, Ptr{gsl_vector}), p, k, v )
### end


### Function uses unknown type; disabled
### # These functions store the indices of the k smallest or largest elements of
# the vector v in the array p. k must be less than or equal to the length of
# the vector v.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_sort_vector_largest_index (p::Ptr{Csize_t}, k::Csize_t, v::Ptr{gsl_vector})
###     ccall( (:gsl_sort_vector_largest_index, "libgsl"), Cint, (Ptr{Csize_t},
###         Csize_t, Ptr{gsl_vector}), p, k, v )
### end