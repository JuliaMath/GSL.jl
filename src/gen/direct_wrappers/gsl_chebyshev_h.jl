#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_chebyshev.h ##########################################################


@doc md"""
    cheb_alloc(order) -> Ptr{gsl_cheb_series}

C signature:
`gsl_cheb_series * gsl_cheb_alloc(const size_t order)`

GSL documentation:

### `gsl_cheb_series * gsl_cheb_alloc (const size_t n)`

> This function allocates space for a Chebyshev series of order `n` and
> returns a pointer to a new `gsl_cheb_series` struct.

"""
function cheb_alloc(order)
    ccall((:gsl_cheb_alloc, libgsl), Ptr{gsl_cheb_series}, (Csize_t,), order)
end

@doc md"""
    cheb_free(cs) -> Cvoid

C signature:
`void gsl_cheb_free(gsl_cheb_series * cs)`

GSL documentation:

### `void gsl_cheb_free (gsl_cheb_series * cs)`

> This function frees a previously allocated Chebyshev series `cs`.

"""
function cheb_free(cs)
    ccall((:gsl_cheb_free, libgsl), Cvoid, (Ptr{gsl_cheb_series},), cs)
end

@doc md"""
    cheb_init(cs, func, a, b) -> Cint

C signature:
`int gsl_cheb_init(gsl_cheb_series * cs, const gsl_function * func, const double a, const double b)`

GSL documentation:

### `int gsl_cheb_init (gsl_cheb_series * cs, const gsl_function * f, const double a, const double b)`

> This function computes the Chebyshev approximation `cs` for the
> function `f` over the range $(a,b)$ to the previously specified order.
> The computation of the Chebyshev approximation is an $O(n^2)$ process,
> and requires $n$ function evaluations.

"""
function cheb_init(cs, func, a, b)
    ccall((:gsl_cheb_init, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_function}, Cdouble, Cdouble), cs, func, a, b)
end

@doc md"""
    cheb_order(cs) -> Csize_t

C signature:
`size_t gsl_cheb_order (const gsl_cheb_series * cs)`

GSL documentation:

### `size_t gsl_cheb_order (const gsl_cheb_series * cs)`

> This function returns the order of Chebyshev series `cs`.

"""
function cheb_order(cs)
    ccall((:gsl_cheb_order, libgsl), Csize_t, (Ptr{gsl_cheb_series},), cs)
end

@doc md"""
    cheb_size(cs) -> Csize_t

C signature:
`size_t gsl_cheb_size (const gsl_cheb_series * cs)`

GSL documentation:

### `size_t gsl_cheb_size (const gsl_cheb_series * cs)`

> double \* gsl\_cheb\_coeffs (const gsl\_cheb\_series \* cs)

> These functions return the size of the Chebyshev coefficient array
> `c[]` and a pointer to its location in memory for the Chebyshev series
> `cs`.

"""
function cheb_size(cs)
    ccall((:gsl_cheb_size, libgsl), Csize_t, (Ptr{gsl_cheb_series},), cs)
end

@doc md"""
    cheb_coeffs(cs) -> Ptr{Cdouble}

C signature:
`double *gsl_cheb_coeffs (const gsl_cheb_series * cs)`
"""
function cheb_coeffs(cs)
    ccall((:gsl_cheb_coeffs, libgsl), Ptr{Cdouble}, (Ptr{gsl_cheb_series},), cs)
end

@doc md"""
    cheb_eval(cs, x) -> Cdouble

C signature:
`double gsl_cheb_eval(const gsl_cheb_series * cs, const double x)`

GSL documentation:

### `double gsl_cheb_eval (const gsl_cheb_series * cs, double x)`

> This function evaluates the Chebyshev series `cs` at a given point
> `x`.

"""
function cheb_eval(cs, x)
    ccall((:gsl_cheb_eval, libgsl), Cdouble, (Ref{gsl_cheb_series}, Cdouble), cs, x)
end

@doc md"""
    cheb_eval_err(cs, x, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_err(const gsl_cheb_series * cs, const double x, double * result, double * abserr)`

GSL documentation:

### `int gsl_cheb_eval_err (const gsl_cheb_series * cs, const double x, double * result, double * abserr)`

> This function computes the Chebyshev series `cs` at a given point `x`,
> estimating both the series `result` and its absolute error `abserr`.
> The error estimate is made from the first neglected term in the
> series.

"""
function cheb_eval_err(cs, x, result, abserr)
    ccall((:gsl_cheb_eval_err, libgsl), Cint, (Ref{gsl_cheb_series}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), cs, x, result, abserr)
end

@doc md"""
    cheb_eval_n(cs, order, x) -> Cdouble

C signature:
`double gsl_cheb_eval_n(const gsl_cheb_series * cs, const size_t order, const double x)`

GSL documentation:

### `double gsl_cheb_eval_n (const gsl_cheb_series * cs, size_t order, double x)`

> This function evaluates the Chebyshev series `cs` at a given point
> `x`, to (at most) the given order `order`.

"""
function cheb_eval_n(cs, order, x)
    ccall((:gsl_cheb_eval_n, libgsl), Cdouble, (Ref{gsl_cheb_series}, Csize_t, Cdouble), cs, order, x)
end

@doc md"""
    cheb_eval_n_err(cs, order, x, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_n_err(const gsl_cheb_series * cs, const size_t order, const double x, double * result, double * abserr)`

GSL documentation:

### `int gsl_cheb_eval_n_err (const gsl_cheb_series * cs, const size_t order, const double x, double * result, double * abserr)`

> This function evaluates a Chebyshev series `cs` at a given point `x`,
> estimating both the series `result` and its absolute error `abserr`,
> to (at most) the given order `order`. The error estimate is made from
> the first neglected term in the series.

"""
function cheb_eval_n_err(cs, order, x, result, abserr)
    ccall((:gsl_cheb_eval_n_err, libgsl), Cint, (Ref{gsl_cheb_series}, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), cs, order, x, result, abserr)
end

@doc md"""
    cheb_eval_mode(cs, x, mode) -> Cdouble

C signature:
`double gsl_cheb_eval_mode(const gsl_cheb_series * cs, const double x, gsl_mode_t mode)`
"""
function cheb_eval_mode(cs, x, mode)
    ccall((:gsl_cheb_eval_mode, libgsl), Cdouble, (Ref{gsl_cheb_series}, Cdouble, gsl_mode_t), cs, x, mode)
end

@doc md"""
    cheb_eval_mode_e(cs, x, mode, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_mode_e(const gsl_cheb_series * cs, const double x, gsl_mode_t mode, double * result, double * abserr)`
"""
function cheb_eval_mode_e(cs, x, mode, result, abserr)
    ccall((:gsl_cheb_eval_mode_e, libgsl), Cint, (Ref{gsl_cheb_series}, Cdouble, gsl_mode_t, Ref{Cdouble}, Ref{Cdouble}), cs, x, mode, result, abserr)
end

@doc md"""
    cheb_calc_deriv(deriv, cs) -> Cint

C signature:
`int gsl_cheb_calc_deriv(gsl_cheb_series * deriv, const gsl_cheb_series * cs)`

GSL documentation:

### `int gsl_cheb_calc_deriv (gsl_cheb_series * deriv, const gsl_cheb_series * cs)`

> This function computes the derivative of the series `cs`, storing the
> derivative coefficients in the previously allocated `deriv`. The two
> series `cs` and `deriv` must have been allocated with the same order.

"""
function cheb_calc_deriv(deriv, cs)
    ccall((:gsl_cheb_calc_deriv, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_cheb_series}), deriv, cs)
end

@doc md"""
    cheb_calc_integ(integ, cs) -> Cint

C signature:
`int gsl_cheb_calc_integ(gsl_cheb_series * integ, const gsl_cheb_series * cs)`

GSL documentation:

### `int gsl_cheb_calc_integ (gsl_cheb_series * integ, const gsl_cheb_series * cs)`

> This function computes the integral of the series `cs`, storing the
> integral coefficients in the previously allocated `integ`. The two
> series `cs` and `integ` must have been allocated with the same order.
> The lower limit of the integration is taken to be the left hand end of
> the range `a`.

"""
function cheb_calc_integ(integ, cs)
    ccall((:gsl_cheb_calc_integ, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_cheb_series}), integ, cs)
end

