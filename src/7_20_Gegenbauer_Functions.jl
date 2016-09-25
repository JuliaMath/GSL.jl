#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 7.20 Gegenbauer Functions #
#############################
export sf_gegenpoly_1, sf_gegenpoly_2, sf_gegenpoly_3, sf_gegenpoly_1_e,
       sf_gegenpoly_2_e, sf_gegenpoly_3_e, sf_gegenpoly_n, sf_gegenpoly_n_e,
       sf_gegenpoly_array


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cdouble
function sf_gegenpoly_1(lambda::Real, x::Real)
    ccall( (:gsl_sf_gegenpoly_1, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_1


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cdouble
function sf_gegenpoly_2(lambda::Real, x::Real)
    ccall( (:gsl_sf_gegenpoly_2, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_2


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cdouble
function sf_gegenpoly_3(lambda::Real, x::Real)
    ccall( (:gsl_sf_gegenpoly_3, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_3


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cint
function sf_gegenpoly_1_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gegenpoly_1_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_1_e


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cint
function sf_gegenpoly_2_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gegenpoly_2_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_2_e


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
#
#   Returns: Cint
function sf_gegenpoly_3_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gegenpoly_3_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gegenpoly_3_e


# These functions evaluate the Gegenbauer polynomial  C^{(\lambda)}_n(x) for a
# specific value of n, lambda, x subject to \lambda > -1/2,  n >= 0.
#
#   Returns: Cdouble
function sf_gegenpoly_n(n::Integer, lambda::Real, x::Real)
    ccall( (:gsl_sf_gegenpoly_n, libgsl), Cdouble, (Cint, Cdouble,
        Cdouble), n, lambda, x )
end


# These functions evaluate the Gegenbauer polynomial  C^{(\lambda)}_n(x) for a
# specific value of n, lambda, x subject to \lambda > -1/2,  n >= 0.
#
#   Returns: Cint
function sf_gegenpoly_n_e(n::Integer, lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gegenpoly_n_e, libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ref{gsl_sf_result}), n, lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# This function computes an array of Gegenbauer polynomials  C^{(\lambda)}_n(x)
# for n = 0, 1, 2, \dots, nmax, subject to \lambda > -1/2,  nmax >= 0.
#
#   Returns: Cint
function sf_gegenpoly_array(nmax::Integer, lambda::Real, x::Real)
    result_array = Array(Cdouble, nmax+1)
    errno = ccall( (:gsl_sf_gegenpoly_array, libgsl), Cint, (Cint,
        Cdouble, Cdouble, Ref{Cdouble}), nmax, lambda, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array
end
