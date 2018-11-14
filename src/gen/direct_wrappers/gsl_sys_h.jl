#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sys.h ################################################################


@doc md"""
    hypot3(x, y, z) -> Cdouble

C signature:
`double gsl_hypot3 (const double x, const double y, const double z)`

GSL documentation:

### `double gsl_hypot3 (const double x, const double y, const double z)`

> This function computes the value of $\sqrt{x^2 + y^2 + z^2}$ in a way
> that avoids overflow.

"""
function hypot3(x, y, z)
    ccall((:gsl_hypot3, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, y, z)
end

@doc md"""
    finite(x) -> Cint

C signature:
`int gsl_finite (const double x)`

GSL documentation:

### `int gsl_finite (const double x)`

> This function returns 1 if `x` is a real number, and 0 if it is
> infinite or not-a-number.

"""
function finite(x)
    ccall((:gsl_finite, libgsl), Cint, (Cdouble,), x)
end

@doc md"""
    nan() -> Cdouble

C signature:
`double gsl_nan (void)`
"""
function nan()
    ccall((:gsl_nan, libgsl), Cdouble, (), )
end

@doc md"""
    posinf() -> Cdouble

C signature:
`double gsl_posinf (void)`
"""
function posinf()
    ccall((:gsl_posinf, libgsl), Cdouble, (), )
end

@doc md"""
    neginf() -> Cdouble

C signature:
`double gsl_neginf (void)`
"""
function neginf()
    ccall((:gsl_neginf, libgsl), Cdouble, (), )
end

@doc md"""
    fdiv(x, y) -> Cdouble

C signature:
`double gsl_fdiv (const double x, const double y)`
"""
function fdiv(x, y)
    ccall((:gsl_fdiv, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    coerce_double(x) -> Cdouble

C signature:
`double gsl_coerce_double (const double x)`
"""
function coerce_double(x)
    ccall((:gsl_coerce_double, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    coerce_float(x) -> Cfloat

C signature:
`float gsl_coerce_float (const float x)`
"""
function coerce_float(x)
    ccall((:gsl_coerce_float, libgsl), Cfloat, (Cfloat,), x)
end

@doc md"""
    coerce_long_double(x) -> Cdouble

C signature:
`long double gsl_coerce_long_double (const long double x)`
"""
function coerce_long_double(x)
    ccall((:gsl_coerce_long_double, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    fcmp(x1, x2, epsilon) -> Cint

C signature:
`int gsl_fcmp (const double x1, const double x2, const double epsilon)`

GSL documentation:

### `int gsl_fcmp (double x, double y, double epsilon)`

> This function determines whether `x` and `y` are approximately equal
> to a relative accuracy `epsilon`.
>
> The relative accuracy is measured using an interval of size $2
> \delta$, where $\delta = 2^k \epsilon$ and $k$ is the maximum base-2
> exponent of $x$ and $y$ as computed by the function `frexp`.
>
> If $x$ and $y$ lie within this interval, they are considered
> approximately equal and the function returns 0. Otherwise if $x <
> y$, the function returns $-1$, or if $x > y$, the function returns
> $+1$.
>
> Note that $x$ and $y$ are compared to relative accuracy, so this
> function is not suitable for testing whether a value is approximately
> zero.
>
> The implementation is based on the package `fcmp` by T.C. Belding.

"""
function fcmp(x1, x2, epsilon)
    ccall((:gsl_fcmp, libgsl), Cint, (Cdouble, Cdouble, Cdouble), x1, x2, epsilon)
end

