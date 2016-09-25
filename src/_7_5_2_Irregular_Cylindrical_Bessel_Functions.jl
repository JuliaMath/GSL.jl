#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 7.5.2 Irregular Cylindrical Bessel Functions #
################################################
export sf_bessel_Y0, sf_bessel_Y0_e, sf_bessel_Y1, sf_bessel_Y1_e,
       sf_bessel_Yn, sf_bessel_Yn_e, sf_bessel_Yn_array


# These routines compute the irregular cylindrical Bessel function of zeroth
# order, Y_0(x), for x>0.
# 
#   Returns: Cdouble
function sf_bessel_Y0(x::Real)
    ccall( (:gsl_sf_bessel_Y0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_Y0


# These routines compute the irregular cylindrical Bessel function of zeroth
# order, Y_0(x), for x>0.
# 
#   Returns: Cint
function sf_bessel_Y0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Y0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_Y0_e


# These routines compute the irregular cylindrical Bessel function of first
# order, Y_1(x), for x>0.
# 
#   Returns: Cdouble
function sf_bessel_Y1(x::Real)
    ccall( (:gsl_sf_bessel_Y1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_bessel_Y1


# These routines compute the irregular cylindrical Bessel function of first
# order, Y_1(x), for x>0.
# 
#   Returns: Cint
function sf_bessel_Y1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Y1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_bessel_Y1_e


# These routines compute the irregular cylindrical Bessel function of order n,
# Y_n(x), for x>0.
# 
#   Returns: Cdouble
function sf_bessel_Yn(n::Integer, x::Real)
    ccall( (:gsl_sf_bessel_Yn, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_bessel_Yn


# These routines compute the irregular cylindrical Bessel function of order n,
# Y_n(x), for x>0.
# 
#   Returns: Cint
function sf_bessel_Yn_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Yn_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_bessel_Yn_e


# This routine computes the values of the irregular cylindrical Bessel
# functions Y_n(x) for n from nmin to nmax inclusive, storing the results in
# the array result_array.  The domain of the function is x>0.  The values are
# computed using recurrence relations for efficiency, and therefore may differ
# slightly from the exact values.
# 
#   Returns: Cint
function sf_bessel_Yn_array(nmin::Integer, nmax::Integer, x::Real)
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_bessel_Yn_array, libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble), nmin, nmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array[][1]
end
