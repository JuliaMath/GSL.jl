#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_expint.h ##########################################################


@doc md"""
    sf_expint_E1_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_E1_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_e(x, result)
    ccall((:gsl_sf_expint_E1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_E1(x) -> Cdouble

C signature:
`double gsl_sf_expint_E1(const double x)`

GSL documentation:

### `double gsl_sf_expint_E1 (double x)`

> int gsl\_sf\_expint\_E1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the exponential integral $E_1(x)$,
>
> $$E_1(x) := \Re \int_1^\infty dt \exp(-xt)/t.$$

"""
function sf_expint_E1(x)
    ccall((:gsl_sf_expint_E1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_E2_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_E2_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_e(x, result)
    ccall((:gsl_sf_expint_E2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_E2(x) -> Cdouble

C signature:
`double gsl_sf_expint_E2(const double x)`

GSL documentation:

### `double gsl_sf_expint_E2 (double x)`

> int gsl\_sf\_expint\_E2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the second-order exponential integral $E_2(x)$,
>
> $$E_2(x) := \Re \int_1^\infty dt \exp(-xt)/t^2$$

"""
function sf_expint_E2(x)
    ccall((:gsl_sf_expint_E2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_En_e(n, x, result) -> Cint

C signature:
`int gsl_sf_expint_En_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_e(n, x, result)
    ccall((:gsl_sf_expint_En_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_expint_En(n, x) -> Cdouble

C signature:
`double gsl_sf_expint_En(const int n, const double x)`

GSL documentation:

### `double gsl_sf_expint_En (int n, double x)`

> int gsl\_sf\_expint\_En\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the exponential integral $E_n(x)$ of order `n`,
>
> $$E_n(x) := \Re \int_1^\infty dt \exp(-xt)/t^n.$$

"""
function sf_expint_En(n, x)
    ccall((:gsl_sf_expint_En, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_expint_E1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_E1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_scaled_e(x, result)
    ccall((:gsl_sf_expint_E1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_E1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_expint_E1_scaled(const double x)`
"""
function sf_expint_E1_scaled(x)
    ccall((:gsl_sf_expint_E1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_E2_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_E2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_scaled_e(x, result)
    ccall((:gsl_sf_expint_E2_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_E2_scaled(x) -> Cdouble

C signature:
`double gsl_sf_expint_E2_scaled(const double x)`
"""
function sf_expint_E2_scaled(x)
    ccall((:gsl_sf_expint_E2_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_En_scaled_e(n, x, result) -> Cint

C signature:
`int gsl_sf_expint_En_scaled_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_scaled_e(n, x, result)
    ccall((:gsl_sf_expint_En_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_expint_En_scaled(n, x) -> Cdouble

C signature:
`double gsl_sf_expint_En_scaled(const int n, const double x)`
"""
function sf_expint_En_scaled(n, x)
    ccall((:gsl_sf_expint_En_scaled, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_expint_Ei_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_Ei_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_e(x, result)
    ccall((:gsl_sf_expint_Ei_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_Ei(x) -> Cdouble

C signature:
`double gsl_sf_expint_Ei(const double x)`

GSL documentation:

### `double gsl_sf_expint_Ei (double x)`

> int gsl\_sf\_expint\_Ei\_e (double x, gsl\_sf\_result \* result)

> These routines compute the exponential integral $Ei(x)$,
>
> not texinfo
>
> $$\hbox{Ei}(x) = - PV \left( \int_{-x}^\infty dt \exp(-t)/t \right)$$
>
> texinfo
>
>     Ei(x) = - PV(\int_{-x}^\infty dt \exp(-t)/t)
>
> where $PV$ denotes the principal value of the integral.

"""
function sf_expint_Ei(x)
    ccall((:gsl_sf_expint_Ei, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_Ei_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_Ei_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_scaled_e(x, result)
    ccall((:gsl_sf_expint_Ei_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_Ei_scaled(x) -> Cdouble

C signature:
`double gsl_sf_expint_Ei_scaled(const double x)`
"""
function sf_expint_Ei_scaled(x)
    ccall((:gsl_sf_expint_Ei_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_Shi_e(x, result) -> Cint

C signature:
`int gsl_sf_Shi_e(const double x, gsl_sf_result * result)`
"""
function sf_Shi_e(x, result)
    ccall((:gsl_sf_Shi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_Shi(x) -> Cdouble

C signature:
`double gsl_sf_Shi(const double x)`

GSL documentation:

### `double gsl_sf_Shi (double x)`

> int gsl\_sf\_Shi\_e (double x, gsl\_sf\_result \* result)

> These routines compute the integral

"""
function sf_Shi(x)
    ccall((:gsl_sf_Shi, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_Chi_e(x, result) -> Cint

C signature:
`int gsl_sf_Chi_e(const double x, gsl_sf_result * result)`
"""
function sf_Chi_e(x, result)
    ccall((:gsl_sf_Chi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_Chi(x) -> Cdouble

C signature:
`double gsl_sf_Chi(const double x)`

GSL documentation:

### `double gsl_sf_Chi (double x)`

> int gsl\_sf\_Chi\_e (double x, gsl\_sf\_result \* result)

> These routines compute the integral

"""
function sf_Chi(x)
    ccall((:gsl_sf_Chi, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_expint_3_e(x, result) -> Cint

C signature:
`int gsl_sf_expint_3_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_3_e(x, result)
    ccall((:gsl_sf_expint_3_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_expint_3(x) -> Cdouble

C signature:
`double gsl_sf_expint_3(double x)`

GSL documentation:

### `double gsl_sf_expint_3 (double x)`

> int gsl\_sf\_expint\_3\_e (double x, gsl\_sf\_result \* result)

> These routines compute the third-order exponential integral

"""
function sf_expint_3(x)
    ccall((:gsl_sf_expint_3, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_Si_e(x, result) -> Cint

C signature:
`int gsl_sf_Si_e(const double x, gsl_sf_result * result)`
"""
function sf_Si_e(x, result)
    ccall((:gsl_sf_Si_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_Si(x) -> Cdouble

C signature:
`double gsl_sf_Si(const double x)`

GSL documentation:

### `double gsl_sf_Si (const double x)`

> int gsl\_sf\_Si\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Sine integral

"""
function sf_Si(x)
    ccall((:gsl_sf_Si, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_Ci_e(x, result) -> Cint

C signature:
`int gsl_sf_Ci_e(const double x, gsl_sf_result * result)`
"""
function sf_Ci_e(x, result)
    ccall((:gsl_sf_Ci_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_Ci(x) -> Cdouble

C signature:
`double gsl_sf_Ci(const double x)`

GSL documentation:

### `double gsl_sf_Ci (const double x)`

> int gsl\_sf\_Ci\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Cosine integral

"""
function sf_Ci(x)
    ccall((:gsl_sf_Ci, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_atanint_e(x, result) -> Cint

C signature:
`int gsl_sf_atanint_e(const double x, gsl_sf_result * result)`
"""
function sf_atanint_e(x, result)
    ccall((:gsl_sf_atanint_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_atanint(x) -> Cdouble

C signature:
`double gsl_sf_atanint(const double x)`

GSL documentation:

### `double gsl_sf_atanint (double x)`

> int gsl\_sf\_atanint\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Arctangent integral, which is defined as

"""
function sf_atanint(x)
    ccall((:gsl_sf_atanint, libgsl), Cdouble, (Cdouble,), x)
end

