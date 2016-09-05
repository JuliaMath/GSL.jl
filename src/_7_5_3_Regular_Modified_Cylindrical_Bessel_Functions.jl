#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.5.3 Regular Modified Cylindrical Bessel Functions #
#######################################################
export sf_bessel_I0, sf_bessel_I0_e, sf_bessel_I1, sf_bessel_I1_e,
       sf_bessel_In, sf_bessel_In_e, sf_bessel_In_array, sf_bessel_I0_scaled,
       sf_bessel_I0_scaled_e, sf_bessel_I1_scaled, sf_bessel_I1_scaled_e,
       sf_bessel_In_scaled, sf_bessel_In_scaled_e, sf_bessel_In_scaled_array


# These routines compute the regular modified cylindrical Bessel function of
# zeroth order, I_0(x).
# 
#   Returns: Cdouble
function sf_bessel_I0(x::Real)
    ccall( (:gsl_sf_bessel_I0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_I0


# These routines compute the regular modified cylindrical Bessel function of
# zeroth order, I_0(x).
# 
#   Returns: Cint
function sf_bessel_I0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_I0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_I0_e


# These routines compute the regular modified cylindrical Bessel function of
# first order, I_1(x).
# 
#   Returns: Cdouble
function sf_bessel_I1(x::Real)
    ccall( (:gsl_sf_bessel_I1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_I1


# These routines compute the regular modified cylindrical Bessel function of
# first order, I_1(x).
# 
#   Returns: Cint
function sf_bessel_I1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_I1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_I1_e


# These routines compute the regular modified cylindrical Bessel function of
# order n, I_n(x).
# 
#   Returns: Cdouble
function sf_bessel_In(n::Integer, x::Real)
    ccall( (:gsl_sf_bessel_In, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_In


# These routines compute the regular modified cylindrical Bessel function of
# order n, I_n(x).
# 
#   Returns: Cint
function sf_bessel_In_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_In_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_In_e


# This routine computes the values of the regular modified cylindrical Bessel
# functions I_n(x) for n from nmin to nmax inclusive, storing the results in
# the array result_array.  The start of the range nmin must be positive or
# zero.  The values are computed using recurrence relations for efficiency, and
# therefore may differ slightly from the exact values.
# 
#   Returns: Cint
function sf_bessel_In_array(nmin::Integer, nmax::Integer, x::Real)
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_bessel_In_array, libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble), nmin, nmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array[][1]
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of zeroth order \exp(-|x|) I_0(x).
# 
#   Returns: Cdouble
function sf_bessel_I0_scaled(x::Real)
    ccall( (:gsl_sf_bessel_I0_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_I0_scaled


# These routines compute the scaled regular modified cylindrical Bessel
# function of zeroth order \exp(-|x|) I_0(x).
# 
#   Returns: Cint
function sf_bessel_I0_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_I0_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_I0_scaled_e


# These routines compute the scaled regular modified cylindrical Bessel
# function of first order \exp(-|x|) I_1(x).
# 
#   Returns: Cdouble
function sf_bessel_I1_scaled(x::Real)
    ccall( (:gsl_sf_bessel_I1_scaled, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_I1_scaled


# These routines compute the scaled regular modified cylindrical Bessel
# function of first order \exp(-|x|) I_1(x).
# 
#   Returns: Cint
function sf_bessel_I1_scaled_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_I1_scaled_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_I1_scaled_e


# These routines compute the scaled regular modified cylindrical Bessel
# function of order n, \exp(-|x|) I_n(x)
# 
#   Returns: Cdouble
function sf_bessel_In_scaled(n::Integer, x::Real)
    ccall( (:gsl_sf_bessel_In_scaled, libgsl), Cdouble, (Cint, Cdouble),
        n, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_In_scaled


# These routines compute the scaled regular modified cylindrical Bessel
# function of order n, \exp(-|x|) I_n(x)
# 
#   Returns: Cint
function sf_bessel_In_scaled_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_In_scaled_e, libgsl), Cint, (Cint,
        Cdouble, Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_In_scaled_e


# This routine computes the values of the scaled regular cylindrical Bessel
# functions \exp(-|x|) I_n(x) for n from nmin to nmax inclusive, storing the
# results in the array result_array. The start of the range nmin must be
# positive or zero.  The values are computed using recurrence relations for
# efficiency, and therefore may differ slightly from the exact values.
# 
#   Returns: Cint
function sf_bessel_In_scaled_array(nmin::Integer, nmax::Integer, x::Real)
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_bessel_In_scaled_array, libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble), nmin, nmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array[][1]
end
