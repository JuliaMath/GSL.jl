#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 5.5 Complex Trigonometric Functions #
#######################################
export gsl_complex_sin, gsl_complex_cos, gsl_complex_tan, gsl_complex_sec,
       gsl_complex_csc, gsl_complex_cot


# This function returns the complex sine of the complex number z, \sin(z) =
# (\exp(iz) - \exp(-iz))/(2i).
# 
#   Returns: gsl_complex
function gsl_complex_sin (z::gsl_complex)
    ccall( (:gsl_complex_sin, "libgsl"), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex cosine of the complex number z, \cos(z) =
# (\exp(iz) + \exp(-iz))/2.
# 
#   Returns: gsl_complex
function gsl_complex_cos (z::gsl_complex)
    ccall( (:gsl_complex_cos, "libgsl"), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex tangent of the complex number z, \tan(z) =
# \sin(z)/\cos(z).
# 
#   Returns: gsl_complex
function gsl_complex_tan (z::gsl_complex)
    ccall( (:gsl_complex_tan, "libgsl"), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex secant of the complex number z, \sec(z) =
# 1/\cos(z).
# 
#   Returns: gsl_complex
function gsl_complex_sec (z::gsl_complex)
    ccall( (:gsl_complex_sec, "libgsl"), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex cosecant of the complex number z, \csc(z) =
# 1/\sin(z).
# 
#   Returns: gsl_complex
function gsl_complex_csc (z::gsl_complex)
    ccall( (:gsl_complex_csc, "libgsl"), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex cotangent of the complex number z, \cot(z)
# = 1/\tan(z).
# 
#   Returns: gsl_complex
function gsl_complex_cot (z::gsl_complex)
    ccall( (:gsl_complex_cot, "libgsl"), gsl_complex, (gsl_complex, ), z )
end
