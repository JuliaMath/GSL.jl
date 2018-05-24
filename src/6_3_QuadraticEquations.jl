#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 6.3 Quadratic Equations #
###########################
export poly_solve_quadratic, poly_complex_solve_quadratic


# This function finds the real roots of the quadratic equation,
# a x^2 + b x + c = 0  The number of real roots (either zero, one or two) is
# returned, and their locations are stored in x0 and x1.  If no real roots are
# found then x0 and x1 are not modified.  If one real root is found (i.e. if
# a=0) then it is stored in x0.  When two real roots are found they are stored
# in x0 and x1 in ascending order.  The case of coincident roots is not
# considered special.  For example (x-1)^2=0 will have two roots, which happen
# to have exactly equal values.          The number of roots found depends on
# the sign of the discriminant b^2 - 4 a c.  This will be subject to rounding
# and cancellation errors when computed in double precision, and will also be
# subject to errors if the coefficients of the polynomial are inexact.  These
# errors may cause a discrete change in the number of roots.  However, for
# polynomials with small integer coefficients the discriminant can always be
# computed exactly.
#
#   Returns: Cint
function poly_solve_quadratic(a::Cdouble, b::Cdouble, c::Cdouble)
    x0 = Ref{Float64}()
    x1 = Ref{Float64}()
    num_roots = ccall( (:gsl_poly_solve_quadratic, libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), a, b, c, x0,
        x1 )
    if num_roots==0
        nothing
    elseif num_roots==1
        x0[]
    elseif num_roots==2
        x0[], x1[]
    else #Not supposed to happen
        throw(GSL_ERROR, num_roots)
    end
end


# This function finds the complex roots of the quadratic equation,
# a z^2 + b z + c = 0  The number of complex roots is returned (either one or
# two) and the locations of the roots are stored in z0 and z1.  The roots are
# returned in ascending order, sorted first by their real components and then
# by their imaginary components.  If only one real root is found (i.e. if a=0)
# then it is stored in z0.
#
#   Returns: Cint
function poly_complex_solve_quadratic(a::Cdouble, b::Cdouble, c::Cdouble)
    z0 = Ref{Complex128}()
    z1 = Ref{Complex128}()
    num_roots = ccall( (:gsl_poly_complex_solve_quadratic, libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Ref{Nothing}, Ref{Nothing}), a, b,
        c, z0, z1 )
    if num_roots==0
        nothing
    elseif num_roots==1
        z0[]
    elseif num_roots==2
        z0[], z1[]
    else #Not supposed to happen
        throw(GSL_ERROR, num_roots)
    end
end
