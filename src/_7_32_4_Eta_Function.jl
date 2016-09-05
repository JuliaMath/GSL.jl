#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.32.4 Eta Function #
#######################
export sf_eta_int, sf_eta_int_e, sf_eta, sf_eta_e


# These routines compute the eta function \eta(n) for integer n.
# 
#   Returns: Cdouble
function sf_eta_int(n::Integer)
    ccall( (:gsl_sf_eta_int, libgsl), Cdouble, (Cint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_eta_int


# These routines compute the eta function \eta(n) for integer n.
# 
#   Returns: Cint
function sf_eta_int_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_eta_int_e, libgsl), Cint, (Cint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_eta_int_e


# These routines compute the eta function \eta(s) for arbitrary s.
# 
#   Returns: Cdouble
function sf_eta(s::Real)
    ccall( (:gsl_sf_eta, libgsl), Cdouble, (Cdouble, ), s )
end
Compat.@dep_vectorize_1arg Number sf_eta


# These routines compute the eta function \eta(s) for arbitrary s.
# 
#   Returns: Cint
function sf_eta_e(s::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_eta_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_eta_e
