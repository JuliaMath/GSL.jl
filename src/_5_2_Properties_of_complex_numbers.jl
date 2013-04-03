#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 5.2 Properties of complex numbers #
#####################################
export complex_arg, complex_abs, complex_abs2, complex_logabs


# This function returns the argument of the complex number z, \arg(z), where
# -\pi < \arg(z) <= \pi.
# 
#   Returns: Cdouble
function complex_arg(z::gsl_complex)
    ccall( (:gsl_complex_arg, :libgsl), Cdouble, (gsl_complex, ), z )
end


# This function returns the magnitude of the complex number z, |z|.
# 
#   Returns: Cdouble
function complex_abs(z::gsl_complex)
    ccall( (:gsl_complex_abs, :libgsl), Cdouble, (gsl_complex, ), z )
end


# This function returns the squared magnitude of the complex number z, |z|^2.
# 
#   Returns: Cdouble
function complex_abs2(z::gsl_complex)
    ccall( (:gsl_complex_abs2, :libgsl), Cdouble, (gsl_complex, ), z )
end


# This function returns the natural logarithm of the magnitude of the complex
# number z, \log|z|.  It allows an accurate evaluation of \log|z| when |z| is
# close to one. The direct evaluation of log(gsl_complex_abs(z)) would lead to
# a loss of precision in this case.
# 
#   Returns: Cdouble
function complex_logabs(z::gsl_complex)
    ccall( (:gsl_complex_logabs, :libgsl), Cdouble, (gsl_complex, ), z )
end
