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
function gsl_vector_add (a::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    ccall( (:gsl_vector_add, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
end


# This function subtracts the elements of vector b from the elements of vector
# a.  The result a_i \leftarrow a_i - b_i is stored in a and b remains
# unchanged.  The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_sub (a::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    ccall( (:gsl_vector_sub, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
end


# This function multiplies the elements of vector a by the elements of vector
# b.  The result a_i \leftarrow a_i * b_i is stored in a and b remains
# unchanged. The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_mul (a::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    ccall( (:gsl_vector_mul, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
end


# This function divides the elements of vector a by the elements of vector b.
# The result a_i \leftarrow a_i / b_i is stored in a and b remains unchanged.
# The two vectors must have the same length.
# 
#   Returns: Cint
function gsl_vector_div (a::Ptr{gsl_vector}, b::Ptr{gsl_vector})
    ccall( (:gsl_vector_div, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), a, b )
end


# This function multiplies the elements of vector a by the constant factor x.
# The result a_i \leftarrow x a_i is stored in a.
# 
#   Returns: Cint
function gsl_vector_scale (a::Ptr{gsl_vector}, x::Cdouble)
    ccall( (:gsl_vector_scale, "libgsl"), Cint, (Ptr{gsl_vector}, Cdouble),
        a, x )
end


# This function adds the constant value x to the elements of the vector a.  The
# result a_i \leftarrow a_i + x is stored in a.
# 
#   Returns: Cint
function gsl_vector_add_constant (a::Ptr{gsl_vector}, x::Cdouble)
    ccall( (:gsl_vector_add_constant, "libgsl"), Cint, (Ptr{gsl_vector},
        Cdouble), a, x )
end