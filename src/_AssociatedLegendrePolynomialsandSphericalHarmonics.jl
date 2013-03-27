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
#   {$m \ge 0$} 
#   {$l \ge m$} 
#   {$|x| \le 1$} 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_legendre_Plm (l::Cint, m::Cint, x::Cdouble)
    ccall( (:gsl_sf_legendre_Plm, "libgsl"), Cdouble, (Cint, Cint,
        Cdouble), l, m, x )
end


# These routines compute the associated Legendre polynomial P_l^m(x) for  m >=
# 0,  l >= m,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_e (l::Cint, m::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_legendre_Plm_e, "libgsl"), Cint, (Cint, Cint, Cdouble,
        Ptr{gsl_sf_result}), l, m, x, result )
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   {$m \ge 0$} 
#   {$l = |m|, \dots, lmax$} 
#   {$|x| \le 1$} 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cint
function gsl_sf_legendre_Plm_array (lmax::Cint, m::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_legendre_Plm_array, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Cdouble), lmax, m, x, result_array )
end


# These functions compute arrays of Legendre polynomials P_l^m(x) and
# derivatives dP_l^m(x)/dx, for  m >= 0,  l = |m|, ..., lmax,  |x| <= 1.
# 
#   Returns: Cint
function gsl_sf_legendre_Plm_deriv_array (lmax::Cint, m::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_legendre_Plm_deriv_array, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Cdouble), lmax, m, x, result_array )
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   {$\sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x)$} 
#   {$m \ge 0$} 
#   {$l \ge m$} 
#   {$|x| \le 1$} 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_legendre_sphPlm (l::Cint, m::Cint, x::Cdouble)
    ccall( (:gsl_sf_legendre_sphPlm, "libgsl"), Cdouble, (Cint, Cint,
        Cdouble), l, m, x )
end


# These routines compute the normalized associated Legendre polynomial
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x) suitable for use in
# spherical harmonics.  The parameters must satisfy  m >= 0,  l >= m,  |x| <=
# 1. Theses routines avoid the overflows that occur for the standard
# normalization of P_l^m(x).
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_e (l::Cint, m::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_legendre_sphPlm_e, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Ptr{gsl_sf_result}), l, m, x, result )
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   {$\sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x)$} 
#   {$m \ge 0$} 
#   {$l = |m|, \dots, lmax$} 
#   {$|x| \le 1$} 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_array (lmax::Cint, m::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_legendre_sphPlm_array, "libgsl"), Cint, (Cint, Cint,
        Cdouble, Cdouble), lmax, m, x, result_array )
end


# These functions compute arrays of normalized associated Legendre functions
# \sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x), and derivatives, for  m
# >= 0,  l = |m|, ..., lmax,  |x| <= 1.0
# 
#   Returns: Cint
function gsl_sf_legendre_sphPlm_deriv_array (lmax::Cint, m::Cint, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_legendre_sphPlm_deriv_array, "libgsl"), Cint, (Cint,
        Cint, Cdouble, Cdouble), lmax, m, x, result_array )
end


# This function returns the size of result_array[] needed for the array
# versions of P_l^m(x), lmax - m + 1.  An inline version of this function is
# used when HAVE_INLINE is defined.
# 
#   Exceptional Return Values: none 
#   Returns: Cint
function gsl_sf_legendre_array_size (lmax::Cint, m::Cint)
    ccall( (:gsl_sf_legendre_array_size, "libgsl"), Cint, (Cint, Cint),
        lmax, m )
end