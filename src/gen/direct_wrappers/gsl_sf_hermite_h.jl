#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_hermite.h #########################################################


@doc md"""
    sf_hermite_prob_e(n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_prob_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_e(n, x, result)
    ccall((:gsl_sf_hermite_prob_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_hermite_prob(n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_prob(const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_prob (const int n, const double x)`

> int gsl\_sf\_hermite\_prob\_e (const int n, const double x,
> gsl\_sf\_result \* result)

> These routines evaluate the probabilists' Hermite polynomial $He_n(x)$
> of order `n` at position `x`.

"""
function sf_hermite_prob(n, x)
    ccall((:gsl_sf_hermite_prob, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_prob_der_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_prob_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_der_e(m, n, x, result)
    ccall((:gsl_sf_hermite_prob_der_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hermite_prob_der(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_prob_der(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_prob_der (const int m, const  int n, const double x)`

> int gsl\_sf\_hermite\_prob\_der\_e (const int m, const int n, const
> double x, gsl\_sf\_result \* result)

> These routines evaluate the `m`-th derivative of the probabilists'
> Hermite polynomial $He_n(x)$ of order `n` at position `x`.

"""
function sf_hermite_prob_der(m, n, x)
    ccall((:gsl_sf_hermite_prob_der, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hermite_phys_e(n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_phys_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_e(n, x, result)
    ccall((:gsl_sf_hermite_phys_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_hermite_phys(n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_phys(const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_phys (const int n, const double x)`

> int gsl\_sf\_hermite\_phys\_e (const int n, const double x,
> gsl\_sf\_result \* result)

> These routines evaluate the physicists' Hermite polynomial $H_n(x)$ of
> order `n` at position `x`.

"""
function sf_hermite_phys(n, x)
    ccall((:gsl_sf_hermite_phys, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_phys_der_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_phys_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_der_e(m, n, x, result)
    ccall((:gsl_sf_hermite_phys_der_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hermite_phys_der(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_phys_der(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_phys_der (const int m, const int n, const double x)`

> int gsl\_sf\_hermite\_phys\_der\_e (const int m, const int n, const
> double x, gsl\_sf\_result \* result)

> These routines evaluate the `m`-th derivative of the physicists'
> Hermite polynomial $H_n(x)$ of order `n` at position `x`.

"""
function sf_hermite_phys_der(m, n, x)
    ccall((:gsl_sf_hermite_phys_der, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hermite_func_e(n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_func_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_e(n, x, result)
    ccall((:gsl_sf_hermite_func_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_hermite_func(n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_func(const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_func (const int n, const double x)`

> int gsl\_sf\_hermite\_func\_e (const int n, const double x,
> gsl\_sf\_result \* result)

> These routines evaluate the Hermite function $\psi_n(x)$ of order `n`
> at position `x`.

"""
function sf_hermite_func(n, x)
    ccall((:gsl_sf_hermite_func, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_prob_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all probabilists' Hermite polynomials $He_n(x)$
> up to order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_prob_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_prob_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
end

@doc md"""
    sf_hermite_prob_array_der(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_array_der(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array_der (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all probabilists'
> Hermite polynomials $He_n(x)$ up to order `nmax` at position `x`. The
> results are stored in `result_array`.

"""
function sf_hermite_prob_array_der(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_prob_array_der, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_prob_der_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_der_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_der_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivatives (starting from 0) up to the
> `mmax`-th derivative of the probabilists' Hermite polynomial of order
> `n` $He_n(x)$ at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_prob_der_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_prob_der_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
end

@doc md"""
    sf_hermite_prob_series_e(n, x, a, result) -> Cint

C signature:
`int gsl_sf_hermite_prob_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_prob_series_e(n, x, a, result)
    ccall((:gsl_sf_hermite_prob_series_e, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result)
end

@doc md"""
    sf_hermite_prob_series(n, x, a) -> Cdouble

C signature:
`double gsl_sf_hermite_prob_series(const int n, const double x, const double * a)`

GSL documentation:

### `double gsl_sf_hermite_prob_series (const int n, const double x, const double * a)`

> int gsl\_sf\_hermite\_prob\_series\_e (const int n, const double x,
> const double \* a, gsl\_sf\_result \* result)

> These routines evaluate the series $\sum_{j=0}^n a_j He_j(x)$ with
> $He_j$ being the $j$-th probabilists' Hermite polynomial using the
> Clenshaw algorithm.

"""
function sf_hermite_prob_series(n, x, a)
    ccall((:gsl_sf_hermite_prob_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_phys_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_phys_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all physicists' Hermite polynomials $H_n$ up to
> order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_phys_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_phys_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
end

@doc md"""
    sf_hermite_phys_array_der(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_array_der(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_phys_array_der (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all physicists'
> Hermite polynomials $H_n$ up to order `nmax` at position `x`. The
> results are stored in `result_array`.

"""
function sf_hermite_phys_array_der(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_phys_array_der, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_phys_der_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_der_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_phys_der_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivatives (starting from 0) up to the
> `mmax`-th derivative of the physicists' Hermite polynomial of order
> `n` $H_n$ at position `x`. The results are stored in `result_array`.

"""
function sf_hermite_phys_der_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_phys_der_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
end

@doc md"""
    sf_hermite_phys_series_e(n, x, a, result) -> Cint

C signature:
`int gsl_sf_hermite_phys_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_phys_series_e(n, x, a, result)
    ccall((:gsl_sf_hermite_phys_series_e, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result)
end

@doc md"""
    sf_hermite_phys_series(n, x, a) -> Cdouble

C signature:
`double gsl_sf_hermite_phys_series(const int n, const double x, const double * a)`

GSL documentation:

### `double gsl_sf_hermite_phys_series (const int n, const double x, const double * a)`

> int gsl\_sf\_hermite\_phys\_series\_e (const int n, const double x,
> const double \* a, gsl\_sf\_result \* result)

> These routines evaluate the series $\sum_{j=0}^n a_j H_j(x)$ with
> $H_j$ being the $j$-th physicists' Hermite polynomial using the
> Clenshaw algorithm.

"""
function sf_hermite_phys_series(n, x, a)
    ccall((:gsl_sf_hermite_phys_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_func_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_func_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_func_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all Hermite functions $\psi_n(x)$ up to order
> `nmax` at position `x`. The results are stored in `result_array`.

"""
function sf_hermite_func_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_func_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
end

@doc md"""
    sf_hermite_func_series_e(n, x, a, result) -> Cint

C signature:
`int gsl_sf_hermite_func_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_func_series_e(n, x, a, result)
    ccall((:gsl_sf_hermite_func_series_e, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result)
end

@doc md"""
    sf_hermite_func_series(n, x, a) -> Cdouble

C signature:
`double gsl_sf_hermite_func_series(const int n, const double x, const double * a)`

GSL documentation:

### `double gsl_sf_hermite_func_series (const int n, const double x, const double * a)`

> int gsl\_sf\_hermite\_func\_series\_e (const int n, const double x,
> const double \* a, gsl\_sf\_result \* result)

> These routines evaluate the series $\sum_{j=0}^n a_j \psi_j(x)$ with
> $\psi_j$ being the $j$-th Hermite function using the Clenshaw
> algorithm.

"""
function sf_hermite_func_series(n, x, a)
    ccall((:gsl_sf_hermite_func_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_func_der_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_func_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_der_e(m, n, x, result)
    ccall((:gsl_sf_hermite_func_der_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hermite_func_der(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_func_der(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_func_der (const int m, const int n, const double x)`

> int gsl\_sf\_hermite\_func\_der\_e (const int m, const int n, const
> double x, gsl\_sf\_result \* result)

> These routines evaluate the `m`-th derivative of the Hermite function
> $\psi_n(x)$ of order `n` at position `x`.

"""
function sf_hermite_func_der(m, n, x)
    ccall((:gsl_sf_hermite_func_der, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hermite_prob_zero_e(n, s, result) -> Cint

C signature:
`int gsl_sf_hermite_prob_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_prob_zero_e(n, s, result)
    ccall((:gsl_sf_hermite_prob_zero_e, libgsl), Cint, (Cint, Cint, Ref{gsl_sf_result}), n, s, result)
end

@doc md"""
    sf_hermite_prob_zero(n, s) -> Cdouble

C signature:
`double gsl_sf_hermite_prob_zero(const int n, const int s)`

GSL documentation:

### `double gsl_sf_hermite_prob_zero (const int n, const int s)`

> int gsl\_sf\_hermite\_prob\_zero\_e (const int n, const int s,
> gsl\_sf\_result \* result)

> These routines evaluate the `s`-th zero of the probabilists' Hermite
> polynomial $He_n(x)$ of order `n`.

"""
function sf_hermite_prob_zero(n, s)
    ccall((:gsl_sf_hermite_prob_zero, libgsl), Cdouble, (Cint, Cint), n, s)
end

@doc md"""
    sf_hermite_phys_zero_e(n, s, result) -> Cint

C signature:
`int gsl_sf_hermite_phys_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_phys_zero_e(n, s, result)
    ccall((:gsl_sf_hermite_phys_zero_e, libgsl), Cint, (Cint, Cint, Ref{gsl_sf_result}), n, s, result)
end

@doc md"""
    sf_hermite_phys_zero(n, s) -> Cdouble

C signature:
`double gsl_sf_hermite_phys_zero(const int n, const int s)`

GSL documentation:

### `double gsl_sf_hermite_phys_zero (const int n, const int s)`

> int gsl\_sf\_hermite\_phys\_zero\_e (const int n, const int s,
> gsl\_sf\_result \* result)

> These routines evaluate the `s`-th zero of the physicists' Hermite
> polynomial $H_n(x)$ of order `n`.

"""
function sf_hermite_phys_zero(n, s)
    ccall((:gsl_sf_hermite_phys_zero, libgsl), Cdouble, (Cint, Cint), n, s)
end

@doc md"""
    sf_hermite_func_zero_e(n, s, result) -> Cint

C signature:
`int gsl_sf_hermite_func_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_func_zero_e(n, s, result)
    ccall((:gsl_sf_hermite_func_zero_e, libgsl), Cint, (Cint, Cint, Ref{gsl_sf_result}), n, s, result)
end

@doc md"""
    sf_hermite_func_zero(n, s) -> Cdouble

C signature:
`double gsl_sf_hermite_func_zero(const int n, const int s)`

GSL documentation:

### `double gsl_sf_hermite_func_zero (const int n, const int s)`

> int gsl\_sf\_hermite\_func\_zero\_e (const int n, const int s,
> gsl\_sf\_result \* result)

"""
function sf_hermite_func_zero(n, s)
    ccall((:gsl_sf_hermite_func_zero, libgsl), Cdouble, (Cint, Cint), n, s)
end

