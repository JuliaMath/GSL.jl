#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.28.2 Trigamma Function #
############################
export sf_psi_1_int, sf_psi_1_int_e, sf_psi_1, sf_psi_1_e


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cdouble
function sf_psi_1_int(n::Integer)
    ccall( (:gsl_sf_psi_1_int, libgsl), Cdouble, (Cint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_psi_1_int


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Returns: Cint
function sf_psi_1_int_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_1_int_e, libgsl), Cint, (Cint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_psi_1_int_e


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cdouble
function sf_psi_1(x::Real)
    ccall( (:gsl_sf_psi_1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_psi_1


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Returns: Cint
function sf_psi_1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_psi_1_e
