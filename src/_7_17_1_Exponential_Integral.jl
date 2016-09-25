#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.1 Exponential Integral #
###############################
export sf_expint_E1, sf_expint_E1_e, sf_expint_E2, sf_expint_E2_e,
       sf_expint_En, sf_expint_En_e








# These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
#   Returns: Cdouble
function sf_expint_E1(x::Real)
    ccall( (:gsl_sf_expint_E1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_expint_E1


# These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
#   Returns: Cint
function sf_expint_E1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_expint_E1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_expint_E1_e


# These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
#   Returns: Cdouble
function sf_expint_E2(x::Real)
    ccall( (:gsl_sf_expint_E2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_expint_E2


# These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
#   Returns: Cint
function sf_expint_E2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_expint_E2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_expint_E2_e


# These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
#   Returns: Cdouble
function sf_expint_En(n::Integer, x::Real)
    ccall( (:gsl_sf_expint_En, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_expint_En


# These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
#   Returns: Cint
function sf_expint_En_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_expint_En_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_expint_En_e
