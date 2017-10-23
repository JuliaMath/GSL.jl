#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.21.1 Hermite Polynomials #
##############################
export sf_hermite_prob, sf_hermite_prob_e, sf_hermite_prob_array,
       sf_hermite_prob_series, sf_hermite_prob_series_e, sf_hermite_phys,
       sf_hermite_phys_e, sf_hermite_phys_array, sf_hermite_phys_series,
       sf_hermite_phys_series_e


# These routines evaluate the probabilists’ Hermite polynomial He_n(x) of order
# n at position x.
#
#   Returns: Cdouble
function sf_hermite_prob(n::Integer, x::Real)
    ccall( (:gsl_sf_hermite_prob, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
#Compat.@dep_vectorize_2arg Number sf_hermite_prob


# These routines evaluate the probabilists’ Hermite polynomial He_n(x) of order
# n at position x.
#
#   Returns: Cint
function sf_hermite_prob_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hermite_prob_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
#Compat.@dep_vectorize_2arg Number sf_hermite_prob_e


# This routine evaluates all probabilists’ Hermite polynomials He_n(x) up to
# order nmax at position x. The results are stored in result_array.
#
#   Returns: Cint
function sf_hermite_prob_array(nmax::Integer, x::Real)
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_hermite_prob_array, libgsl), Cint, (Cint, Cdouble,
        Ref{Cdouble}), nmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array[]
end
#Compat.@dep_vectorize_2arg Number sf_hermite_prob_array


# These routines evaluate the series sum_{j=0}^n a_j \* He_j(x) with He_j being
# the j-th probabilists’ Hermite polynomial using the Clenshaw algorithm.
#
#   Returns: Cdouble
function sf_hermite_prob_series{tA<:Real}(n::Integer, x::Real,
                                          a_in:AbstractVector(tA))
    a = convert(Vector{Cdouble}, a_in)
    ccall( (:gsl_sf_hermite_prob_series, libgsl), Cdouble, (Cint, Cdouble,
        Ref{Cdouble}), n, x, a )
end


# These routines evaluate the series sum_{j=0}^n a_j \* He_j(x) with He_j being
# the j-th probabilists’ Hermite polynomial using the Clenshaw algorithm.
#
#   Returns: Cint
function sf_hermite_prob_series_e{tA<:Real}(n::Integer, x::Real,
                                            a_in:AbstractVector(tA))
    a = convert(Vector{Cdouble}, a_in)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hermite_prob_series_e, libgsl), Cint, (Cint,
        Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These routines evaluate the physicists’ Hermite polynomial H_n(x) of order n
# at position x.
#
#   Returns: Cdouble
function sf_hermite_phys(n::Integer, x::Real)
    ccall( (:gsl_sf_hermite_phys, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
#Compat.@dep_vectorize_2arg Number sf_hermite_phys


# These routines evaluate the physicists’ Hermite polynomial H_n(x) of order n
# at position x.
#
#   Returns: Cint
function sf_hermite_phys_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hermite_phys_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
#Compat.@dep_vectorize_2arg Number sf_hermite_phys_e


# This routine evaluates all physicists’ Hermite polynomials H_n(x) up to
# order nmax at position x. The results are stored in result_array.
#
#   Returns: Cint
function sf_hermite_phys_array(nmax::Integer, x::Real)
    result_array = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_hermite_phys_array, libgsl), Cint, (Cint, Cdouble,
        Ref{Cdouble}), nmax, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array[]
end
Compat.@dep_vectorize_2arg Number sf_hermite_phys_array


# These routines evaluate the series sum_{j=0}^n a_j \* H_j(x) with H_j being
# the j-th physicists’ Hermite polynomial using the Clenshaw algorithm.
#
#   Returns: Cdouble
function sf_hermite_phys_series{tA<:Real}(n::Integer, x::Real,
                                          a_in:AbstractVector(tA))
    a = convert(Vector{Cdouble}, a_in)
    ccall( (:gsl_sf_hermite_phys_series, libgsl), Cdouble, (Cint, Cdouble,
        Ref{Cdouble}), n, x, a )
end


# These routines evaluate the series sum_{j=0}^n a_j \* H_j(x) with H_j being
# the j-th physicists’ Hermite polynomial using the Clenshaw algorithm.
#
#   Returns: Cint
function sf_hermite_phys_series_e{tA<:Real}(n::Integer, x::Real,
                                            a_in:AbstractVector(tA))
    a = convert(Vector{Cdouble}, a_in)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_hermite_phys_series_e, libgsl), Cint, (Cint,
        Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
