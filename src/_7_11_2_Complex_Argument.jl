#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.11.2 Complex Argument #
###########################
export sf_complex_dilog_e


# This function computes the full complex-valued dilogarithm for the complex
# argument z = r \exp(i \theta). The real and imaginary parts of the result are
# returned in result_re, result_im.
# 
#   Returns: Cint
function sf_complex_dilog_e(r::Real, theta::Real)
    result_re = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    result_im = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_complex_dilog_e, libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), r, theta, result_re,
        result_im )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result_re), unsafe_load(result_im)
end
@vectorize_2arg Number sf_complex_dilog_e
