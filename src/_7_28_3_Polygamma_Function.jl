#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 7.28.3 Polygamma Function #
#############################
export sf_psi_n, sf_psi_n_e


# These routines compute the polygamma function  \psi^{(n)}(x) for  n >= 0, x >
# 0.
# 
#   Returns: Cdouble
function sf_psi_n(n::Integer, x::Real)
    ccall( (:gsl_sf_psi_n, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_psi_n


# These routines compute the polygamma function  \psi^{(n)}(x) for  n >= 0, x >
# 0.
# 
#   Returns: Cint
function sf_psi_n_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_psi_n_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_psi_n_e
