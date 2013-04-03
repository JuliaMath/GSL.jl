#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 5.6 Inverse Complex Trigonometric Functions #
###############################################
export complex_arcsin, complex_arcsin_real, complex_arccos,
       complex_arccos_real, complex_arctan, complex_arcsec,
       complex_arcsec_real, complex_arccsc, complex_arccsc_real, complex_arccot


# This function returns the complex arcsine of the complex number z,
# \arcsin(z). The branch cuts are on the real axis, less than -1 and greater
# than 1.
# 
#   Returns: gsl_complex
function complex_arcsin(z::gsl_complex)
    ccall( (:gsl_complex_arcsin, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex arcsine of the real number z, \arcsin(z).
# For z between -1 and 1, the function returns a real value in the range
# [-\pi/2,\pi/2]. For z less than -1 the result has a real part of -\pi/2 and a
# positive imaginary part.  For z greater than 1 the result has a real part of
# \pi/2 and a negative imaginary part.
# 
#   Returns: gsl_complex
function complex_arcsin_real(z::Real)
    ccall( (:gsl_complex_arcsin_real, :libgsl), gsl_complex, (Cdouble, ), z
        )
end
@vectorize_1arg Number complex_arcsin_real


# This function returns the complex arccosine of the complex number z,
# \arccos(z). The branch cuts are on the real axis, less than -1 and greater
# than 1.
# 
#   Returns: gsl_complex
function complex_arccos(z::gsl_complex)
    ccall( (:gsl_complex_arccos, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex arccosine of the real number z, \arccos(z).
# For z between -1 and 1, the function returns a real value in the range
# [0,\pi]. For z less than -1 the result has a real part of \pi and a negative
# imaginary part.  For z greater than 1 the result is purely imaginary and
# positive.
# 
#   Returns: gsl_complex
function complex_arccos_real(z::Real)
    ccall( (:gsl_complex_arccos_real, :libgsl), gsl_complex, (Cdouble, ), z
        )
end
@vectorize_1arg Number complex_arccos_real


# This function returns the complex arctangent of the complex number z,
# \arctan(z). The branch cuts are on the imaginary axis, below -i and above i.
# 
#   Returns: gsl_complex
function complex_arctan(z::gsl_complex)
    ccall( (:gsl_complex_arctan, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex arcsecant of the complex number z,
# \arcsec(z) = \arccos(1/z).
# 
#   Returns: gsl_complex
function complex_arcsec(z::gsl_complex)
    ccall( (:gsl_complex_arcsec, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex arcsecant of the real number z, \arcsec(z)
# = \arccos(1/z).
# 
#   Returns: gsl_complex
function complex_arcsec_real(z::Real)
    ccall( (:gsl_complex_arcsec_real, :libgsl), gsl_complex, (Cdouble, ), z
        )
end
@vectorize_1arg Number complex_arcsec_real


# This function returns the complex arccosecant of the complex number z,
# \arccsc(z) = \arcsin(1/z).
# 
#   Returns: gsl_complex
function complex_arccsc(z::gsl_complex)
    ccall( (:gsl_complex_arccsc, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex arccosecant of the real number z,
# \arccsc(z) = \arcsin(1/z).
# 
#   Returns: gsl_complex
function complex_arccsc_real(z::Real)
    ccall( (:gsl_complex_arccsc_real, :libgsl), gsl_complex, (Cdouble, ), z
        )
end
@vectorize_1arg Number complex_arccsc_real


# This function returns the complex arccotangent of the complex number z,
# \arccot(z) = \arctan(1/z).
# 
#   Returns: gsl_complex
function complex_arccot(z::gsl_complex)
    ccall( (:gsl_complex_arccot, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end
