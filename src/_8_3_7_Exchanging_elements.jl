#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 8.3.7 Exchanging elements #
#############################
export gsl_vector_swap_elements, gsl_vector_reverse


# This function exchanges the i-th and j-th elements of the vector v in-place.
# 
#   Returns: Cint
function gsl_vector_swap_elements{gsl_int<:Integer}(i::gsl_int, j::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_swap_elements, :libgsl), Cint,
        (Ptr{gsl_vector}, Csize_t, Csize_t), v, i, j )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)
end


# This function reverses the order of the elements of the vector v.
# 
#   Returns: Cint
function gsl_vector_reverse()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_reverse, :libgsl), Cint,
        (Ptr{gsl_vector}, ), v )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)
end
