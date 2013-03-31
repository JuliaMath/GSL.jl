#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 8.3.8 Vector operations #
###########################
export gsl_vector_add, gsl_vector_sub, gsl_vector_mul, gsl_vector_div,
       gsl_vector_scale, gsl_vector_add_constant


# This function adds the elements of vector b to the elements of vector a.  The
# result a_i \leftarrow a_i + b_i is stored in a and b remains unchanged.  The
# two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_add(b::Ptr{gsl_vector})
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_add, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end


# This function subtracts the elements of vector b from the elements of vector
# a.  The result a_i \leftarrow a_i - b_i is stored in a and b remains
# unchanged.  The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_sub(b::Ptr{gsl_vector})
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_sub, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end


# This function multiplies the elements of vector a by the elements of vector
# b.  The result a_i \leftarrow a_i * b_i is stored in a and b remains
# unchanged. The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_mul(b::Ptr{gsl_vector})
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_mul, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end


# This function divides the elements of vector a by the elements of vector b.
# The result a_i \leftarrow a_i / b_i is stored in a and b remains unchanged.
# The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_div(b::Ptr{gsl_vector})
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_div, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end


# This function multiplies the elements of vector a by the constant factor x.
# The result a_i \leftarrow x a_i is stored in a.
# 
#   Returns: Cint
function gsl_vector_scale(x::Cdouble)
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_scale, :libgsl), Cint,
        (Ptr{gsl_vector}, Cdouble), a, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end


# This function adds the constant value x to the elements of the vector a.  The
# result a_i \leftarrow a_i + x is stored in a.
# 
#   Returns: Cint
function gsl_vector_add_constant(x::Cdouble)
    a = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    gsl_errno = ccall( (:gsl_vector_add_constant, :libgsl), Cint,
        (Ptr{gsl_vector}, Cdouble), a, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(a)
end
