#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################################
# 7.24.2 Associated Legendre Polynomials and Spherical Harmonics #
##################################################################
export gsl_sf_legendre_Plm, gsl_sf_legendre_Plm_e, gsl_sf_legendre_Plm_array,
       gsl_sf_legendre_Plm_deriv_array, gsl_sf_legendre_sphPlm,
       gsl_sf_legendre_sphPlm_e, gsl_sf_legendre_sphPlm_array,
       gsl_sf_legendre_sphPlm_deriv_array, gsl_sf_legendre_array_size


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cdouble
function gsl_sf_legendre_Plm{gsl_int<:Integer}(l::gsl_int, m::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_legendre_Plm, :libgsl), Cdouble, (Cint, Cint, Cdouble),
        l, m, x )
end


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_e{gsl_int<:Integer}(l::gsl_int, m::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), l, m, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_array{gsl_int<:Integer}(lmax::gsl_int, m::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_deriv_array{gsl_int<:Integer}(lmax::gsl_int, m::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_deriv_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cdouble
function gsl_sf_legendre_sphPlm{gsl_int<:Integer}(l::gsl_int, m::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_legendre_sphPlm, :libgsl), Cdouble, (Cint, Cint,
        Cdouble), l, m, x )
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_e{gsl_int<:Integer}(l::gsl_int, m::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), l, m, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_array{gsl_int<:Integer}(lmax::gsl_int, m::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_deriv_array{gsl_int<:Integer}(lmax::gsl_int, m::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_deriv_array, :libgsl),
        Cint, (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# This function returns the size of result_array[] needed for the array
# versions of P_l^m(x), lmax - m + 1.  An inline version of this function is
# used when HAVE_INLINE is defined.
# 
#   Returns: Cint
function gsl_sf_legendre_array_size{gsl_int<:Integer}(lmax::gsl_int, m::gsl_int)
    gsl_errno = ccall( (:gsl_sf_legendre_array_size, :libgsl), Cint, (Cint,
        Cint), lmax, m )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
