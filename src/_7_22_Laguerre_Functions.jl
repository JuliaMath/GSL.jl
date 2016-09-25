#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.22 Laguerre Functions #
###########################
export sf_laguerre_1, sf_laguerre_2, sf_laguerre_3, sf_laguerre_1_e,
       sf_laguerre_2_e, sf_laguerre_3_e, sf_laguerre_n, sf_laguerre_n_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function sf_laguerre_1(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_1, libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
Compat.@dep_vectorize_2arg Number sf_laguerre_1


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function sf_laguerre_2(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_2, libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
Compat.@dep_vectorize_2arg Number sf_laguerre_2


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function sf_laguerre_3(a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_3, libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
Compat.@dep_vectorize_2arg Number sf_laguerre_3


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function sf_laguerre_1_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_laguerre_1_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_laguerre_1_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function sf_laguerre_2_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_laguerre_2_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_laguerre_2_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function sf_laguerre_3_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_laguerre_3_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_laguerre_3_e


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   Returns: Cdouble
function sf_laguerre_n(n::Integer, a::Real, x::Real)
    ccall( (:gsl_sf_laguerre_n, libgsl), Cdouble, (Cint, Cdouble,
        Cdouble), n, a, x )
end


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   Returns: Cint
function sf_laguerre_n_e(n::Integer, a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_laguerre_n_e, libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ref{gsl_sf_result}), n, a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
