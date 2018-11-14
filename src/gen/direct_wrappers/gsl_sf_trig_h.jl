#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_trig.h ############################################################


@doc md"""
    sf_sin_e(x, result) -> Cint

C signature:
`int gsl_sf_sin_e(double x, gsl_sf_result * result)`
"""
function sf_sin_e(x, result)
    ccall((:gsl_sf_sin_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_sin(x) -> Cdouble

C signature:
`double gsl_sf_sin(const double x)`

GSL documentation:

### `double gsl_sf_sin (double x)`

> int gsl\_sf\_sin\_e (double x, gsl\_sf\_result \* result)

> These routines compute the sine function $\sin(x)$.

"""
function sf_sin(x)
    ccall((:gsl_sf_sin, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_cos_e(x, result) -> Cint

C signature:
`int gsl_sf_cos_e(double x, gsl_sf_result * result)`
"""
function sf_cos_e(x, result)
    ccall((:gsl_sf_cos_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_cos(x) -> Cdouble

C signature:
`double gsl_sf_cos(const double x)`

GSL documentation:

### `double gsl_sf_cos (double x)`

> int gsl\_sf\_cos\_e (double x, gsl\_sf\_result \* result)

> These routines compute the cosine function $\cos(x)$.

"""
function sf_cos(x)
    ccall((:gsl_sf_cos, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_hypot_e(x, y, result) -> Cint

C signature:
`int gsl_sf_hypot_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_hypot_e(x, y, result)
    ccall((:gsl_sf_hypot_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

@doc md"""
    sf_hypot(x, y) -> Cdouble

C signature:
`double gsl_sf_hypot(const double x, const double y)`

GSL documentation:

### `double gsl_sf_hypot (double x, double y)`

> int gsl\_sf\_hypot\_e (double x, double y, gsl\_sf\_result \* result)

> These routines compute the hypotenuse function $\sqrt{x^2 + y^2}$
> avoiding overflow and underflow.

"""
function sf_hypot(x, y)
    ccall((:gsl_sf_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    sf_complex_sin_e(zr, zi, szr, szi) -> Cint

C signature:
`int gsl_sf_complex_sin_e(const double zr, const double zi, gsl_sf_result * szr, gsl_sf_result * szi)`

GSL documentation:

### `int gsl_sf_complex_sin_e (double zr, double zi, gsl_sf_result * szr, gsl_sf_result * szi)`

> This function computes the complex sine, $\sin(z_r + i z_i)$ storing
> the real and imaginary parts in `szr`, `szi`.

"""
function sf_complex_sin_e(zr, zi, szr, szi)
    ccall((:gsl_sf_complex_sin_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, szr, szi)
end

@doc md"""
    sf_complex_cos_e(zr, zi, czr, czi) -> Cint

C signature:
`int gsl_sf_complex_cos_e(const double zr, const double zi, gsl_sf_result * czr, gsl_sf_result * czi)`

GSL documentation:

### `int gsl_sf_complex_cos_e (double zr, double zi, gsl_sf_result * czr, gsl_sf_result * czi)`

> This function computes the complex cosine, $\cos(z_r + i z_i)$ storing
> the real and imaginary parts in `czr`, `czi`.

"""
function sf_complex_cos_e(zr, zi, czr, czi)
    ccall((:gsl_sf_complex_cos_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, czr, czi)
end

@doc md"""
    sf_complex_logsin_e(zr, zi, lszr, lszi) -> Cint

C signature:
`int gsl_sf_complex_logsin_e(const double zr, const double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`

GSL documentation:

### `int gsl_sf_complex_logsin_e (double zr, double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`

> This function computes the logarithm of the complex sine,
> $\log(\sin(z_r + i z_i))$ storing the real and imaginary parts in
> `lszr`, `lszi`.

"""
function sf_complex_logsin_e(zr, zi, lszr, lszi)
    ccall((:gsl_sf_complex_logsin_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lszr, lszi)
end

@doc md"""
    sf_sinc_e(x, result) -> Cint

C signature:
`int gsl_sf_sinc_e(double x, gsl_sf_result * result)`
"""
function sf_sinc_e(x, result)
    ccall((:gsl_sf_sinc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_sinc(x) -> Cdouble

C signature:
`double gsl_sf_sinc(const double x)`

GSL documentation:

### `double gsl_sf_sinc (double x)`

> int gsl\_sf\_sinc\_e (double x, gsl\_sf\_result \* result)

> These routines compute $\sinc(x) = \sin(\pi x) / (\pi x)$ for any
> value of `x`.

"""
function sf_sinc(x)
    ccall((:gsl_sf_sinc, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_lnsinh_e(x, result) -> Cint

C signature:
`int gsl_sf_lnsinh_e(const double x, gsl_sf_result * result)`
"""
function sf_lnsinh_e(x, result)
    ccall((:gsl_sf_lnsinh_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_lnsinh(x) -> Cdouble

C signature:
`double gsl_sf_lnsinh(const double x)`

GSL documentation:

### `double gsl_sf_lnsinh (double x)`

> int gsl\_sf\_lnsinh\_e (double x, gsl\_sf\_result \* result)

> These routines compute $\log(\sinh(x))$ for $x > 0$.

"""
function sf_lnsinh(x)
    ccall((:gsl_sf_lnsinh, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_lncosh_e(x, result) -> Cint

C signature:
`int gsl_sf_lncosh_e(const double x, gsl_sf_result * result)`
"""
function sf_lncosh_e(x, result)
    ccall((:gsl_sf_lncosh_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_lncosh(x) -> Cdouble

C signature:
`double gsl_sf_lncosh(const double x)`

GSL documentation:

### `double gsl_sf_lncosh (double x)`

> int gsl\_sf\_lncosh\_e (double x, gsl\_sf\_result \* result)

> These routines compute $\log(\cosh(x))$ for any `x`.

"""
function sf_lncosh(x)
    ccall((:gsl_sf_lncosh, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_polar_to_rect(r, theta, x, y) -> Cint

C signature:
`int gsl_sf_polar_to_rect(const double r, const double theta, gsl_sf_result * x, gsl_sf_result * y)`

GSL documentation:

### `int gsl_sf_polar_to_rect (double r, double theta, gsl_sf_result * x, gsl_sf_result * y)`

> This function converts the polar coordinates (`r`, `theta`) to
> rectilinear coordinates (`x`, `y`), $x = r\cos(\theta)$,
> $y = r\sin(\theta)$.

"""
function sf_polar_to_rect(r, theta, x, y)
    ccall((:gsl_sf_polar_to_rect, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), r, theta, x, y)
end

@doc md"""
    sf_rect_to_polar(x, y, r, theta) -> Cint

C signature:
`int gsl_sf_rect_to_polar(const double x, const double y, gsl_sf_result * r, gsl_sf_result * theta)`

GSL documentation:

### `int gsl_sf_rect_to_polar (double x, double y, gsl_sf_result * r, gsl_sf_result * theta)`

> This function converts the rectilinear coordinates (`x`, `y`) to polar
> coordinates (`r`, `theta`), such that $x = r\cos(\theta)$,
> $y = r\sin(\theta)$. The argument `theta` lies in the range
> $[-\pi, \pi]$.

"""
function sf_rect_to_polar(x, y, r, theta)
    ccall((:gsl_sf_rect_to_polar, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, r, theta)
end

@doc md"""
    sf_sin_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_sin_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_sin_err_e (double x, double dx, gsl_sf_result * result)`

> This routine computes the sine of an angle `x` with an associated
> absolute error `dx`, $\sin(x \pm dx)$. Note that this function is
> provided in the error-handling form only since its purpose is to
> compute the propagated error.

"""
function sf_sin_err_e(x, dx, result)
    ccall((:gsl_sf_sin_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

@doc md"""
    sf_cos_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_cos_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_cos_err_e (double x, double dx, gsl_sf_result * result)`

> This routine computes the cosine of an angle `x` with an associated
> absolute error `dx`, $\cos(x \pm dx)$. Note that this function is
> provided in the error-handling form only since

"""
function sf_cos_err_e(x, dx, result)
    ccall((:gsl_sf_cos_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

@doc md"""
    sf_angle_restrict_symm_e(theta) -> Cint

C signature:
`int gsl_sf_angle_restrict_symm_e(double * theta)`
"""
function sf_angle_restrict_symm_e(theta)
    ccall((:gsl_sf_angle_restrict_symm_e, libgsl), Cint, (Ptr{Cdouble},), theta)
end

@doc md"""
    sf_angle_restrict_symm(theta) -> Cdouble

C signature:
`double gsl_sf_angle_restrict_symm(const double theta)`

GSL documentation:

### `double gsl_sf_angle_restrict_symm (double theta)`

> int gsl\_sf\_angle\_restrict\_symm\_e (double \* theta)

> These routines force the angle `theta` to lie in the range
> $(-\pi,\pi]$.
>
> Note that the mathematical value of $\pi$ is slightly greater than
> `M_PI`, so the machine numbers `M_PI` and `-M_PI` are included in the
> range.

"""
function sf_angle_restrict_symm(theta)
    ccall((:gsl_sf_angle_restrict_symm, libgsl), Cdouble, (Cdouble,), theta)
end

@doc md"""
    sf_angle_restrict_pos_e(theta) -> Cint

C signature:
`int gsl_sf_angle_restrict_pos_e(double * theta)`
"""
function sf_angle_restrict_pos_e(theta)
    ccall((:gsl_sf_angle_restrict_pos_e, libgsl), Cint, (Ptr{Cdouble},), theta)
end

@doc md"""
    sf_angle_restrict_pos(theta) -> Cdouble

C signature:
`double gsl_sf_angle_restrict_pos(const double theta)`

GSL documentation:

### `double gsl_sf_angle_restrict_pos (double theta)`

> int gsl\_sf\_angle\_restrict\_pos\_e (double \* theta)

> These routines force the angle `theta` to lie in the range
> $[0, 2\pi)$.
>
> Note that the mathematical value of $2\pi$ is slightly greater than
> `2*M_PI`, so the machine number `2*M_PI` is included in the range.

"""
function sf_angle_restrict_pos(theta)
    ccall((:gsl_sf_angle_restrict_pos, libgsl), Cdouble, (Cdouble,), theta)
end

@doc md"""
    sf_angle_restrict_symm_err_e(theta, result) -> Cint

C signature:
`int gsl_sf_angle_restrict_symm_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_symm_err_e(theta, result)
    ccall((:gsl_sf_angle_restrict_symm_err_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), theta, result)
end

@doc md"""
    sf_angle_restrict_pos_err_e(theta, result) -> Cint

C signature:
`int gsl_sf_angle_restrict_pos_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_pos_err_e(theta, result)
    ccall((:gsl_sf_angle_restrict_pos_err_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), theta, result)
end

