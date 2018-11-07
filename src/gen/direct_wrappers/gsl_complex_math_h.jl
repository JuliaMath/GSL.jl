#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_complex_math.h #######################################################


@doc md"""
    complex_polar(r, theta) -> gsl_complex

C signature:
`gsl_complex gsl_complex_polar (double r, double theta)`

GSL documentation:

### `gsl_complex gsl_complex_polar (double r, double theta)`

> This function returns the complex number $z = r \exp(i \theta) = r
> (\cos(\theta) + i \sin(\theta))$ from the polar representation (`r`,
> `theta`).

"""
function complex_polar(r, theta)
    ccall((:gsl_complex_polar, libgsl), gsl_complex, (Cdouble, Cdouble), r, theta)
end

@doc md"""
    complex_rect(x, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_rect (double x, double y)`

GSL documentation:

### `gsl_complex gsl_complex_rect (double x, double y)`

> This function uses the rectangular Cartesian components $(x,y)$ to
> return the complex number $z = x + i y$. An inline version of this
> function is used when `HAVE_INLINE` is defined.

"""
function complex_rect(x, y)
    ccall((:gsl_complex_rect, libgsl), gsl_complex, (Cdouble, Cdouble), x, y)
end

@doc md"""
    complex_abs(z) -> Cdouble

C signature:
`double gsl_complex_abs (gsl_complex z)`

GSL documentation:

### `double gsl_complex_abs (gsl_complex z)`

> This function returns the magnitude of the complex number `z`, $|z|$.

"""
function complex_abs(z)
    ccall((:gsl_complex_abs, libgsl), Cdouble, (gsl_complex,), z)
end

@doc md"""
    complex_abs2(z) -> Cdouble

C signature:
`double gsl_complex_abs2 (gsl_complex z)`

GSL documentation:

### `double gsl_complex_abs2 (gsl_complex z)`

> This function returns the squared magnitude of the complex number `z`,
> $|z|^2$.

"""
function complex_abs2(z)
    ccall((:gsl_complex_abs2, libgsl), Cdouble, (gsl_complex,), z)
end

@doc md"""
    complex_logabs(z) -> Cdouble

C signature:
`double gsl_complex_logabs (gsl_complex z)`

GSL documentation:

### `double gsl_complex_logabs (gsl_complex z)`

> This function returns the natural logarithm of the magnitude of the
> complex number `z`, $\log|z|$. It allows an accurate evaluation of
> $\log|z|$ when $|z|$ is close to one. The direct evaluation of
> `log(gsl_complex_abs(z))` would lead to a loss of precision in this
> case.

"""
function complex_logabs(z)
    ccall((:gsl_complex_logabs, libgsl), Cdouble, (gsl_complex,), z)
end

@doc md"""
    complex_add(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_add (gsl_complex a, gsl_complex b)`

> This function returns the sum of the complex numbers `a` and `b`,
> $z=a+b$.

"""
function complex_add(a, b)
    ccall((:gsl_complex_add, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_sub(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_sub (gsl_complex a, gsl_complex b)`

> This function returns the difference of the complex numbers `a` and
> `b`, $z=a-b$.

"""
function complex_sub(a, b)
    ccall((:gsl_complex_sub, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_mul(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_mul (gsl_complex a, gsl_complex b)`

> This function returns the product of the complex numbers `a` and `b`,
> $z=ab$.

"""
function complex_mul(a, b)
    ccall((:gsl_complex_mul, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_div(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_div (gsl_complex a, gsl_complex b)`

> This function returns the quotient of the complex numbers `a` and `b`,
> $z=a/b$.

"""
function complex_div(a, b)
    ccall((:gsl_complex_div, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_add_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add_real (gsl_complex a, double x)`

GSL documentation:

### `gsl_complex gsl_complex_add_real (gsl_complex a, double x)`

> This function returns the sum of the complex number `a` and the real
> number `x`, $z=a+x$.

"""
function complex_add_real(a, x)
    ccall((:gsl_complex_add_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

@doc md"""
    complex_sub_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub_real (gsl_complex a, double x)`

GSL documentation:

### `gsl_complex gsl_complex_sub_real (gsl_complex a, double x)`

> This function returns the difference of the complex number `a` and the
> real number `x`, $z=a-x$.

"""
function complex_sub_real(a, x)
    ccall((:gsl_complex_sub_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

@doc md"""
    complex_mul_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul_real (gsl_complex a, double x)`

GSL documentation:

### `gsl_complex gsl_complex_mul_real (gsl_complex a, double x)`

> This function returns the product of the complex number `a` and the
> real number `x`, $z=ax$.

"""
function complex_mul_real(a, x)
    ccall((:gsl_complex_mul_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

@doc md"""
    complex_div_real(a, x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div_real (gsl_complex a, double x)`

GSL documentation:

### `gsl_complex gsl_complex_div_real (gsl_complex a, double x)`

> This function returns the quotient of the complex number `a` and the
> real number `x`, $z=a/x$.

"""
function complex_div_real(a, x)
    ccall((:gsl_complex_div_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, x)
end

@doc md"""
    complex_add_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_add_imag (gsl_complex a, double y)`

GSL documentation:

### `gsl_complex gsl_complex_add_imag (gsl_complex a, double y)`

> This function returns the sum of the complex number `a` and the
> imaginary number $iy$, $z=a+iy$.

"""
function complex_add_imag(a, y)
    ccall((:gsl_complex_add_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

@doc md"""
    complex_sub_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sub_imag (gsl_complex a, double y)`

GSL documentation:

### `gsl_complex gsl_complex_sub_imag (gsl_complex a, double y)`

> This function returns the difference of the complex number `a` and the
> imaginary number $iy$, $z=a-iy$.

"""
function complex_sub_imag(a, y)
    ccall((:gsl_complex_sub_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

@doc md"""
    complex_mul_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_mul_imag (gsl_complex a, double y)`

GSL documentation:

### `gsl_complex gsl_complex_mul_imag (gsl_complex a, double y)`

> This function returns the product of the complex number `a` and the
> imaginary number $iy$, $z=a*(iy)$.

"""
function complex_mul_imag(a, y)
    ccall((:gsl_complex_mul_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

@doc md"""
    complex_div_imag(a, y) -> gsl_complex

C signature:
`gsl_complex gsl_complex_div_imag (gsl_complex a, double y)`

GSL documentation:

### `gsl_complex gsl_complex_div_imag (gsl_complex a, double y)`

> This function returns the quotient of the complex number `a` and the
> imaginary number $iy$, $z=a/(iy)$.

"""
function complex_div_imag(a, y)
    ccall((:gsl_complex_div_imag, libgsl), gsl_complex, (gsl_complex, Cdouble), a, y)
end

@doc md"""
    complex_conjugate(z) -> gsl_complex

C signature:
`gsl_complex gsl_complex_conjugate (gsl_complex z)`

GSL documentation:

### `gsl_complex gsl_complex_conjugate (gsl_complex z)`

> This function returns the complex conjugate of the complex number `z`,
> $z^* = x - i y$.

"""
function complex_conjugate(z)
    ccall((:gsl_complex_conjugate, libgsl), gsl_complex, (gsl_complex,), z)
end

@doc md"""
    complex_inverse(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_inverse (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_inverse (gsl_complex z)`

> This function returns the inverse, or reciprocal, of the complex
> number `z`, $1/z = (x - i y)/(x^2 + y^2)$.

"""
function complex_inverse(a)
    ccall((:gsl_complex_inverse, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_negative(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_negative (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_negative (gsl_complex z)`

> This function returns the negative of the complex number `z`,
> $-z = (-x) + i(-y)$.

"""
function complex_negative(a)
    ccall((:gsl_complex_negative, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_sqrt(z) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sqrt (gsl_complex z)`

GSL documentation:

### `gsl_complex gsl_complex_sqrt (gsl_complex z)`

> This function returns the square root of the complex number `z`,
> $\sqrt z$. The branch cut is the negative real axis. The result always
> lies in the right half of the complex plane.

"""
function complex_sqrt(z)
    ccall((:gsl_complex_sqrt, libgsl), gsl_complex, (gsl_complex,), z)
end

@doc md"""
    complex_sqrt_real(x) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sqrt_real (double x)`

GSL documentation:

### `gsl_complex gsl_complex_sqrt_real (double x)`

> This function returns the complex square root of the real number `x`,
> where `x` may be negative.

"""
function complex_sqrt_real(x)
    ccall((:gsl_complex_sqrt_real, libgsl), gsl_complex, (Cdouble,), x)
end

@doc md"""
    complex_pow(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_pow (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_pow (gsl_complex z, gsl_complex a)`

> The function returns the complex number `z` raised to the complex
> power `a`, $z^a$. This is computed as $\exp(\log(z)*a)$ using complex
> logarithms and complex exponentials.

"""
function complex_pow(a, b)
    ccall((:gsl_complex_pow, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_pow_real(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_pow_real (gsl_complex a, double b)`

GSL documentation:

### `gsl_complex gsl_complex_pow_real (gsl_complex z, double x)`

> This function returns the complex number `z` raised to the real power
> `x`, $z^x$.

"""
function complex_pow_real(a, b)
    ccall((:gsl_complex_pow_real, libgsl), gsl_complex, (gsl_complex, Cdouble), a, b)
end

@doc md"""
    complex_exp(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_exp (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_exp (gsl_complex z)`

> This function returns the complex exponential of the complex number
> `z`, $\exp(z)$.

"""
function complex_exp(a)
    ccall((:gsl_complex_exp, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_log(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_log (gsl_complex z)`

> This function returns the complex natural logarithm (base $e$) of the
> complex number `z`, $\log(z)$. The branch cut is the negative real
> axis.

"""
function complex_log(a)
    ccall((:gsl_complex_log, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_log10(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log10 (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_log10 (gsl_complex z)`

> This function returns the complex base-10 logarithm of the complex
> number `z`, $\log_{10} (z)$.

"""
function complex_log10(a)
    ccall((:gsl_complex_log10, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_log_b(a, b) -> gsl_complex

C signature:
`gsl_complex gsl_complex_log_b (gsl_complex a, gsl_complex b)`

GSL documentation:

### `gsl_complex gsl_complex_log_b (gsl_complex z, gsl_complex b)`

> This function returns the complex base-`b` logarithm of the complex
> number `z`, $\log_b(z)$. This quantity is computed as the ratio
> $\log(z)/\log(b)$.

"""
function complex_log_b(a, b)
    ccall((:gsl_complex_log_b, libgsl), gsl_complex, (gsl_complex, gsl_complex), a, b)
end

@doc md"""
    complex_sin(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sin (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_sin (gsl_complex z)`

> This function returns the complex sine of the complex number `z`,
> $\sin(z) = (\exp(iz) - \exp(-iz))/(2i)$.

"""
function complex_sin(a)
    ccall((:gsl_complex_sin, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_cos(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cos (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_cos (gsl_complex z)`

> This function returns the complex cosine of the complex number `z`,
> $\cos(z) = (\exp(iz) + \exp(-iz))/2$.

"""
function complex_cos(a)
    ccall((:gsl_complex_cos, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_sec(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sec (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_sec (gsl_complex z)`

> This function returns the complex secant of the complex number `z`,
> $\sec(z) = 1/\cos(z)$.

"""
function complex_sec(a)
    ccall((:gsl_complex_sec, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_csc(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_csc (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_csc (gsl_complex z)`

> This function returns the complex cosecant of the complex number `z`,
> $\csc(z) = 1/\sin(z)$.

"""
function complex_csc(a)
    ccall((:gsl_complex_csc, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_tan(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_tan (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_tan (gsl_complex z)`

> This function returns the complex tangent of the complex number `z`,
> $\tan(z) = \sin(z)/\cos(z)$.

"""
function complex_tan(a)
    ccall((:gsl_complex_tan, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_cot(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cot (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_cot (gsl_complex z)`

> This function returns the complex cotangent of the complex number `z`,
> $\cot(z) = 1/\tan(z)$.

"""
function complex_cot(a)
    ccall((:gsl_complex_cot, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arcsin(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsin (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsin (gsl_complex z)`

> This function returns the complex arcsine of the complex number `z`,
> $\arcsin(z)$. The branch cuts are on the real axis, less than $-1$ and
> greater than $1$.

"""
function complex_arcsin(a)
    ccall((:gsl_complex_arcsin, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arcsin_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsin_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsin_real (double z)`

> This function returns the complex arcsine of the real number `z`,
> $\arcsin(z)$. For $z$ between $-1$ and $1$, the function returns a
> real value in the range $[-\pi/2,\pi/2]$. For $z$ less than $-1$ the
> result has a real part of $-\pi/2$ and a positive imaginary part. For
> $z$ greater than $1$ the result has a real part of $\pi/2$ and a
> negative imaginary part.

"""
function complex_arcsin_real(a)
    ccall((:gsl_complex_arcsin_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arccos(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccos (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccos (gsl_complex z)`

> This function returns the complex arccosine of the complex number `z`,
> $\arccos(z)$. The branch cuts are on the real axis, less than $-1$ and
> greater than $1$.

"""
function complex_arccos(a)
    ccall((:gsl_complex_arccos, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccos_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccos_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arccos_real (double z)`

> This function returns the complex arccosine of the real number `z`,
> $\arccos(z)$. For $z$ between $-1$ and $1$, the function returns a
> real value in the range $[0,\pi]$. For $z$ less than $-1$ the result
> has a real part of $\pi$ and a negative imaginary part. For $z$
> greater than $1$ the result is purely imaginary and positive.

"""
function complex_arccos_real(a)
    ccall((:gsl_complex_arccos_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arcsec(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsec (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsec (gsl_complex z)`

> This function returns the complex arcsecant of the complex number `z`,
> $\arcsec(z) = \arccos(1/z)$.

"""
function complex_arcsec(a)
    ccall((:gsl_complex_arcsec, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arcsec_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsec_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsec_real (double z)`

> This function returns the complex arcsecant of the real number `z`,
> $\arcsec(z) = \arccos(1/z)$.

"""
function complex_arcsec_real(a)
    ccall((:gsl_complex_arcsec_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arccsc(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsc (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccsc (gsl_complex z)`

> This function returns the complex arccosecant of the complex number
> `z`, $\arccsc(z) = \arcsin(1/z)$.

"""
function complex_arccsc(a)
    ccall((:gsl_complex_arccsc, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccsc_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsc_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arccsc_real (double z)`

> This function returns the complex arccosecant of the real number `z`,
> $\arccsc(z) = \arcsin(1/z)$.

"""
function complex_arccsc_real(a)
    ccall((:gsl_complex_arccsc_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arctan(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctan (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arctan (gsl_complex z)`

> This function returns the complex arctangent of the complex number
> `z`, $\arctan(z)$. The branch cuts are on the imaginary axis, below
> $-i$ and above $i$.

"""
function complex_arctan(a)
    ccall((:gsl_complex_arctan, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccot(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccot (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccot (gsl_complex z)`

> This function returns the complex arccotangent of the complex number
> `z`, $\arccot(z) = \arctan(1/z)$.

"""
function complex_arccot(a)
    ccall((:gsl_complex_arccot, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_sinh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sinh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_sinh (gsl_complex z)`

> This function returns the complex hyperbolic sine of the complex
> number `z`, $\sinh(z) = (\exp(z) - \exp(-z))/2$.

"""
function complex_sinh(a)
    ccall((:gsl_complex_sinh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_cosh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_cosh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_cosh (gsl_complex z)`

> This function returns the complex hyperbolic cosine of the complex
> number `z`, $\cosh(z) = (\exp(z) + \exp(-z))/2$.

"""
function complex_cosh(a)
    ccall((:gsl_complex_cosh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_sech(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_sech (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_sech (gsl_complex z)`

> This function returns the complex hyperbolic secant of the complex
> number `z`, $\sech(z) = 1/\cosh(z)$.

"""
function complex_sech(a)
    ccall((:gsl_complex_sech, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_csch(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_csch (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_csch (gsl_complex z)`

> This function returns the complex hyperbolic cosecant of the complex
> number `z`, $\csch(z) = 1/\sinh(z)$.

"""
function complex_csch(a)
    ccall((:gsl_complex_csch, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_tanh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_tanh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_tanh (gsl_complex z)`

> This function returns the complex hyperbolic tangent of the complex
> number `z`, $\tanh(z) = \sinh(z)/\cosh(z)$.

"""
function complex_tanh(a)
    ccall((:gsl_complex_tanh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_coth(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_coth (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_coth (gsl_complex z)`

> This function returns the complex hyperbolic cotangent of the complex
> number `z`, $\coth(z) = 1/\tanh(z)$.

"""
function complex_coth(a)
    ccall((:gsl_complex_coth, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arcsinh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsinh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsinh (gsl_complex z)`

> This function returns the complex hyperbolic arcsine of the complex
> number `z`, $\arcsinh(z)$. The branch cuts are on the imaginary axis,
> below $-i$ and above $i$.

"""
function complex_arcsinh(a)
    ccall((:gsl_complex_arcsinh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccosh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccosh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccosh (gsl_complex z)`

> This function returns the complex hyperbolic arccosine of the complex
> number `z`, $\arccosh(z)$. The branch cut is on the real axis, less
> than $1$. Note that in this case we use the negative square root in
> formula 4.6.21 of Abramowitz & Stegun giving
> $\arccosh(z)=\log(z-\sqrt{z^2-1})$.

"""
function complex_arccosh(a)
    ccall((:gsl_complex_arccosh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccosh_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccosh_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arccosh_real (double z)`

> This function returns the complex hyperbolic arccosine of the real
> number `z`, $\arccosh(z)$.

"""
function complex_arccosh_real(a)
    ccall((:gsl_complex_arccosh_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arcsech(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arcsech (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arcsech (gsl_complex z)`

> This function returns the complex hyperbolic arcsecant of the complex
> number `z`, $\arcsech(z) = \arccosh(1/z)$.

"""
function complex_arcsech(a)
    ccall((:gsl_complex_arcsech, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arccsch(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccsch (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccsch (gsl_complex z)`

> This function returns the complex hyperbolic arccosecant of the
> complex number `z`, $\arccsch(z) = \arcsinh(1/z)$.

"""
function complex_arccsch(a)
    ccall((:gsl_complex_arccsch, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arctanh(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctanh (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arctanh (gsl_complex z)`

> This function returns the complex hyperbolic arctangent of the complex
> number `z`, $\arctanh(z)$. The branch cuts are on the real axis, less
> than $-1$ and greater than $1$.

"""
function complex_arctanh(a)
    ccall((:gsl_complex_arctanh, libgsl), gsl_complex, (gsl_complex,), a)
end

@doc md"""
    complex_arctanh_real(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arctanh_real (double a)`

GSL documentation:

### `gsl_complex gsl_complex_arctanh_real (double z)`

> This function returns the complex hyperbolic arctangent of the real
> number `z`, $\arctanh(z)$.

"""
function complex_arctanh_real(a)
    ccall((:gsl_complex_arctanh_real, libgsl), gsl_complex, (Cdouble,), a)
end

@doc md"""
    complex_arccoth(a) -> gsl_complex

C signature:
`gsl_complex gsl_complex_arccoth (gsl_complex a)`

GSL documentation:

### `gsl_complex gsl_complex_arccoth (gsl_complex z)`

> This function returns the complex hyperbolic arccotangent of the
> complex number `z`, $\arccoth(z) = \arctanh(1/z)$.

"""
function complex_arccoth(a)
    ccall((:gsl_complex_arccoth, libgsl), gsl_complex, (gsl_complex,), a)
end

