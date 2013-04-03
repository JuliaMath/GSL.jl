#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 5.4 Elementary Complex Functions #
####################################
export gsl_complex_sqrt, gsl_complex_sqrt_real, gsl_complex_pow,
       gsl_complex_pow_real, gsl_complex_exp, gsl_complex_log,
       gsl_complex_log10, gsl_complex_log_b


# This function returns the square root of the complex number z, \sqrt z. The
# branch cut is the negative real axis. The result always lies in the right
# half of the complex plane.
# 
#   Returns: gsl_complex
function gsl_complex_sqrt(z::gsl_complex)
    ccall( (:gsl_complex_sqrt, :libgsl), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex square root of the real number x, where x
# may be negative.
# 
#   Returns: gsl_complex
function gsl_complex_sqrt_real(x::Real)
    ccall( (:gsl_complex_sqrt_real, :libgsl), gsl_complex, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_complex_sqrt_real


# The function returns the complex number z raised to the complex power a, z^a.
# This is computed as \exp(\log(z)*a) using complex logarithms and complex
# exponentials.
# 
#   Returns: gsl_complex
function gsl_complex_pow(z::gsl_complex, a::gsl_complex)
    ccall( (:gsl_complex_pow, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), z, a )
end


# This function returns the complex number z raised to the real power x, z^x.
# 
#   Returns: gsl_complex
function gsl_complex_pow_real(z::gsl_complex, x::Real)
    ccall( (:gsl_complex_pow_real, :libgsl), gsl_complex, (gsl_complex,
        Cdouble), z, x )
end


# This function returns the complex exponential of the complex number z,
# \exp(z).
# 
#   Returns: gsl_complex
function gsl_complex_exp(z::gsl_complex)
    ccall( (:gsl_complex_exp, :libgsl), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex natural logarithm (base e) of the complex
# number z, \log(z).  The branch cut is the negative real axis.
# 
#   Returns: gsl_complex
function gsl_complex_log(z::gsl_complex)
    ccall( (:gsl_complex_log, :libgsl), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex base-10 logarithm of the complex number z,
# \log_10 (z).
# 
#   Returns: gsl_complex
function gsl_complex_log10(z::gsl_complex)
    ccall( (:gsl_complex_log10, :libgsl), gsl_complex, (gsl_complex, ), z )
end


# This function returns the complex base-b logarithm of the complex number z,
# \log_b(z). This quantity is computed as the ratio \log(z)/\log(b).
# 
#   Returns: gsl_complex
function gsl_complex_log_b(z::gsl_complex, b::gsl_complex)
    ccall( (:gsl_complex_log_b, :libgsl), gsl_complex, (gsl_complex,
        gsl_complex), z, b )
end
