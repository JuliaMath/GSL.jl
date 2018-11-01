#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_complex_math.h #######################################################


"""
    gsl_complex_polar(r, theta) -> gsl_complex

C signature:
`gsl_complex gsl_complex_polar (double r, double theta)`
"""
function gsl_complex_polar(r, theta)
    ccall((:gsl_complex_polar, libgsl), gsl_complex, (Cdouble, Cdouble), r, theta)
end

"""
    gsl_complex_rect(x, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_rect (double x, double y)`
"""
function gsl_complex_rect(x, y)
    ccall((:gsl_complex_rect, libgsl), gsl_complex, (Cdouble, Cdouble), x, y)
end

"""
    gsl_complex_abs(z) -> Cdouble

C signature:
`double gsl_complex_abs (gsl_complex z)`
"""
function gsl_complex_abs(z)
    ccall((:gsl_complex_abs, libgsl), Cdouble, (gsl_complex,), z)
end

"""
    gsl_complex_abs2(z) -> Cdouble

C signature:
`double gsl_complex_abs2 (gsl_complex z)`
"""
function gsl_complex_abs2(z)
    ccall((:gsl_complex_abs2, libgsl), Cdouble, (gsl_complex,), z)
end

"""
    gsl_complex_logabs(z) -> Cdouble

C signature:
`double gsl_complex_logabs (gsl_complex z)`
"""
function gsl_complex_logabs(z)
    ccall((:gsl_complex_logabs, libgsl), Cdouble, (gsl_complex,), z)
end

"""
    gsl_complex_add(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_add(a, b)
    ccall((:gsl_complex_add, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_sub(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_sub(a, b)
    ccall((:gsl_complex_sub, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_mul(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_mul(a, b)
    ccall((:gsl_complex_mul, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_div(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_div(a, b)
    ccall((:gsl_complex_div, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_add_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add_real (gsl_complex a, double x)`
"""
function gsl_complex_add_real(a, x)
    ccall((:gsl_complex_add_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

"""
    gsl_complex_sub_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub_real (gsl_complex a, double x)`
"""
function gsl_complex_sub_real(a, x)
    ccall((:gsl_complex_sub_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

"""
    gsl_complex_mul_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul_real (gsl_complex a, double x)`
"""
function gsl_complex_mul_real(a, x)
    ccall((:gsl_complex_mul_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

"""
    gsl_complex_div_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div_real (gsl_complex a, double x)`
"""
function gsl_complex_div_real(a, x)
    ccall((:gsl_complex_div_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

"""
    gsl_complex_add_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add_imag (gsl_complex a, double y)`
"""
function gsl_complex_add_imag(a, y)
    ccall((:gsl_complex_add_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

"""
    gsl_complex_sub_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub_imag (gsl_complex a, double y)`
"""
function gsl_complex_sub_imag(a, y)
    ccall((:gsl_complex_sub_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

"""
    gsl_complex_mul_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul_imag (gsl_complex a, double y)`
"""
function gsl_complex_mul_imag(a, y)
    ccall((:gsl_complex_mul_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

"""
    gsl_complex_div_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div_imag (gsl_complex a, double y)`
"""
function gsl_complex_div_imag(a, y)
    ccall((:gsl_complex_div_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

"""
    gsl_complex_conjugate(z) -> gsl_complex

C signature:
`gsl_complex gsl_complex_conjugate (gsl_complex z)`
"""
function gsl_complex_conjugate(z)
    ccall((:gsl_complex_conjugate, libgsl), gsl_complex, (gsl_complex,), z)
end

"""
    gsl_complex_inverse(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_inverse (gsl_complex a)`
"""
function gsl_complex_inverse(a)
    ccall((:gsl_complex_inverse, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_negative(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_negative (gsl_complex a)`
"""
function gsl_complex_negative(a)
    ccall((:gsl_complex_negative, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_sqrt(z) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sqrt (gsl_complex z)`
"""
function gsl_complex_sqrt(z)
    ccall((:gsl_complex_sqrt, libgsl), gsl_complex, (gsl_complex,), z)
end

"""
    gsl_complex_sqrt_real(x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sqrt_real (double x)`
"""
function gsl_complex_sqrt_real(x)
    ccall((:gsl_complex_sqrt_real, libgsl), gsl_complex, (Cdouble,), x)
end

"""
    gsl_complex_pow(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_pow (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_pow(a, b)
    ccall((:gsl_complex_pow, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_pow_real(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_pow_real (gsl_complex a, double b)`
"""
function gsl_complex_pow_real(a, b)
    ccall((:gsl_complex_pow_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, b)
end

"""
    gsl_complex_exp(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_exp (gsl_complex a)`
"""
function gsl_complex_exp(a)
    ccall((:gsl_complex_exp, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_log(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log (gsl_complex a)`
"""
function gsl_complex_log(a)
    ccall((:gsl_complex_log, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_log10(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log10 (gsl_complex a)`
"""
function gsl_complex_log10(a)
    ccall((:gsl_complex_log10, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_log_b(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log_b (gsl_complex a, gsl_complex b)`
"""
function gsl_complex_log_b(a, b)
    ccall((:gsl_complex_log_b, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

"""
    gsl_complex_sin(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sin (gsl_complex a)`
"""
function gsl_complex_sin(a)
    ccall((:gsl_complex_sin, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_cos(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cos (gsl_complex a)`
"""
function gsl_complex_cos(a)
    ccall((:gsl_complex_cos, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_sec(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sec (gsl_complex a)`
"""
function gsl_complex_sec(a)
    ccall((:gsl_complex_sec, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_csc(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_csc (gsl_complex a)`
"""
function gsl_complex_csc(a)
    ccall((:gsl_complex_csc, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_tan(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_tan (gsl_complex a)`
"""
function gsl_complex_tan(a)
    ccall((:gsl_complex_tan, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_cot(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cot (gsl_complex a)`
"""
function gsl_complex_cot(a)
    ccall((:gsl_complex_cot, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arcsin(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsin (gsl_complex a)`
"""
function gsl_complex_arcsin(a)
    ccall((:gsl_complex_arcsin, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arcsin_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsin_real (double a)`
"""
function gsl_complex_arcsin_real(a)
    ccall((:gsl_complex_arcsin_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arccos(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccos (gsl_complex a)`
"""
function gsl_complex_arccos(a)
    ccall((:gsl_complex_arccos, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccos_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccos_real (double a)`
"""
function gsl_complex_arccos_real(a)
    ccall((:gsl_complex_arccos_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arcsec(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsec (gsl_complex a)`
"""
function gsl_complex_arcsec(a)
    ccall((:gsl_complex_arcsec, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arcsec_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsec_real (double a)`
"""
function gsl_complex_arcsec_real(a)
    ccall((:gsl_complex_arcsec_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arccsc(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsc (gsl_complex a)`
"""
function gsl_complex_arccsc(a)
    ccall((:gsl_complex_arccsc, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccsc_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsc_real (double a)`
"""
function gsl_complex_arccsc_real(a)
    ccall((:gsl_complex_arccsc_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arctan(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctan (gsl_complex a)`
"""
function gsl_complex_arctan(a)
    ccall((:gsl_complex_arctan, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccot(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccot (gsl_complex a)`
"""
function gsl_complex_arccot(a)
    ccall((:gsl_complex_arccot, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_sinh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sinh (gsl_complex a)`
"""
function gsl_complex_sinh(a)
    ccall((:gsl_complex_sinh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_cosh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cosh (gsl_complex a)`
"""
function gsl_complex_cosh(a)
    ccall((:gsl_complex_cosh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_sech(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sech (gsl_complex a)`
"""
function gsl_complex_sech(a)
    ccall((:gsl_complex_sech, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_csch(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_csch (gsl_complex a)`
"""
function gsl_complex_csch(a)
    ccall((:gsl_complex_csch, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_tanh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_tanh (gsl_complex a)`
"""
function gsl_complex_tanh(a)
    ccall((:gsl_complex_tanh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_coth(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_coth (gsl_complex a)`
"""
function gsl_complex_coth(a)
    ccall((:gsl_complex_coth, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arcsinh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsinh (gsl_complex a)`
"""
function gsl_complex_arcsinh(a)
    ccall((:gsl_complex_arcsinh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccosh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccosh (gsl_complex a)`
"""
function gsl_complex_arccosh(a)
    ccall((:gsl_complex_arccosh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccosh_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccosh_real (double a)`
"""
function gsl_complex_arccosh_real(a)
    ccall((:gsl_complex_arccosh_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arcsech(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsech (gsl_complex a)`
"""
function gsl_complex_arcsech(a)
    ccall((:gsl_complex_arcsech, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arccsch(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsch (gsl_complex a)`
"""
function gsl_complex_arccsch(a)
    ccall((:gsl_complex_arccsch, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arctanh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctanh (gsl_complex a)`
"""
function gsl_complex_arctanh(a)
    ccall((:gsl_complex_arctanh, libgsl), gsl_complex, (gsl_complex,), a)
end

"""
    gsl_complex_arctanh_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctanh_real (double a)`
"""
function gsl_complex_arctanh_real(a)
    ccall((:gsl_complex_arctanh_real, libgsl), gsl_complex, (Cdouble,), a)
end

"""
    gsl_complex_arccoth(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccoth (gsl_complex a)`
"""
function gsl_complex_arccoth(a)
    ccall((:gsl_complex_arccoth, libgsl), gsl_complex, (gsl_complex,), a)
end

