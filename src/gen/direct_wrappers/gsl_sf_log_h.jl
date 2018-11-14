#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_log.h #############################################################


@doc md"""
    sf_log_e(x, result) -> Cint

C signature:
`int gsl_sf_log_e(const double x, gsl_sf_result * result)`
"""
function sf_log_e(x, result)
    ccall((:gsl_sf_log_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_log(x) -> Cdouble

C signature:
`double gsl_sf_log(const double x)`

GSL documentation:

### `double gsl_sf_log (double x)`

> int gsl\_sf\_log\_e (double x, gsl\_sf\_result \* result)

> These routines compute the logarithm of `x`, $\log(x)$, for $x > 0$.

"""
function sf_log(x)
    ccall((:gsl_sf_log, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_log_abs_e(x, result) -> Cint

C signature:
`int gsl_sf_log_abs_e(const double x, gsl_sf_result * result)`
"""
function sf_log_abs_e(x, result)
    ccall((:gsl_sf_log_abs_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_log_abs(x) -> Cdouble

C signature:
`double gsl_sf_log_abs(const double x)`

GSL documentation:

### `double gsl_sf_log_abs (double x)`

> int gsl\_sf\_log\_abs\_e (double x, gsl\_sf\_result \* result)

> These routines compute the logarithm of the magnitude of `x`,
> $\log(|x|)$, for $x \ne 0$.

"""
function sf_log_abs(x)
    ccall((:gsl_sf_log_abs, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_complex_log_e(zr, zi, lnr, theta) -> Cint

C signature:
`int gsl_sf_complex_log_e(const double zr, const double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`

GSL documentation:

### `int gsl_sf_complex_log_e (double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`

> This routine computes the complex logarithm of $z = z_r + i z_i$. The
> results are returned as `lnr`, `theta` such that
> $\exp(lnr + i \theta) = z_r + i z_i$, where $\theta$ lies in the range
> $[-\pi,\pi]$.

"""
function sf_complex_log_e(zr, zi, lnr, theta)
    ccall((:gsl_sf_complex_log_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lnr, theta)
end

@doc md"""
    sf_log_1plusx_e(x, result) -> Cint

C signature:
`int gsl_sf_log_1plusx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_e(x, result)
    ccall((:gsl_sf_log_1plusx_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_log_1plusx(x) -> Cdouble

C signature:
`double gsl_sf_log_1plusx(const double x)`

GSL documentation:

### `double gsl_sf_log_1plusx (double x)`

> int gsl\_sf\_log\_1plusx\_e (double x, gsl\_sf\_result \* result)

> These routines compute $\log(1 + x)$ for $x > -1$ using an algorithm
> that is accurate for small `x`.

"""
function sf_log_1plusx(x)
    ccall((:gsl_sf_log_1plusx, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_log_1plusx_mx_e(x, result) -> Cint

C signature:
`int gsl_sf_log_1plusx_mx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_mx_e(x, result)
    ccall((:gsl_sf_log_1plusx_mx_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_log_1plusx_mx(x) -> Cdouble

C signature:
`double gsl_sf_log_1plusx_mx(const double x)`

GSL documentation:

### `double gsl_sf_log_1plusx_mx (double x)`

> int gsl\_sf\_log\_1plusx\_mx\_e (double x, gsl\_sf\_result \* result)

> These routines compute $\log(1 + x) - x$ for $x > -1$ using an
> algorithm that is accurate for small `x`.

"""
function sf_log_1plusx_mx(x)
    ccall((:gsl_sf_log_1plusx_mx, libgsl), Cdouble, (Cdouble,), x)
end

