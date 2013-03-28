#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 5.7 Complex Hyperbolic Functions #
####################################
export gsl_complex_sinh, gsl_complex_cosh, gsl_complex_tanh, gsl_complex_sech,
       gsl_complex_csch, gsl_complex_coth


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic sine of the complex number z,
# \sinh(z) = (\exp(z) - \exp(-z))/2.
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_sinh (z::gsl_complex)
###     ccall( (:gsl_complex_sinh, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic cosine of the complex number z,
# \cosh(z) = (\exp(z) + \exp(-z))/2.
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_cosh (z::gsl_complex)
###     ccall( (:gsl_complex_cosh, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic tangent of the complex number z,
# \tanh(z) = \sinh(z)/\cosh(z).
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_tanh (z::gsl_complex)
###     ccall( (:gsl_complex_tanh, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic secant of the complex number z,
# \sech(z) = 1/\cosh(z).
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_sech (z::gsl_complex)
###     ccall( (:gsl_complex_sech, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic cosecant of the complex number
# z, \csch(z) = 1/\sinh(z).
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_csch (z::gsl_complex)
###     ccall( (:gsl_complex_csch, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end


### Function uses unknown type; disabled
### # This function returns the complex hyperbolic cotangent of the complex number
# z, \coth(z) = 1/\tanh(z).
# 
### #   Returns: gsl_complex
### #XXX Unknown input type z::gsl_complex
### #XXX Unknown output type gsl_complex
### function gsl_complex_coth (z::gsl_complex)
###     ccall( (:gsl_complex_coth, "libgsl"), gsl_complex, (gsl_complex, ), z )
### end