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
function gsl_sf_complex_sin_e (zr::Cdouble, zi::Cdouble, szr::Ptr{gsl_sf_result}, szi::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_complex_sin_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, szr, szi )
end


# This function computes the complex cosine, \cos(z_r + i z_i) storing the real
# and imaginary parts in czr, czi.
# 
#   Returns: Cint
function gsl_sf_complex_cos_e (zr::Cdouble, zi::Cdouble, czr::Ptr{gsl_sf_result}, czi::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_complex_cos_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, czr, czi )
end


# This function computes the logarithm of the complex sine, \log(\sin(z_r + i
# z_i)) storing the real and imaginary parts in lszr, lszi.
# 
#   Returns: Cint
function gsl_sf_complex_logsin_e (zr::Cdouble, zi::Cdouble, lszr::Ptr{gsl_sf_result}, lszi::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_complex_logsin_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lszr, lszi )
end
