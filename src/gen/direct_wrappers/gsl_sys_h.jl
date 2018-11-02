#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sys.h ################################################################


@doc md"""
    gsl_log1p(x) -> Cdouble

C signature:
`double gsl_log1p (const double x)`

GSL documentation:

### `double gsl_log1p (const double x)`

> This function computes the value of $\log(1+x)$ in a way that is
> accurate for small x. It provides an alternative to the BSD math
> function `log1p(x)`{.sourceCode}.

"""
function gsl_log1p(x)
    ccall((:gsl_log1p, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_expm1(x) -> Cdouble

C signature:
`double gsl_expm1 (const double x)`

GSL documentation:

### `double gsl_expm1 (const double x)`

> This function computes the value of $\exp(x)-1$ in a way that is
> accurate for small x. It provides an alternative to the BSD math
> function `expm1(x)`{.sourceCode}.

"""
function gsl_expm1(x)
    ccall((:gsl_expm1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_hypot(x, y) -> Cdouble

C signature:
`double gsl_hypot (const double x, const double y)`

GSL documentation:

### `double gsl_hypot (const double x, const double y)`

> This function computes the value of $\sqrt{x^2 + y^2}$ in a way that
> avoids overflow. It provides an alternative to the BSD math function
> `hypot(x,y)`{.sourceCode}.

"""
function gsl_hypot(x, y)
    ccall((:gsl_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    gsl_hypot3(x, y, z) -> Cdouble

C signature:
`double gsl_hypot3 (const double x, const double y, const double z)`

GSL documentation:

### `double gsl_hypot3 (const double x, const double y, const double z)`

> This function computes the value of $\sqrt{x^2 + y^2 + z^2}$ in a way
> that avoids overflow.

"""
function gsl_hypot3(x, y, z)
    ccall((:gsl_hypot3, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, y, z)
end

@doc md"""
    gsl_acosh(x) -> Cdouble

C signature:
`double gsl_acosh (const double x)`

GSL documentation:

### `double gsl_acosh (const double x)`

> This function computes the value of $\arccosh{(x)}$. It provides an
> alternative to the standard math function `acosh(x)`{.sourceCode}.

"""
function gsl_acosh(x)
    ccall((:gsl_acosh, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_asinh(x) -> Cdouble

C signature:
`double gsl_asinh (const double x)`

GSL documentation:

### `double gsl_asinh (const double x)`

> This function computes the value of $\arcsinh{(x)}$. It provides an
> alternative to the standard math function `asinh(x)`{.sourceCode}.

"""
function gsl_asinh(x)
    ccall((:gsl_asinh, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_atanh(x) -> Cdouble

C signature:
`double gsl_atanh (const double x)`

GSL documentation:

### `double gsl_atanh (const double x)`

> This function computes the value of $\arctanh{(x)}$. It provides an
> alternative to the standard math function `atanh(x)`{.sourceCode}.

"""
function gsl_atanh(x)
    ccall((:gsl_atanh, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_isnan(x) -> Cint

C signature:
`int gsl_isnan (const double x)`

GSL documentation:

### `int gsl_isnan (const double x)`

> This function returns 1 if x is not-a-number.

"""
function gsl_isnan(x)
    ccall((:gsl_isnan, libgsl), Cint, (Cdouble,), x)
end

@doc md"""
    gsl_isinf(x) -> Cint

C signature:
`int gsl_isinf (const double x)`

GSL documentation:

### `int gsl_isinf (const double x)`

> This function returns $+1$ if x is positive infinity, $-1$ if x is
> negative infinity and 0 otherwise. \[\#f1\]\_

"""
function gsl_isinf(x)
    ccall((:gsl_isinf, libgsl), Cint, (Cdouble,), x)
end

@doc md"""
    gsl_finite(x) -> Cint

C signature:
`int gsl_finite (const double x)`

GSL documentation:

### `int gsl_finite (const double x)`

> This function returns 1 if x is a real number, and 0 if it is infinite
> or not-a-number.

"""
function gsl_finite(x)
    ccall((:gsl_finite, libgsl), Cint, (Cdouble,), x)
end

@doc md"""
    gsl_nan() -> Cdouble

C signature:
`double gsl_nan (void)`
"""
function gsl_nan()
    ccall((:gsl_nan, libgsl), Cdouble, (), )
end

@doc md"""
    gsl_posinf() -> Cdouble

C signature:
`double gsl_posinf (void)`
"""
function gsl_posinf()
    ccall((:gsl_posinf, libgsl), Cdouble, (), )
end

@doc md"""
    gsl_neginf() -> Cdouble

C signature:
`double gsl_neginf (void)`
"""
function gsl_neginf()
    ccall((:gsl_neginf, libgsl), Cdouble, (), )
end

@doc md"""
    gsl_fdiv(x, y) -> Cdouble

C signature:
`double gsl_fdiv (const double x, const double y)`
"""
function gsl_fdiv(x, y)
    ccall((:gsl_fdiv, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    gsl_coerce_double(x) -> Cdouble

C signature:
`double gsl_coerce_double (const double x)`
"""
function gsl_coerce_double(x)
    ccall((:gsl_coerce_double, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_coerce_float(x) -> Cfloat

C signature:
`float gsl_coerce_float (const float x)`
"""
function gsl_coerce_float(x)
    ccall((:gsl_coerce_float, libgsl), Cfloat, (Cfloat,), x)
end

@doc md"""
    gsl_coerce_long_double(x) -> Cdouble

C signature:
`long double gsl_coerce_long_double (const long double x)`
"""
function gsl_coerce_long_double(x)
    ccall((:gsl_coerce_long_double, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_ldexp(x, e) -> Cdouble

C signature:
`double gsl_ldexp(const double x, const int e)`

GSL documentation:

### `double gsl_ldexp (double x, int e)`

> This function computes the value of $x * 2^e$. It provides an
> alternative to the standard math function `ldexp(x,e)`{.sourceCode}.

"""
function gsl_ldexp(x, e)
    ccall((:gsl_ldexp, libgsl), Cdouble, (Cdouble, Cint), x, e)
end

@doc md"""
    gsl_frexp(x, e) -> Cdouble

C signature:
`double gsl_frexp(const double x, int * e)`

GSL documentation:

### `double gsl_frexp (double x, int * e)`

> This function splits the number x into its normalized fraction $f$ and
> exponent $e$, such that $x = f * 2^e$ and $0.5 <= f < 1$. The function
> returns $f$ and stores the exponent in $e$. If $x$ is zero, both $f$
> and $e$ are set to zero. This function provides an alternative to the
> standard math function `frexp(x, e)`{.sourceCode}.

"""
function gsl_frexp(x, e)
    ccall((:gsl_frexp, libgsl), Cdouble, (Cdouble, Ref{Cint}), x, e)
end

@doc md"""
    gsl_fcmp(x1, x2, epsilon) -> Cint

C signature:
`int gsl_fcmp (const double x1, const double x2, const double epsilon)`

GSL documentation:

### `int gsl_fcmp (double x, double y, double epsilon)`

> This function determines whether x and y are approximately equal to a
> relative accuracy epsilon.
>
> The relative accuracy is measured using an interval of size $2
> \delta$, where $\delta = 2^k \epsilon$ and $k$ is the maximum base-2
> exponent of $x$ and $y$ as computed by the function frexp.
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
> The implementation is based on the package `fcmp`{.sourceCode} by T.C.
> Belding.

"""
function gsl_fcmp(x1, x2, epsilon)
    ccall((:gsl_fcmp, libgsl), Cint, (Cdouble, Cdouble, Cdouble), x1, x2, epsilon)
end

