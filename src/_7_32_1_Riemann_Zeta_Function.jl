#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.32.1 Riemann Zeta Function #
################################
export sf_zeta_int, sf_zeta_int_e, sf_zeta, sf_zeta_e


# These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
#   Returns: Cdouble
function sf_zeta_int(n::Integer)
    ccall( (:gsl_sf_zeta_int, libgsl), Cdouble, (Cint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_zeta_int


# These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
#   Returns: Cint
function sf_zeta_int_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_zeta_int_e, libgsl), Cint, (Cint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_zeta_int_e


# These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
#   Returns: Cdouble
function sf_zeta(s::Real)
    ccall( (:gsl_sf_zeta, libgsl), Cdouble, (Cdouble, ), s )
end
Compat.@dep_vectorize_1arg Number sf_zeta


# These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
#   Returns: Cint
function sf_zeta_e(s::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_zeta_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_zeta_e
