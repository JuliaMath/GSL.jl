#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 7.31.2 Trigonometric Functions for Complex Arguments #
########################################################
export gsl_sf_complex_sin_e, gsl_sf_complex_cos_e, gsl_sf_complex_logsin_e


### Function uses unknown type; disabled
### # This function computes the complex sine, \sin(z_r + i z_i) storing the real
# and imaginary parts in szr, szi.
# 
### #   Exceptional Return Values: GSL_EOVRFLW 
### #   Returns: Cint
### #XXX Unknown input type szr::Ptr{gsl_sf_result}
### #XXX Unknown input type szi::Ptr{gsl_sf_result}
### function gsl_sf_complex_sin_e (zr::Cdouble, zi::Cdouble, szr::Ptr{gsl_sf_result}, szi::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_complex_sin_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, szr, szi )
### end


### Function uses unknown type; disabled
### # This function computes the complex cosine, \cos(z_r + i z_i) storing the real
# and imaginary parts in czr, czi.
# 
### #   Exceptional Return Values: GSL_EOVRFLW 
### #   Returns: Cint
### #XXX Unknown input type czr::Ptr{gsl_sf_result}
### #XXX Unknown input type czi::Ptr{gsl_sf_result}
### function gsl_sf_complex_cos_e (zr::Cdouble, zi::Cdouble, czr::Ptr{gsl_sf_result}, czi::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_complex_cos_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, czr, czi )
### end


### Function uses unknown type; disabled
### # This function computes the logarithm of the complex sine, \log(\sin(z_r + i
# z_i)) storing the real and imaginary parts in lszr, lszi.
# 
### #   Exceptional Return Values: GSL_EDOM, GSL_ELOSS 
### #   Returns: Cint
### #XXX Unknown input type lszr::Ptr{gsl_sf_result}
### #XXX Unknown input type lszi::Ptr{gsl_sf_result}
### function gsl_sf_complex_logsin_e (zr::Cdouble, zi::Cdouble, lszr::Ptr{gsl_sf_result}, lszi::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_complex_logsin_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), zr, zi, lszr, lszi )
### end