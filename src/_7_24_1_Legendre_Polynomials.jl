#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.24.1 Legendre Polynomials #
###############################
export sf_legendre_P1, sf_legendre_P2, sf_legendre_P3, sf_legendre_P1_e,
       sf_legendre_P2_e, sf_legendre_P3_e, sf_legendre_Pl, sf_legendre_Pl_e,
       sf_legendre_Pl_array, sf_legendre_Pl_deriv_array, sf_legendre_Q0,
       sf_legendre_Q0_e, sf_legendre_Q1, sf_legendre_Q1_e, sf_legendre_Ql,
       sf_legendre_Ql_e


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cdouble
function sf_legendre_P1(x::Real)
    ccall( (:gsl_sf_legendre_P1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_legendre_P1


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cdouble
function sf_legendre_P2(x::Real)
    ccall( (:gsl_sf_legendre_P2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_legendre_P2


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cdouble
function sf_legendre_P3(x::Real)
    ccall( (:gsl_sf_legendre_P3, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_legendre_P3


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cint
function sf_legendre_P1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_P1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_legendre_P1_e


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cint
function sf_legendre_P2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_P2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_legendre_P2_e


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
#
#   Returns: Cint
function sf_legendre_P3_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_P3_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_legendre_P3_e


# These functions evaluate the Legendre polynomial  P_l(x) for a specific value
# of l, x subject to  l >= 0,  |x| <= 1
#
#   Returns: Cdouble
function sf_legendre_Pl(l::Integer, x::Real)
    ccall( (:gsl_sf_legendre_Pl, libgsl), Cdouble, (Cint, Cdouble), l, x )
end
Compat.@dep_vectorize_2arg Number sf_legendre_Pl


# These functions evaluate the Legendre polynomial  P_l(x) for a specific value
# of l, x subject to  l >= 0,  |x| <= 1
#
#   Returns: Cint
function sf_legendre_Pl_e(l::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_Pl_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_legendre_Pl_e


# These functions compute arrays of Legendre polynomials P_l(x) and derivatives
# dP_l(x)/dx, for l = 0, \dots, lmax,  |x| <= 1
#
#   Returns: Cint
function sf_legendre_Pl_array(lmax::Integer, x::Real)
    result_array = Array(Cdouble, lmax+1)
    errno = ccall( (:gsl_sf_legendre_Pl_array, libgsl), Cint, (Cint,
        Cdouble, Ref{Cdouble}), lmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array
end
Compat.@dep_vectorize_2arg Number sf_legendre_Pl_array


# These functions compute arrays of Legendre polynomials P_l(x) and derivatives
# dP_l(x)/dx, for l = 0, \dots, lmax,  |x| <= 1
#
#   Returns: Cint
function sf_legendre_Pl_deriv_array(lmax::Integer, x::Real)
    result_array = Array(Cdouble, lmax+1)
    result_deriv_array = Array(Cdouble, lmax+1)
    errno = ccall( (:gsl_sf_legendre_Pl_deriv_array, libgsl), Cint, (Cint,
        Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, x, result_array, result_deriv_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return (result_array, result_deriv_array)
end
Compat.@dep_vectorize_2arg Number sf_legendre_Pl_deriv_array


# These routines compute the Legendre function Q_0(x) for x > -1,  x != 1.
#
#   Returns: Cdouble
function sf_legendre_Q0(x::Real)
    ccall( (:gsl_sf_legendre_Q0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_legendre_Q0


# These routines compute the Legendre function Q_0(x) for x > -1,  x != 1.
#
#   Returns: Cint
function sf_legendre_Q0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_Q0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_legendre_Q0_e


# These routines compute the Legendre function Q_1(x) for x > -1,  x != 1.
#
#   Returns: Cdouble
function sf_legendre_Q1(x::Real)
    ccall( (:gsl_sf_legendre_Q1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_legendre_Q1


# These routines compute the Legendre function Q_1(x) for x > -1,  x != 1.
#
#   Returns: Cint
function sf_legendre_Q1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_Q1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_legendre_Q1_e


# These routines compute the Legendre function Q_l(x) for x > -1,  x != 1 and
# l >= 0.
#
#   Returns: Cdouble
function sf_legendre_Ql(l::Integer, x::Real)
    ccall( (:gsl_sf_legendre_Ql, libgsl), Cdouble, (Cint, Cdouble), l, x )
end
Compat.@dep_vectorize_2arg Number sf_legendre_Ql


# These routines compute the Legendre function Q_l(x) for x > -1,  x != 1 and
# l >= 0.
#
#   Returns: Cint
function sf_legendre_Ql_e(l::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_Ql_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), l, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_legendre_Ql_e
