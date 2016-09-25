#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 7.5.7 Regular Modified Spherical Bessel Functions #
#####################################################
export sf_bessel_i0_scaled, sf_bessel_i0_scaled_e, sf_bessel_i1_scaled,
       sf_bessel_i1_scaled_e, sf_bessel_i2_scaled, sf_bessel_i2_scaled_e,
       sf_bessel_il_scaled, sf_bessel_il_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
#
#   Returns: Cdouble
function sf_bessel_i0_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i0_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_i0_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of zeroth order, \exp(-|x|) i_0(x).
#
#   Returns: Cint
function sf_bessel_i0_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_i0_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_i0_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
#
#   Returns: Cdouble
function sf_bessel_i1_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i1_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_i1_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of first order, \exp(-|x|) i_1(x).
#
#   Returns: Cint
function sf_bessel_i1_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_i1_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_i1_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
#
#   Returns: Cdouble
function sf_bessel_i2_scaled(x::Real)
    ccall( (:gsl_sf_bessel_i2_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_i2_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of second order,  \exp(-|x|) i_2(x)
#
#   Returns: Cint
function sf_bessel_i2_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_i2_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_i2_scaled_e


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
#
#   Returns: Cdouble
function sf_bessel_il_scaled(l::Integer, x::Real)
    ccall( (:gsl_sf_bessel_il_scaled, libgsl), Cdouble, (Cint, Cdouble),
        l, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_il_scaled


# These routines compute the scaled regular modified spherical Bessel function
# of order l,  \exp(-|x|) i_l(x)
#
#   Returns: Cint
function sf_bessel_il_scaled_e(l::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_il_scaled_e, libgsl), Cint, (Cint,
        Cdouble, Ref{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_il_scaled_e
