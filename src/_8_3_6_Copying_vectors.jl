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
function gsl_vector_memcpy(src::Ptr{gsl_vector})
    dest = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_memcpy, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}), dest, src )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(dest)
end


# This function exchanges the elements of the vectors v and w by copying.  The
# two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_swap()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    w = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_swap, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), v, w )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v) ,unsafe_ref(w)
end
