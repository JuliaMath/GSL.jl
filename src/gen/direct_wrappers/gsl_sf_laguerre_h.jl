#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_laguerre.h ########################################################


@doc md"""
    sf_laguerre_1_e(a, x, result) -> Cint

C signature:
`int gsl_sf_laguerre_1_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_1_e(a, x, result)
    ccall((:gsl_sf_laguerre_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_laguerre_2_e(a, x, result) -> Cint

C signature:
`int gsl_sf_laguerre_2_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_2_e(a, x, result)
    ccall((:gsl_sf_laguerre_2_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_laguerre_3_e(a, x, result) -> Cint

C signature:
`int gsl_sf_laguerre_3_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_3_e(a, x, result)
    ccall((:gsl_sf_laguerre_3_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_laguerre_1(a, x) -> Cdouble

C signature:
`double gsl_sf_laguerre_1(double a, double x)`

GSL documentation:

### `double gsl_sf_laguerre_1 (double a, double x)`

> double gsl\_sf\_laguerre\_2 (double a, double x) double
> gsl\_sf\_laguerre\_3 (double a, double x) int gsl\_sf\_laguerre\_1\_e
> (double a, double x, gsl\_sf\_result \* result) int
> gsl\_sf\_laguerre\_2\_e (double a, double x, gsl\_sf\_result \*
> result) int gsl\_sf\_laguerre\_3\_e (double a, double x,
> gsl\_sf\_result \* result)

> These routines evaluate the generalized Laguerre polynomials
> $L^a_1(x)$, $L^a_2(x)$, $L^a_3(x)$ using explicit representations.

"""
function sf_laguerre_1(a, x)
    ccall((:gsl_sf_laguerre_1, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_laguerre_2(a, x) -> Cdouble

C signature:
`double gsl_sf_laguerre_2(double a, double x)`
"""
function sf_laguerre_2(a, x)
    ccall((:gsl_sf_laguerre_2, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_laguerre_3(a, x) -> Cdouble

C signature:
`double gsl_sf_laguerre_3(double a, double x)`
"""
function sf_laguerre_3(a, x)
    ccall((:gsl_sf_laguerre_3, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_laguerre_n_e(n, a, x, result) -> Cint

C signature:
`int gsl_sf_laguerre_n_e(const int n, const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_n_e(n, a, x, result)
    ccall((:gsl_sf_laguerre_n_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), n, a, x, result)
end

@doc md"""
    sf_laguerre_n(n, a, x) -> Cdouble

C signature:
`double gsl_sf_laguerre_n(int n, double a, double x)`

GSL documentation:

### `double gsl_sf_laguerre_n (const int n, const double a, const double x)`

> int gsl\_sf\_laguerre\_n\_e (int n, double a, double x,
> gsl\_sf\_result \* result)

> These routines evaluate the generalized Laguerre polynomials
> $L^a_n(x)$ for $a > -1$, $n \ge 0$.

"""
function sf_laguerre_n(n, a, x)
    ccall((:gsl_sf_laguerre_n, libgsl), Cdouble, (Cint, Cdouble, Cdouble), n, a, x)
end

