#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 5.8 Inverse Complex Hyperbolic Functions #
############################################
export gsl_complex_arcsinh, gsl_complex_arccosh, gsl_complex_arccosh_real,
       gsl_complex_arctanh, gsl_complex_arctanh_real, gsl_complex_arcsech,
       gsl_complex_arccsch, gsl_complex_arccoth


# This function returns the complex hyperbolic arcsine of the complex number z,
# \arcsinh(z).  The branch cuts are on the imaginary axis, below -i and above
# i.
# 
#   Returns: gsl_complex
function gsl_complex_arcsinh(z::gsl_complex)
    ccall( (:gsl_complex_arcsinh, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex hyperbolic arccosine of the complex number
# z, \arccosh(z).  The branch cut is on the real axis, less than 1.  Note that
# in this case we use the negative square root in formula 4.6.21 of Abramowitz
# & Stegun giving  \arccosh(z)=\log(z-\sqrt{z^2-1}).
# 
#   Returns: gsl_complex
function gsl_complex_arccosh(z::gsl_complex)
    ccall( (:gsl_complex_arccosh, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex hyperbolic arccosine of the real number z,
# \arccosh(z).
# 
#   Returns: gsl_complex
function gsl_complex_arccosh_real(z::Real)
    ccall( (:gsl_complex_arccosh_real, :libgsl), gsl_complex, (Cdouble, ),
        z )
end
@vectorize_1arg Number gsl_complex_arccosh_real


# This function returns the complex hyperbolic arctangent of the complex number
# z, \arctanh(z).  The branch cuts are on the real axis, less than -1 and
# greater than 1.
# 
#   Returns: gsl_complex
function gsl_complex_arctanh(z::gsl_complex)
    ccall( (:gsl_complex_arctanh, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex hyperbolic arctangent of the real number z,
# \arctanh(z).
# 
#   Returns: gsl_complex
function gsl_complex_arctanh_real(z::Real)
    ccall( (:gsl_complex_arctanh_real, :libgsl), gsl_complex, (Cdouble, ),
        z )
end
@vectorize_1arg Number gsl_complex_arctanh_real


# This function returns the complex hyperbolic arcsecant of the complex number
# z, \arcsech(z) = \arccosh(1/z).
# 
#   Returns: gsl_complex
function gsl_complex_arcsech(z::gsl_complex)
    ccall( (:gsl_complex_arcsech, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex hyperbolic arccosecant of the complex
# number z, \arccsch(z) = \arcsin(1/z).
# 
#   Returns: gsl_complex
function gsl_complex_arccsch(z::gsl_complex)
    ccall( (:gsl_complex_arccsch, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end


# This function returns the complex hyperbolic arccotangent of the complex
# number z, \arccoth(z) = \arctanh(1/z).
# 
#   Returns: gsl_complex
function gsl_complex_arccoth(z::gsl_complex)
    ccall( (:gsl_complex_arccoth, :libgsl), gsl_complex, (gsl_complex, ), z
        )
end
