#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.30 Transport Functions #
############################
export gsl_sf_transport_2, gsl_sf_transport_2_e, gsl_sf_transport_3,
       gsl_sf_transport_3_e, gsl_sf_transport_4, gsl_sf_transport_4_e,
       gsl_sf_transport_5, gsl_sf_transport_5_e


# These routines compute the transport function J(2,x).
# 
#   Returns: Cdouble
function gsl_sf_transport_2(x::Cdouble)
    ccall( (:gsl_sf_transport_2, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the transport function J(2,x).
# 
#   Returns: Cint
function gsl_sf_transport_2_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_transport_2_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the transport function J(3,x).
# 
#   Returns: Cdouble
function gsl_sf_transport_3(x::Cdouble)
    ccall( (:gsl_sf_transport_3, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the transport function J(3,x).
# 
#   Returns: Cint
function gsl_sf_transport_3_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_transport_3_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the transport function J(4,x).
# 
#   Returns: Cdouble
function gsl_sf_transport_4(x::Cdouble)
    ccall( (:gsl_sf_transport_4, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the transport function J(4,x).
# 
#   Returns: Cint
function gsl_sf_transport_4_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_transport_4_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the transport function J(5,x).
# 
#   Returns: Cdouble
function gsl_sf_transport_5(x::Cdouble)
    ccall( (:gsl_sf_transport_5, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the transport function J(5,x).
# 
#   Returns: Cint
function gsl_sf_transport_5_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_transport_5_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
