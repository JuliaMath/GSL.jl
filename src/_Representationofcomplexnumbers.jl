#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 5.1 Representation of complex numbers #
#########################################
export gsl_complex_rect, gsl_complex_polar, GSL_REAL, GSL_IMAG,
       GSL_SET_COMPLEX, GSL_SET_REAL, GSL_SET_IMAG


# This function uses the rectangular Cartesian components (x,y) to return the
# complex number z = x + i y.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: gsl_complex
function gsl_complex_rect (x::Cdouble, y::Cdouble)
    ccall( (:gsl_complex_rect, "libgsl"), gsl_complex, (Cdouble, Cdouble),
        x, y )
end


# This function returns the complex number z = r \exp(i \theta) = r
# (\cos(\theta) + i \sin(\theta)) from the polar representation (r,theta).
# 
#   Returns: gsl_complex
function gsl_complex_polar (r::Cdouble, theta::Cdouble)
    ccall( (:gsl_complex_polar, "libgsl"), gsl_complex, (Cdouble, Cdouble),
        r, theta )
end


# These macros return the real and imaginary parts of the complex number z.
# 
#   Returns: 
#XXX Unknown input type z::
#XXX Unknown output type 
function GSL_REAL (z::)
    ccall( (:GSL_REAL, "libgsl"), , (, ), z )
end


# These macros return the real and imaginary parts of the complex number z.
# 
#   Returns: 
#XXX Unknown input type z::
#XXX Unknown output type 
function GSL_IMAG (z::)
    ccall( (:GSL_IMAG, "libgsl"), , (, ), z )
end


# This macro uses the Cartesian components (x,y) to set the real and imaginary
# parts of the complex number pointed to by zp.  For example,
# GSL_SET_COMPLEX(&z, 3, 4)  sets z to be 3 + 4i.
# 
#   Returns: 
#XXX Unknown input type zp::
#XXX Unknown input type x::
#XXX Unknown input type y::
#XXX Unknown output type 
function GSL_SET_COMPLEX (zp::, x::, y::)
    ccall( (:GSL_SET_COMPLEX, "libgsl"), , (, , ), zp, x, y )
end


# These macros allow the real and imaginary parts of the complex number pointed
# to by zp to be set independently.
# 
#   Returns: 
#XXX Unknown input type zp::
#XXX Unknown input type x::
#XXX Unknown output type 
function GSL_SET_REAL (zp::, x::)
    ccall( (:GSL_SET_REAL, "libgsl"), , (, ), zp, x )
end


# These macros allow the real and imaginary parts of the complex number pointed
# to by zp to be set independently.
# 
#   Returns: 
#XXX Unknown input type zp::
#XXX Unknown input type y::
#XXX Unknown output type 
function GSL_SET_IMAG (zp::, y::)
    ccall( (:GSL_SET_IMAG, "libgsl"), , (, ), zp, y )
end