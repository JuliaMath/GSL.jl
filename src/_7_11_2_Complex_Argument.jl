#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.11.2 Complex Argument #
###########################
export gsl_sf_complex_dilog_e


# This function computes the full complex-valued dilogarithm for the complex
# argument z = r \exp(i \theta). The real and imaginary parts of the result are
# returned in result_re, result_im.
# 
#   Returns: Cint
function gsl_sf_complex_dilog_e(r::Cdouble, theta::Cdouble)
    result_re = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    result_im = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_complex_dilog_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), r, theta, result_re,
        result_im )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_re) ,unsafe_ref(result_im)
end
