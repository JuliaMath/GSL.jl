#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 7.31.2 Trigonometric Functions for Complex Arguments #
########################################################
export gsl_sf_complex_sin_e, gsl_sf_complex_cos_e, gsl_sf_complex_logsin_e


# This function computes the complex sine, \sin(z_r + i z_i) storing the real
# and imaginary parts in szr, szi.
# 
#   Returns: Cint
function gsl_sf_complex_sin_e(zr::Cdouble, zi::Cdouble)
    szr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    szi = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_complex_sin_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, szr, szi )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(szr) ,unsafe_ref(szi)
end


# This function computes the complex cosine, \cos(z_r + i z_i) storing the real
# and imaginary parts in czr, czi.
# 
#   Returns: Cint
function gsl_sf_complex_cos_e(zr::Cdouble, zi::Cdouble)
    czr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    czi = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_complex_cos_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, czr, czi )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(czr) ,unsafe_ref(czi)
end


# This function computes the logarithm of the complex sine, \log(\sin(z_r + i
# z_i)) storing the real and imaginary parts in lszr, lszi.
# 
#   Returns: Cint
function gsl_sf_complex_logsin_e(zr::Cdouble, zi::Cdouble)
    lszr = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    lszi = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_complex_logsin_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lszr, lszi )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(lszr) ,unsafe_ref(lszi)
end
