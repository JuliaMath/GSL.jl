#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 7.5.1 Regular Cylindrical Bessel Functions #
##############################################
export sf_bessel_J0, sf_bessel_J0_e, sf_bessel_J1, sf_bessel_J1_e,
       sf_bessel_Jn, sf_bessel_Jn_e


# These routines compute the regular cylindrical Bessel function of zeroth
# order, J_0(x).
#
#   Returns: Cdouble
function sf_bessel_J0(x::Real)
    ccall( (:gsl_sf_bessel_J0, libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_bessel_J0


# These routines compute the regular cylindrical Bessel function of zeroth
# order, J_0(x).
#
#   Returns: Cint
function sf_bessel_J0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_J0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
@vectorize_1arg Number sf_bessel_J0_e


# These routines compute the regular cylindrical Bessel function of first
# order, J_1(x).
#
#   Returns: Cdouble
function sf_bessel_J1(x::Real)
    ccall( (:gsl_sf_bessel_J1, libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_bessel_J1


# These routines compute the regular cylindrical Bessel function of first
# order, J_1(x).
#
#   Returns: Cint
function sf_bessel_J1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_J1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
@vectorize_1arg Number sf_bessel_J1_e


# These routines compute the regular cylindrical Bessel function of order n,
# J_n(x).
#
#   Returns: Cdouble
function sf_bessel_Jn(n::Integer, x::Real)
    ccall( (:gsl_sf_bessel_Jn, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
@vectorize_2arg Number sf_bessel_Jn


# These routines compute the regular cylindrical Bessel function of order n,
# J_n(x).
#
#   Returns: Cint
function sf_bessel_Jn_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_bessel_Jn_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
@vectorize_2arg Number sf_bessel_Jn_e
