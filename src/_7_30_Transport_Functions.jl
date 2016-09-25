#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.30 Transport Functions #
############################
export sf_transport_2, sf_transport_2_e, sf_transport_3, sf_transport_3_e,
       sf_transport_4, sf_transport_4_e, sf_transport_5, sf_transport_5_e


# These routines compute the transport function J(2,x).
# 
#   Returns: Cdouble
function sf_transport_2(x::Real)
    ccall( (:gsl_sf_transport_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_transport_2


# These routines compute the transport function J(2,x).
# 
#   Returns: Cint
function sf_transport_2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_transport_2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_transport_2_e


# These routines compute the transport function J(3,x).
# 
#   Returns: Cdouble
function sf_transport_3(x::Real)
    ccall( (:gsl_sf_transport_3, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_transport_3


# These routines compute the transport function J(3,x).
# 
#   Returns: Cint
function sf_transport_3_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_transport_3_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_transport_3_e


# These routines compute the transport function J(4,x).
# 
#   Returns: Cdouble
function sf_transport_4(x::Real)
    ccall( (:gsl_sf_transport_4, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_transport_4


# These routines compute the transport function J(4,x).
# 
#   Returns: Cint
function sf_transport_4_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_transport_4_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_transport_4_e


# These routines compute the transport function J(5,x).
# 
#   Returns: Cdouble
function sf_transport_5(x::Real)
    ccall( (:gsl_sf_transport_5, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_transport_5


# These routines compute the transport function J(5,x).
# 
#   Returns: Cint
function sf_transport_5_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_transport_5_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_transport_5_e
