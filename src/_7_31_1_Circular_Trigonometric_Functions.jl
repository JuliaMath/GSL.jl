#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 7.31.1 Circular Trigonometric Functions #
###########################################
export sf_sin, sf_sin_e, sf_cos, sf_cos_e, sf_hypot, sf_hypot_e, sf_sinc,
       sf_sinc_e


# These routines compute the sine function \sin(x).
# 
#   Returns: Cdouble
function sf_sin(x::Real)
    ccall( (:gsl_sf_sin, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_sin


# These routines compute the sine function \sin(x).
# 
#   Returns: Cint
function sf_sin_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_sin_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_sin_e


# These routines compute the cosine function \cos(x).
# 
#   Returns: Cdouble
function sf_cos(x::Real)
    ccall( (:gsl_sf_cos, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_cos


# These routines compute the cosine function \cos(x).
# 
#   Returns: Cint
function sf_cos_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_cos_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_cos_e


# These routines compute the hypotenuse function  \sqrt{x^2 + y^2} avoiding
# overflow and underflow.
# 
#   Returns: Cdouble
function sf_hypot(x::Real, y::Real)
    ccall( (:gsl_sf_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y )
end
Compat.@dep_vectorize_2arg Number sf_hypot


# These routines compute the hypotenuse function  \sqrt{x^2 + y^2} avoiding
# overflow and underflow.
# 
#   Returns: Cint
function sf_hypot_e(x::Real, y::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hypot_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_hypot_e


# These routines compute \sinc(x) = \sin(\pi x) / (\pi x) for any value of x.
# 
#   Returns: Cdouble
function sf_sinc(x::Real)
    ccall( (:gsl_sf_sinc, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_sinc


# These routines compute \sinc(x) = \sin(\pi x) / (\pi x) for any value of x.
# 
#   Returns: Cint
function sf_sinc_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_sinc_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_sinc_e
