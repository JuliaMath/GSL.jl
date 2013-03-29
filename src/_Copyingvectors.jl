#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 8.3.6 Copying vectors #
#########################
export gsl_vector_memcpy, gsl_vector_swap


# This function copies the elements of the vector src into the vector dest.
# The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_memcpy (dest::Ptr{gsl_vector}, src::Ptr{gsl_vector})
    ccall( (:gsl_vector_memcpy, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), dest, src )
end


# This function exchanges the elements of the vectors v and w by copying.  The
# two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_swap (v::Ptr{gsl_vector}, w::Ptr{gsl_vector})
    ccall( (:gsl_vector_swap, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), v, w )
end
