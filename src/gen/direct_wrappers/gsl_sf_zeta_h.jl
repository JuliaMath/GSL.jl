#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_zeta.h ############################################################


@doc md"""
    sf_zeta_int_e(n, result) -> Cint

C signature:
`int gsl_sf_zeta_int_e(const int n, gsl_sf_result * result)`
"""
function sf_zeta_int_e(n, result)
    ccall((:gsl_sf_zeta_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_zeta_int(n) -> Cdouble

C signature:
`double gsl_sf_zeta_int(const int n)`

GSL documentation:

### `double gsl_sf_zeta_int (int n)`

> int gsl\_sf\_zeta\_int\_e (int n, gsl\_sf\_result \* result)

> These routines compute the Riemann zeta function $\zeta(n)$ for
> integer `n`, $n \ne 1$.

"""
function sf_zeta_int(n)
    ccall((:gsl_sf_zeta_int, libgsl), Cdouble, (Cint,), n)
end

@doc md"""
    sf_zeta_e(s, result) -> Cint

C signature:
`int gsl_sf_zeta_e(const double s, gsl_sf_result * result)`
"""
function sf_zeta_e(s, result)
    ccall((:gsl_sf_zeta_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_zeta(s) -> Cdouble

C signature:
`double gsl_sf_zeta(const double s)`

GSL documentation:

### `double gsl_sf_zeta (double s)`

> int gsl\_sf\_zeta\_e (double s, gsl\_sf\_result \* result)

> These routines compute the Riemann zeta function $\zeta(s)$ for
> arbitrary `s`, $s \ne 1$.

"""
function sf_zeta(s)
    ccall((:gsl_sf_zeta, libgsl), Cdouble, (Cdouble,), s)
end

@doc md"""
    sf_zetam1_e(s, result) -> Cint

C signature:
`int gsl_sf_zetam1_e(const double s, gsl_sf_result * result)`
"""
function sf_zetam1_e(s, result)
    ccall((:gsl_sf_zetam1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_zetam1(s) -> Cdouble

C signature:
`double gsl_sf_zetam1(const double s)`

GSL documentation:

### `double gsl_sf_zetam1 (double s)`

> int gsl\_sf\_zetam1\_e (double s, gsl\_sf\_result \* result)

> These routines compute $\zeta(s) - 1$ for arbitrary `s`, $s \ne 1$.

"""
function sf_zetam1(s)
    ccall((:gsl_sf_zetam1, libgsl), Cdouble, (Cdouble,), s)
end

@doc md"""
    sf_zetam1_int_e(s, result) -> Cint

C signature:
`int gsl_sf_zetam1_int_e(const int s, gsl_sf_result * result)`
"""
function sf_zetam1_int_e(s, result)
    ccall((:gsl_sf_zetam1_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_zetam1_int(s) -> Cdouble

C signature:
`double gsl_sf_zetam1_int(const int s)`

GSL documentation:

### `double gsl_sf_zetam1_int (int n)`

> int gsl\_sf\_zetam1\_int\_e (int n, gsl\_sf\_result \* result)

> These routines compute $\zeta(n) - 1$ for integer `n`, $n \ne 1$.

"""
function sf_zetam1_int(s)
    ccall((:gsl_sf_zetam1_int, libgsl), Cdouble, (Cint,), s)
end

@doc md"""
    sf_hzeta_e(s, q, result) -> Cint

C signature:
`int gsl_sf_hzeta_e(const double s, const double q, gsl_sf_result * result)`
"""
function sf_hzeta_e(s, q, result)
    ccall((:gsl_sf_hzeta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), s, q, result)
end

@doc md"""
    sf_hzeta(s, q) -> Cdouble

C signature:
`double gsl_sf_hzeta(const double s, const double q)`

GSL documentation:

### `double gsl_sf_hzeta (double s, double q)`

> int gsl\_sf\_hzeta\_e (double s, double q, gsl\_sf\_result \* result)

> These routines compute the Hurwitz zeta function $\zeta(s,q)$ for
> $s > 1$, $q > 0$.

"""
function sf_hzeta(s, q)
    ccall((:gsl_sf_hzeta, libgsl), Cdouble, (Cdouble, Cdouble), s, q)
end

@doc md"""
    sf_eta_int_e(n, result) -> Cint

C signature:
`int gsl_sf_eta_int_e(int n, gsl_sf_result * result)`
"""
function sf_eta_int_e(n, result)
    ccall((:gsl_sf_eta_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_eta_int(n) -> Cdouble

C signature:
`double gsl_sf_eta_int(const int n)`

GSL documentation:

### `double gsl_sf_eta_int (int n)`

> int gsl\_sf\_eta\_int\_e (int n, gsl\_sf\_result \* result)

> These routines compute the eta function $\eta(n)$ for integer `n`.

"""
function sf_eta_int(n)
    ccall((:gsl_sf_eta_int, libgsl), Cdouble, (Cint,), n)
end

@doc md"""
    sf_eta_e(s, result) -> Cint

C signature:
`int gsl_sf_eta_e(const double s, gsl_sf_result * result)`
"""
function sf_eta_e(s, result)
    ccall((:gsl_sf_eta_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_eta(s) -> Cdouble

C signature:
`double gsl_sf_eta(const double s)`

GSL documentation:

### `double gsl_sf_eta (double s)`

> int gsl\_sf\_eta\_e (double s, gsl\_sf\_result \* result)

> These routines compute the eta function $\eta(s)$ for arbitrary `s`.

"""
function sf_eta(s)
    ccall((:gsl_sf_eta, libgsl), Cdouble, (Cdouble,), s)
end

