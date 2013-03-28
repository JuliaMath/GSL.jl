#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.11.2 Complex Argument #
###########################
export gsl_sf_complex_dilog_e


### Function uses unknown type; disabled
### # This function computes the full complex-valued dilogarithm for the complex
# argument z = r \exp(i \theta). The real and imaginary parts of the result are
# returned in result_re, result_im.
# 
### #   Returns: Cint
### #XXX Unknown input type result_re::Ptr{gsl_sf_result}
### #XXX Unknown input type result_im::Ptr{gsl_sf_result}
### function gsl_sf_complex_dilog_e (r::Cdouble, theta::Cdouble, result_re::Ptr{gsl_sf_result}, result_im::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_complex_dilog_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), r, theta, result_re, result_im
###         )
### end