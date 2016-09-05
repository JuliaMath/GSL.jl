#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################################
# 7.24.2 Associated Legendre Polynomials and Spherical Harmonics #
##################################################################
export sf_legendre_Plm, sf_legendre_Plm_e, sf_legendre_Plm_array,
       sf_legendre_Plm_deriv_array, sf_legendre_sphPlm, sf_legendre_sphPlm_e,
       sf_legendre_sphPlm_array, sf_legendre_sphPlm_deriv_array,
       sf_legendre_array_size


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cdouble
function sf_legendre_Plm(l::Integer, m::Integer, x::Real)
    ccall( (:gsl_sf_legendre_Plm, libgsl), Cdouble, (Cint, Cint, Cdouble),
        l, m, x )
end


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cint
function sf_legendre_Plm_e(l::Integer, m::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_Plm_e, libgsl), Cint, (Cint, Cint,
        Cdouble, Ref{gsl_sf_result}), l, m, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function sf_legendre_Plm_array(lmax::Integer, m::Integer, x::Real)
    @assert lmax >= m
    result_array = Array(Cdouble, lmax-m+1)
    errno = ccall( (:gsl_sf_legendre_Plm_array, libgsl), Cint, (Cint,
        Cint, Cdouble, Ref{Cdouble}), lmax, m, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function sf_legendre_Plm_deriv_array(lmax::Integer, m::Integer, x::Real)
    @assert lmax >= m
    result_array = Array(Cdouble, lmax-m+1)
    result_deriv_array = Array(Cdouble, lmax-m+1)
    errno = ccall( (:gsl_sf_legendre_Plm_deriv_array, libgsl), Cint,
        (Cint, Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, m, x, result_array, result_deriv_array)
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return (result_array, result_deriv_array)
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cdouble
function sf_legendre_sphPlm(l::Integer, m::Integer, x::Real)
    ccall( (:gsl_sf_legendre_sphPlm, libgsl), Cdouble, (Cint, Cint,
        Cdouble), l, m, x )
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cint
function sf_legendre_sphPlm_e(l::Integer, m::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_legendre_sphPlm_e, libgsl), Cint, (Cint, Cint,
        Cdouble, Ref{gsl_sf_result}), l, m, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function sf_legendre_sphPlm_array(lmax::Integer, m::Integer, x::Real)
    @assert lmax >= m
    result_array = Array(Cdouble, lmax-m+1)
    errno = ccall( (:gsl_sf_legendre_sphPlm_array, libgsl), Cint, (Cint,
        Cint, Cdouble, Ref{Cdouble}), lmax, m, x, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result_array
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function sf_legendre_sphPlm_deriv_array(lmax::Integer, m::Integer, x::Real)
    @assert lmax >= m
    result_array = Array(Cdouble, lmax-m+1)
    result_deriv_array = Array(Cdouble, lmax-m+1)
    errno = ccall( (:gsl_sf_legendre_sphPlm_deriv_array, libgsl), Cint,
        (Cint, Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, m, x, result_array, result_deriv_array)
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return (result_array, result_deriv_array)
end


# This function returns the size of result_array[] needed for the array
# versions of P_l^m(x), lmax - m + 1.  An inline version of this function is
# used when HAVE_INLINE is defined.
# 
#   Returns: Cint
function sf_legendre_array_size(lmax::Integer, m::Integer)
    errno = ccall( (:gsl_sf_legendre_array_size, libgsl), Cint, (Cint,
        Cint), lmax, m )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_2arg Number sf_legendre_array_size
