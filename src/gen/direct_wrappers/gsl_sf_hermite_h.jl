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

> These routines evaluate the probabilist Hermite polynomial $He_n(x)$
> of order `n` at position `x`. If an overflow is detected,
> `GSL_EOVRFLW` is returned without calling the error handler.

"""
function sf_hermite_prob(n, x)
    ccall((:gsl_sf_hermite_prob, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_prob_deriv_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_prob_deriv_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_deriv_e(m, n, x, result)
    ccall((:gsl_sf_hermite_prob_deriv_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hermite_prob_deriv(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_prob_deriv(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_prob_deriv (const int m, const  int n, const double x)`

> int gsl\_sf\_hermite\_prob\_deriv\_e (const int m, const int n, const
> double x, gsl\_sf\_result \* result)

> These routines evaluate the `m`-th derivative of the probabilist
> Hermite polynomial $He_n(x)$ of order `n` at position `x`.

"""
function sf_hermite_prob_deriv(m, n, x)
    ccall((:gsl_sf_hermite_prob_deriv, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hermite_e(n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_e(n, x, result)
    ccall((:gsl_sf_hermite_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_hermite(n, x) -> Cdouble

C signature:
`double gsl_sf_hermite(const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite (const int n, const double x)`

> int gsl\_sf\_hermite\_e (const int n, const double x, gsl\_sf\_result
> \* result)

> These routines evaluate the physicist Hermite polynomial $H_n(x)$ of
> order `n` at position `x`. If an overflow is detected, `GSL_EOVRFLW`
> is returned without calling the error handler.

"""
function sf_hermite(n, x)
    ccall((:gsl_sf_hermite, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_deriv_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_deriv_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_deriv_e(m, n, x, result)
    ccall((:gsl_sf_hermite_deriv_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hermite_deriv(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_deriv(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_deriv (const int m, const int n, const double x)`

> int gsl\_sf\_hermite\_deriv\_e (const int m, const int n, const double
> x, gsl\_sf\_result \* result)

> These routines evaluate the `m`-th derivative of the physicist Hermite
> polynomial $H_n(x)$ of order `n` at position `x`.

"""
function sf_hermite_deriv(m, n, x)
    ccall((:gsl_sf_hermite_deriv, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
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
> at position `x` using a three term recurrence relation. The algorithm
> complexity is $O(n)$.

"""
function sf_hermite_func(n, x)
    ccall((:gsl_sf_hermite_func, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_func_fast_e(n, x, result) -> Cint

C signature:
`int gsl_sf_hermite_func_fast_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_fast_e(n, x, result)
    ccall((:gsl_sf_hermite_func_fast_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_hermite_func_fast(n, x) -> Cdouble

C signature:
`double gsl_sf_hermite_func_fast(const int n, const double x)`

GSL documentation:

### `double gsl_sf_hermite_func_fast (const int n, const double x)`

> int gsl\_sf\_hermite\_func\_fast\_e (const int n, const double x,
> gsl\_sf\_result \* result)

> These routines evaluate the Hermite function $\psi_n(x)$ of order `n`
> at position `x` using a the Cauchy integral algorithm due to Bunck,
> 2009. The algorithm complexity is $O(\sqrt{n})$.

"""
function sf_hermite_func_fast(n, x)
    ccall((:gsl_sf_hermite_func_fast, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_hermite_prob_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all probabilist Hermite polynomials $He_n(x)$
> up to order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_prob_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_prob_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
end

@doc md"""
    sf_hermite_prob_array_deriv(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_array_deriv(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array_deriv (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all probabilist
> Hermite polynomials $He_n(x)$ from orders $0, \dots, \text{nmax}$ at
> position `x`. The result $d^m/dx^m He_n(x)$ is stored in
> `result_array[n]`. The output `result_array` must have length at least
> `nmax + 1`.

"""
function sf_hermite_prob_array_deriv(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_prob_array_deriv, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_prob_deriv_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_deriv_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_deriv_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivative orders from
> $0, \dots, \text{mmax}$ of the probabilist Hermite polynomial of order
> `n`, $He_n$, at position `x`. The result $d^m/dx^m He_n(x)$ is stored
> in `result_array[m]`. The output `result_array` must have length at
> least `mmax + 1`.

"""
function sf_hermite_prob_deriv_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_prob_deriv_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
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
> $He_j$ being the $j$-th probabilist Hermite polynomial using the
> Clenshaw algorithm.

"""
function sf_hermite_prob_series(n, x, a)
    ccall((:gsl_sf_hermite_prob_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all physicist Hermite polynomials $H_n$ up to
> order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
end

@doc md"""
    sf_hermite_array_deriv(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_array_deriv(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_array_deriv (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all physicist Hermite
> polynomials $H_n(x)$ from orders $0, \dots, \text{nmax}$ at position
> `x`. The result $d^m/dx^m H_n(x)$ is stored in `result_array[n]`. The
> output `result_array` must have length at least `nmax + 1`.

"""
function sf_hermite_array_deriv(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_array_deriv, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_deriv_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_deriv_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_deriv_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivative orders from
> $0, \dots, \text{mmax}$ of the physicist Hermite polynomial of order
> `n`, $H_n$, at position `x`. The result $d^m/dx^m H_n(x)$ is stored in
> `result_array[m]`. The output `result_array` must have length at least
> `mmax + 1`.

"""
function sf_hermite_deriv_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_deriv_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
end

@doc md"""
    sf_hermite_series_e(n, x, a, result) -> Cint

C signature:
`int gsl_sf_hermite_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_series_e(n, x, a, result)
    ccall((:gsl_sf_hermite_series_e, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{gsl_sf_result}), n, x, a, result)
end

@doc md"""
    sf_hermite_series(n, x, a) -> Cdouble

C signature:
`double gsl_sf_hermite_series(const int n, const double x, const double * a)`

GSL documentation:

### `double gsl_sf_hermite_series (const int n, const double x, const double * a)`

> int gsl\_sf\_hermite\_series\_e (const int n, const double x, const
> double \* a, gsl\_sf\_result \* result)

> These routines evaluate the series $\sum_{j=0}^n a_j H_j(x)$ with
> $H_j$ being the $j$-th physicist Hermite polynomial using the Clenshaw
> algorithm.

"""
function sf_hermite_series(n, x, a)
    ccall((:gsl_sf_hermite_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_func_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_func_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_func_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all Hermite functions $\psi_n(x)$ for orders
> $n = 0, \dots, \textrm{nmax}$ at position `x`, using the recurrence
> relation algorithm. The results are stored in `result_array` which has
> length at least `nmax + 1`.

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

> These routines evaluate the `s`-th zero of the probabilist Hermite
> polynomial $He_n(x)$ of order `n`.

"""
function sf_hermite_prob_zero(n, s)
    ccall((:gsl_sf_hermite_prob_zero, libgsl), Cdouble, (Cint, Cint), n, s)
end

@doc md"""
    sf_hermite_zero_e(n, s, result) -> Cint

C signature:
`int gsl_sf_hermite_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_zero_e(n, s, result)
    ccall((:gsl_sf_hermite_zero_e, libgsl), Cint, (Cint, Cint, Ref{gsl_sf_result}), n, s, result)
end

@doc md"""
    sf_hermite_zero(n, s) -> Cdouble

C signature:
`double gsl_sf_hermite_zero(const int n, const int s)`

GSL documentation:

### `double gsl_sf_hermite_zero (const int n, const int s)`

> int gsl\_sf\_hermite\_zero\_e (const int n, const int s,
> gsl\_sf\_result \* result)

> These routines evaluate the `s`-th zero of the physicist Hermite
> polynomial $H_n(x)$ of order `n`.

"""
function sf_hermite_zero(n, s)
    ccall((:gsl_sf_hermite_zero, libgsl), Cdouble, (Cint, Cint), n, s)
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
"""
function sf_hermite_phys_der(m, n, x)
    ccall((:gsl_sf_hermite_phys_der, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hermite_phys_array(nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_array(const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array(nmax, x, result_array)
    ccall((:gsl_sf_hermite_phys_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), nmax, x, result_array)
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
"""
function sf_hermite_phys_series(n, x, a)
    ccall((:gsl_sf_hermite_phys_series, libgsl), Cdouble, (Cint, Cdouble, Ref{Cdouble}), n, x, a)
end

@doc md"""
    sf_hermite_phys_array_der(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array_der(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_phys_array_der, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_phys_der_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_phys_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_phys_der_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_phys_der_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
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
"""
function sf_hermite_phys_zero(n, s)
    ccall((:gsl_sf_hermite_phys_zero, libgsl), Cdouble, (Cint, Cint), n, s)
end

@doc md"""
    sf_hermite_prob_array_der(m, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_prob_array_der(m, nmax, x, result_array)
    ccall((:gsl_sf_hermite_prob_array_der, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), m, nmax, x, result_array)
end

@doc md"""
    sf_hermite_prob_der_array(mmax, n, x, result_array) -> Cint

C signature:
`int gsl_sf_hermite_prob_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_prob_der_array(mmax, n, x, result_array)
    ccall((:gsl_sf_hermite_prob_der_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), mmax, n, x, result_array)
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
"""
function sf_hermite_prob_der(m, n, x)
    ccall((:gsl_sf_hermite_prob_der, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

