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
function gsl_sf_legendre_Plm(l::Integer, m::Integer, x::Real)
    ccall( (:gsl_sf_legendre_Plm, :libgsl), Cdouble, (Cint, Cint, Cdouble),
        l, m, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_Plm


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_e(l::Integer, m::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), l, m, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_Plm_e


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_array(lmax::Integer, m::Integer, x::Real)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_Plm_array


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_deriv_array(lmax::Integer, m::Integer, x::Real)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_Plm_deriv_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_Plm_deriv_array


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cdouble
function gsl_sf_legendre_sphPlm(l::Integer, m::Integer, x::Real)
    ccall( (:gsl_sf_legendre_sphPlm, :libgsl), Cdouble, (Cint, Cint,
        Cdouble), l, m, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_sphPlm


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_e(l::Integer, m::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), l, m, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_sphPlm_e


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_array(lmax::Integer, m::Integer, x::Real)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_sphPlm_array


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_deriv_array(lmax::Integer, m::Integer, x::Real)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_legendre_sphPlm_deriv_array, :libgsl),
        Cint, (Cint, Cint, Cdouble, Cdouble), lmax, m, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_legendre_sphPlm_deriv_array


# This function returns the size of result_array[] needed for the array
# versions of P_l^m(x), lmax - m + 1.  An inline version of this function is
# used when HAVE_INLINE is defined.
# 
#   Returns: Cint
function gsl_sf_legendre_array_size(lmax::Integer, m::Integer)
    gsl_errno = ccall( (:gsl_sf_legendre_array_size, :libgsl), Cint, (Cint,
        Cint), lmax, m )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
@vectorize_2arg Number gsl_sf_legendre_array_size
