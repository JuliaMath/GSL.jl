#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 5.3 Complex arithmetic operators #
####################################
export gsl_complex_add, gsl_complex_sub, gsl_complex_mul, gsl_complex_div,
       gsl_complex_add_real, gsl_complex_sub_real, gsl_complex_mul_real,
       gsl_complex_div_real, gsl_complex_add_imag, gsl_complex_sub_imag,
       gsl_complex_mul_imag, gsl_complex_div_imag, gsl_complex_conjugate,
       gsl_complex_inverse, gsl_complex_negative


# This function returns the sum of the complex numbers a and b, z=a+b.
# 
#   Returns: gsl_complex
function gsl_complex_add(a::gsl_complex, b::gsl_complex)
    ccall( (:gsl_complex_add, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), a, b )
end


# This function returns the difference of the complex numbers a and b, z=a-b.
# 
#   Returns: gsl_complex
function gsl_complex_sub(a::gsl_complex, b::gsl_complex)
    ccall( (:gsl_complex_sub, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), a, b )
end


# This function returns the product of the complex numbers a and b, z=ab.
# 
#   Returns: gsl_complex
function gsl_complex_mul(a::gsl_complex, b::gsl_complex)
    ccall( (:gsl_complex_mul, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), a, b )
end


# This function returns the quotient of the complex numbers a and b, z=a/b.
# 
#   Returns: gsl_complex
function gsl_complex_div(a::gsl_complex, b::gsl_complex)
    ccall( (:gsl_complex_div, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), a, b )
end


# This function returns the sum of the complex number a and the real number x,
# z=a+x.
# 
#   Returns: gsl_complex
function gsl_complex_add_real(a::gsl_complex, x::Real)
    ccall( (:gsl_complex_add_real, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, x )
end


# This function returns the difference of the complex number a and the real
# number x, z=a-x.
# 
#   Returns: gsl_complex
function gsl_complex_sub_real(a::gsl_complex, x::Real)
    ccall( (:gsl_complex_sub_real, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, x )
end


# This function returns the product of the complex number a and the real number
# x, z=ax.
# 
#   Returns: gsl_complex
function gsl_complex_mul_real(a::gsl_complex, x::Real)
    ccall( (:gsl_complex_mul_real, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, x )
end


# This function returns the quotient of the complex number a and the real
# number x, z=a/x.
# 
#   Returns: gsl_complex
function gsl_complex_div_real(a::gsl_complex, x::Real)
    ccall( (:gsl_complex_div_real, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, x )
end


# This function returns the sum of the complex number a and the imaginary
# number iy, z=a+iy.
# 
#   Returns: gsl_complex
function gsl_complex_add_imag(a::gsl_complex, y::Real)
    ccall( (:gsl_complex_add_imag, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, y )
end


# This function returns the difference of the complex number a and the
# imaginary number iy, z=a-iy.
# 
#   Returns: gsl_complex
function gsl_complex_sub_imag(a::gsl_complex, y::Real)
    ccall( (:gsl_complex_sub_imag, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, y )
end


# This function returns the product of the complex number a and the imaginary
# number iy, z=a*(iy).
# 
#   Returns: gsl_complex
function gsl_complex_mul_imag(a::gsl_complex, y::Real)
    ccall( (:gsl_complex_mul_imag, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, y )
end


# This function returns the quotient of the complex number a and the imaginary
# number iy, z=a/(iy).
# 
#   Returns: gsl_complex
function gsl_complex_div_imag(a::gsl_complex, y::Real)
    ccall( (:gsl_complex_div_imag, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), a, y )
end


# This function returns the complex conjugate of the complex number z, z^* = x
# - i y.
# 
#   Returns: gsl_complex
function gsl_complex_conjugate(z::gsl_complex)
    ccall( (:gsl_complex_conjugate, :libgsl), gsl_complex, (gsl_complex, ),
        z )
end


# This function returns the inverse, or reciprocal, of the complex number z,
# 1/z = (x - i y)/(x^2 + y^2).
# 
#   Returns: gsl_complex
function gsl_complex_inverse(z::gsl_complex)
    ccall( (:gsl_complex_inverse, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the negative of the complex number z, -z = (-x) +
# i(-y).
# 
#   Returns: gsl_complex
function gsl_complex_negative(z::gsl_complex)
    ccall( (:gsl_complex_negative, :libgsl), gsl_complex, (gsl_complex, ),
        z )
end
