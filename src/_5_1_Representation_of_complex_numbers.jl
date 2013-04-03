#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 5.1 Representation of complex numbers #
#########################################
export gsl_complex, complex_rect, complex_polar


type gsl_complex
    dat::Ptr{Cdouble}
end




# This function uses the rectangular Cartesian components (x,y) to return the
# complex number z = x + i y.  An inline version of this function is used when
# HAVE_INLINE is defined.
# 
#   Returns: gsl_complex
function complex_rect(x::Real, y::Real)
    ccall( (:gsl_complex_rect, :libgsl), gsl_complex, (Cdouble, Cdouble),
        x, y )
end
@vectorize_2arg Number complex_rect


# This function returns the complex number z = r \exp(i \theta) = r
# (\cos(\theta) + i \sin(\theta)) from the polar representation (r,theta).
# 
#   Returns: gsl_complex
function complex_polar(r::Real, theta::Real)
    ccall( (:gsl_complex_polar, :libgsl), gsl_complex, (Cdouble, Cdouble),
        r, theta )
end
@vectorize_2arg Number complex_polar
