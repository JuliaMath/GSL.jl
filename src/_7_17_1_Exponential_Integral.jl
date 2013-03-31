#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.17.1 Exponential Integral #
###############################
export gsl_sf_expint_E1, gsl_sf_expint_E1_e, gsl_sf_expint_E2,
       gsl_sf_expint_E2_e, gsl_sf_expint_En, gsl_sf_expint_En_e








# These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
#   Returns: Cdouble
function gsl_sf_expint_E1(x::Cdouble)
    ccall( (:gsl_sf_expint_E1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the exponential integral E_1(x),
# E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.
# 
#   Returns: Cint
function gsl_sf_expint_E1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_expint_E1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
#   Returns: Cdouble
function gsl_sf_expint_E2(x::Cdouble)
    ccall( (:gsl_sf_expint_E2, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the second-order exponential integral E_2(x),
# E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2.
# 
#   Returns: Cint
function gsl_sf_expint_E2_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_expint_E2_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
#   Returns: Cdouble
function gsl_sf_expint_En{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_expint_En, :libgsl), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the exponential integral E_n(x) of order n,
# E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.
# 
#   Returns: Cint
function gsl_sf_expint_En_e{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_expint_En_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
