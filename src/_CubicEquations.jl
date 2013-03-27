#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 6.4 Cubic Equations #
#######################
export gsl_poly_solve_cubic, gsl_poly_complex_solve_cubic


# This function finds the real roots of the cubic equation,                 x^3
# + a x^2 + b x + c = 0  with a leading coefficient of unity.  The number of
# real roots (either one or three) is returned, and their locations are stored
# in x0, x1 and x2.  If one real root is found then only x0 is modified.  When
# three real roots are found they are stored in x0, x1 and x2 in ascending
# order.  The case of coincident roots is not considered special.  For example,
# the equation (x-1)^3=0 will have three roots with exactly equal values.  As
# in the quadratic case, finite precision may cause equal or closely-spaced
# real roots to move off the real axis into the complex plane, leading to a
# discrete change in the number of real roots.
# 
#   Returns: Cint
function gsl_poly_solve_cubic (a::Cdouble, b::Cdouble, c::Cdouble, x0::Ptr{Cdouble}, x1::Ptr{Cdouble}, x2::Ptr{Cdouble})
    ccall( (:gsl_poly_solve_cubic, "libgsl"), Cint, (Cdouble, Cdouble,
        Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), a, b, c, x0, x1, x2
        )
end


# This function finds the complex roots of the cubic equation,
# z^3 + a z^2 + b z + c = 0  The number of complex roots is returned (always
# three) and the locations of the roots are stored in z0, z1 and z2.  The roots
# are returned in ascending order, sorted first by their real components and
# then by their imaginary components.
# 
#   Returns: Cint
function gsl_poly_complex_solve_cubic (a::Cdouble, b::Cdouble, c::Cdouble, z0::Ptr{gsl_complex}, z1::Ptr{gsl_complex}, z2::Ptr{gsl_complex})
    ccall( (:gsl_poly_complex_solve_cubic, "libgsl"), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{gsl_complex}, Ptr{gsl_complex},
        Ptr{gsl_complex}), a, b, c, z0, z1, z2 )
end