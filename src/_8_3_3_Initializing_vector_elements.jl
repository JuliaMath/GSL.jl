#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.3.3 Initializing vector elements #
######################################
export gsl_vector_set_all, gsl_vector_set_zero, gsl_vector_set_basis


# This function sets all the elements of the vector v to the value x.
# 
#   Returns: Void
function gsl_vector_set_all(x::Cdouble)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_set_all, :libgsl), Void, (Ptr{gsl_vector},
        Cdouble), v, x )
    return unsafe_ref(v)
end


# This function sets all the elements of the vector v to zero.
# 
#   Returns: Void
function gsl_vector_set_zero()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_set_zero, :libgsl), Void, (Ptr{gsl_vector}, ), v )
    return unsafe_ref(v)
end


# This function makes a basis vector by setting all the elements of the vector
# v to zero except for the i-th element which is set to one.
# 
#   Returns: Cint
function gsl_vector_set_basis{gsl_int<:Integer}(i::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_set_basis, :libgsl), Cint,
        (Ptr{gsl_vector}, Csize_t), v, i )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(v)
end
