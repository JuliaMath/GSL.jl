#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.28.1 Digamma Function #
###########################
export sf_psi_int, sf_psi_int_e, sf_psi, sf_psi_e, sf_psi_1piy, sf_psi_1piy_e


# These routines compute the digamma function \psi(n) for positive integer n.
# The digamma function is also called the Psi function.
# 
#   Returns: Cdouble
function sf_psi_int(n::Integer)
    ccall( (:gsl_sf_psi_int, libgsl), Cdouble, (Cint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_psi_int


# These routines compute the digamma function \psi(n) for positive integer n.
# The digamma function is also called the Psi function.
# 
#   Returns: Cint
function sf_psi_int_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_int_e, libgsl), Cint, (Cint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_psi_int_e


# These routines compute the digamma function \psi(x) for general x, x \ne 0.
# 
#   Returns: Cdouble
function sf_psi(x::Real)
    ccall( (:gsl_sf_psi, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_psi


# These routines compute the digamma function \psi(x) for general x, x \ne 0.
# 
#   Returns: Cint
function sf_psi_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_psi_e


# These routines compute the real part of the digamma function on the line 1+i
# y, \Re[\psi(1 + i y)].
# 
#   Returns: Cdouble
function sf_psi_1piy(y::Real)
    ccall( (:gsl_sf_psi_1piy, libgsl), Cdouble, (Cdouble, ), y )
end
Compat.@dep_vectorize_1arg Number sf_psi_1piy


# These routines compute the real part of the digamma function on the line 1+i
# y, \Re[\psi(1 + i y)].
# 
#   Returns: Cint
function sf_psi_1piy_e(y::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_1piy_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_psi_1piy_e
