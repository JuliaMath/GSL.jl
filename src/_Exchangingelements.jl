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
function gsl_vector_swap_elements (v::Ptr{gsl_vector}, i::Csize_t, j::Csize_t)
    ccall( (:gsl_vector_swap_elements, "libgsl"), Cint, (Ptr{gsl_vector},
        Csize_t, Csize_t), v, i, j )
end


# This function reverses the order of the elements of the vector v.
# 
#   Returns: Cint
function gsl_vector_reverse (v::Ptr{gsl_vector})
    ccall( (:gsl_vector_reverse, "libgsl"), Cint, (Ptr{gsl_vector}, ), v )
end