#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.24.1 Legendre Polynomials #
###############################
export gsl_sf_legendre_P1, gsl_sf_legendre_P2, gsl_sf_legendre_P3,
       gsl_sf_legendre_P1_e, gsl_sf_legendre_P2_e, gsl_sf_legendre_P3_e,
       gsl_sf_legendre_Pl, gsl_sf_legendre_Pl_e, gsl_sf_legendre_Pl_array,
       gsl_sf_legendre_Pl_deriv_array, gsl_sf_legendre_Q0,
       gsl_sf_legendre_Q0_e, gsl_sf_legendre_Q1, gsl_sf_legendre_Q1_e,
       gsl_sf_legendre_Ql, gsl_sf_legendre_Ql_e


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cdouble
function gsl_sf_legendre_P1(x::Cdouble)
    ccall( (:gsl_sf_legendre_P1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cdouble
function gsl_sf_legendre_P2(x::Cdouble)
    ccall( (:gsl_sf_legendre_P2, :libgsl), Cdouble, (Cdouble, ), x )
end


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cdouble
function gsl_sf_legendre_P3(x::Cdouble)
    ccall( (:gsl_sf_legendre_P3, :libgsl), Cdouble, (Cdouble, ), x )
end


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cint
function gsl_sf_legendre_P1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_P1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cint
function gsl_sf_legendre_P2_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_P2_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions evaluate the Legendre polynomials  P_l(x) using explicit
# representations for l=1, 2, 3.
# 
#   Returns: Cint
function gsl_sf_legendre_P3_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_P3_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions evaluate the Legendre polynomial  P_l(x) for a specific value
# of l, x subject to  l >= 0,  |x| <= 1
# 
#   Returns: Cdouble
function gsl_sf_legendre_Pl{gsl_int<:Integer}(l::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_legendre_Pl, :libgsl), Cdouble, (Cint, Cdouble), l, x )
end


# These functions evaluate the Legendre polynomial  P_l(x) for a specific value
# of l, x subject to  l >= 0,  |x| <= 1
# 
#   Returns: Cint
function gsl_sf_legendre_Pl_e{gsl_int<:Integer}(l::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Pl_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), l, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions compute arrays of Legendre polynomials P_l(x) and derivatives
# dP_l(x)/dx, for l = 0, \dots, lmax,  |x| <= 1
# 
#   Returns: Cint
function gsl_sf_legendre_Pl_array{gsl_int<:Integer}(lmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Pl_array, :libgsl), Cint, (Cint,
        Cdouble, Cdouble), lmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These functions compute arrays of Legendre polynomials P_l(x) and derivatives
# dP_l(x)/dx, for l = 0, \dots, lmax,  |x| <= 1
# 
#   Returns: Cint
function gsl_sf_legendre_Pl_deriv_array{gsl_int<:Integer}(lmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Pl_deriv_array, :libgsl), Cint,
        (Cint, Cdouble, Cdouble), lmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute the Legendre function Q_0(x) for x > -1,  x != 1.
# 
#   Returns: Cdouble
function gsl_sf_legendre_Q0(x::Cdouble)
    ccall( (:gsl_sf_legendre_Q0, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Legendre function Q_0(x) for x > -1,  x != 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Q0_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Q0_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the Legendre function Q_1(x) for x > -1,  x != 1.
# 
#   Returns: Cdouble
function gsl_sf_legendre_Q1(x::Cdouble)
    ccall( (:gsl_sf_legendre_Q1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Legendre function Q_1(x) for x > -1,  x != 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Q1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Q1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the Legendre function Q_l(x) for x > -1,  x != 1 and
# l >= 0.
# 
#   Returns: Cdouble
function gsl_sf_legendre_Ql{gsl_int<:Integer}(l::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_legendre_Ql, :libgsl), Cdouble, (Cint, Cdouble), l, x )
end


# These routines compute the Legendre function Q_l(x) for x > -1,  x != 1 and
# l >= 0.
# 
#   Returns: Cint
function gsl_sf_legendre_Ql_e{gsl_int<:Integer}(l::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Ql_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), l, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
