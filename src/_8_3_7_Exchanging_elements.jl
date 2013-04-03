#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 8.3.7 Exchanging elements #
#############################
export vector_swap_elements, vector_reverse


# This function exchanges the i-th and j-th elements of the vector v in-place.
# 
#   Returns: Cint
function vector_swap_elements(i::Integer, j::Integer)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_vector_swap_elements, :libgsl), Cint,
        (Ptr{gsl_vector}, Csize_t, Csize_t), v, i, j )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)
end
@vectorize_2arg Number vector_swap_elements


# This function reverses the order of the elements of the vector v.
# 
#   Returns: Cint
function vector_reverse()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_vector_reverse, :libgsl), Cint, (Ptr{gsl_vector},
        ), v )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)
end
