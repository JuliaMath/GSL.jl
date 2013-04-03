#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.22 Laguerre Functions #
###########################
export gsl_sf_laguerre_1, gsl_sf_laguerre_2, gsl_sf_laguerre_3,
       gsl_sf_laguerre_1_e, gsl_sf_laguerre_2_e, gsl_sf_laguerre_3_e,
       gsl_sf_laguerre_n, gsl_sf_laguerre_n_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_1(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_1, :libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
@vectorize_2arg Number gsl_sf_laguerre_1


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_2(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_2, :libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
@vectorize_2arg Number gsl_sf_laguerre_2


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_3(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_3, :libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
@vectorize_2arg Number gsl_sf_laguerre_3


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_1_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_laguerre_1_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_laguerre_1_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_2_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_laguerre_2_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_laguerre_2_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_3_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_laguerre_3_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_laguerre_3_e


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_n(n::Integer, a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_n, :libgsl), Cdouble, (Cint, Cdouble,
        Cdouble), n, a, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_laguerre_n


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   Returns: Cint
function gsl_sf_laguerre_n_e(n::Integer, a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_laguerre_n_e, :libgsl), Cint, (Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), n, a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_laguerre_n_e
