#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 7.5.6 Irregular Spherical Bessel Functions #
##############################################
export sf_bessel_y0, sf_bessel_y0_e, sf_bessel_y1, sf_bessel_y1_e,
       sf_bessel_y2, sf_bessel_y2_e, sf_bessel_yl, sf_bessel_yl_e

# These routines compute the irregular spherical Bessel function of zeroth
# order, y_0(x) = -\cos(x)/x.
#
#   Returns: Cdouble
function sf_bessel_y0(x::Real)
    ccall( (:gsl_sf_bessel_y0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_y0


# These routines compute the irregular spherical Bessel function of zeroth
# order, y_0(x) = -\cos(x)/x.
#
#   Returns: Cint
function sf_bessel_y0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_y0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_y0_e


# These routines compute the irregular spherical Bessel function of first
# order, y_1(x) = -(\cos(x)/x + \sin(x))/x.
#
#   Returns: Cdouble
function sf_bessel_y1(x::Real)
    ccall( (:gsl_sf_bessel_y1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_y1


# These routines compute the irregular spherical Bessel function of first
# order, y_1(x) = -(\cos(x)/x + \sin(x))/x.
#
#   Returns: Cint
function sf_bessel_y1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_y1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_y1_e


# These routines compute the irregular spherical Bessel function of second
# order, y_2(x) = (-3/x^3 + 1/x)\cos(x) - (3/x^2)\sin(x).
#
#   Returns: Cdouble
function sf_bessel_y2(x::Real)
    ccall( (:gsl_sf_bessel_y2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_y2


# These routines compute the irregular spherical Bessel function of second
# order, y_2(x) = (-3/x^3 + 1/x)\cos(x) - (3/x^2)\sin(x).
#
#   Returns: Cint
function sf_bessel_y2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_y2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_y2_e


# These routines compute the irregular spherical Bessel function of order l,
# y_l(x), for  l >= 0.
#
#   Returns: Cdouble
function sf_bessel_yl(l::Integer, x::Real)
    ccall( (:gsl_sf_bessel_yl, libgsl), Cdouble, (Cint, Cdouble), l, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_yl


# These routines compute the irregular spherical Bessel function of order l,
# y_l(x), for  l >= 0.
#
#   Returns: Cint
function sf_bessel_yl_e(l::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_yl_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_yl_e
