#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.3.3 Initializing vector elements #
######################################
export vector_set_all, vector_set_zero, vector_set_basis


# This function sets all the elements of the vector v to the value x.
# 
#   Returns: Void
function vector_set_all(x::Real)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_set_all, :libgsl), Void, (Ptr{gsl_vector},
        Cdouble), v, x )
    return unsafe_ref(v)
end
@vectorize_1arg Number vector_set_all


# This function sets all the elements of the vector v to zero.
# 
#   Returns: Void
function vector_set_zero()
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_set_zero, :libgsl), Void, (Ptr{gsl_vector}, ), v )
    return unsafe_ref(v)
end


# This function makes a basis vector by setting all the elements of the vector
# v to zero except for the i-th element which is set to one.
# 
#   Returns: Cint
function vector_set_basis(i::Integer)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_vector_set_basis, :libgsl), Cint,
        (Ptr{gsl_vector}, Csize_t), v, i )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(v)
end
@vectorize_1arg Number vector_set_basis
