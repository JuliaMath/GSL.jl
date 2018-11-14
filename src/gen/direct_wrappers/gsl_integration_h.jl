#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_integration.h ########################################################


@doc md"""
    integration_workspace_alloc(n) -> Ptr{gsl_integration_workspace}

C signature:
`gsl_integration_workspace * gsl_integration_workspace_alloc (const size_t n)`

GSL documentation:

### `gsl_integration_workspace * gsl_integration_workspace_alloc (size_t n)`

> This function allocates a workspace sufficient to hold `n` double
> precision intervals, their integration results and error estimates.
> One workspace may be used multiple times as all necessary
> reinitialization is performed automatically by the integration
> routines.

"""
function integration_workspace_alloc(n)
    ccall((:gsl_integration_workspace_alloc, libgsl), Ptr{gsl_integration_workspace}, (Csize_t,), n)
end

@doc md"""
    integration_workspace_free(w) -> Cvoid

C signature:
`void gsl_integration_workspace_free (gsl_integration_workspace * w)`

GSL documentation:

### `void gsl_integration_workspace_free (gsl_integration_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function integration_workspace_free(w)
    ccall((:gsl_integration_workspace_free, libgsl), Cvoid, (Ptr{gsl_integration_workspace},), w)
end

@doc md"""
    integration_qaws_table_alloc(alpha, beta, mu, nu) -> Ptr{gsl_integration_qaws_table}

C signature:
`gsl_integration_qaws_table * gsl_integration_qaws_table_alloc (double alpha, double beta, int mu, int nu)`

GSL documentation:

### `gsl_integration_qaws_table * gsl_integration_qaws_table_alloc (double alpha, double beta, int mu, int nu)`

> This function allocates space for a `gsl_integration_qaws_table`
> struct describing a singular weight function $w(x)$ with the
> parameters $(\alpha, \beta, \mu, \nu)$,
>
> $$w(x) = (x - a)^\alpha (b - x)^\beta \log^\mu (x - a) \log^\nu (b - x)$$
>
> where $\alpha > -1$, $\beta > -1$, and $\mu = 0, 1$, $\nu = 0, 1$. The
> weight function can take four different forms depending on the values
> of $\mu$ and $\nu$,
>
> <table>
> <thead>
> <tr class="header">
> <th>Weight function <span class="math inline"><em>w</em>(<em>x</em>)</span></th>
> <th><span class="math inline">(<em>μ</em>, <em>ν</em>)</span></th>
> </tr>
> </thead>
> <tbody>
> <tr class="odd">
> <td><span class="math inline">(<em>x</em> − <em>a</em>)<sup><em>α</em></sup>(<em>b</em> − <em>x</em>)<sup><em>β</em></sup></span></td>
> <td><span class="math inline">(0, 0)</span></td>
> </tr>
> <tr class="even">
> <td><span class="math inline">(<em>x</em> − <em>a</em>)<sup><em>α</em></sup>(<em>b</em> − <em>x</em>)<sup><em>β</em></sup>log (<em>x</em> − <em>a</em>)</span></td>
> <td><span class="math inline">(1, 0)</span></td>
> </tr>
> <tr class="odd">
> <td><span class="math inline">(<em>x</em> − <em>a</em>)<sup><em>α</em></sup>(<em>b</em> − <em>x</em>)<sup><em>β</em></sup>log (<em>b</em> − <em>x</em>)</span></td>
> <td><span class="math inline">(0, 1)</span></td>
> </tr>
> <tr class="even">
> <td><span class="math inline">(<em>x</em> − <em>a</em>)<sup><em>α</em></sup>(<em>b</em> − <em>x</em>)<sup><em>β</em></sup>log (<em>x</em> − <em>a</em>)log (<em>b</em> − <em>x</em>)</span></td>
> <td><span class="math inline">(1, 1)</span></td>
> </tr>
> </tbody>
> </table>
>
> The singular points $(a,b)$ do not have to be specified until the
> integral is computed, where they are the endpoints of the integration
> range.
>
> The function returns a pointer to the newly allocated table
> `gsl_integration_qaws_table` if no errors were detected, and 0 in the
> case of error.

"""
function integration_qaws_table_alloc(alpha, beta, mu, nu)
    ccall((:gsl_integration_qaws_table_alloc, libgsl), Ptr{gsl_integration_qaws_table}, (Cdouble, Cdouble, Cint, Cint), alpha, beta, mu, nu)
end

@doc md"""
    integration_qaws_table_set(t, alpha, beta, mu, nu) -> Cint

C signature:
`int gsl_integration_qaws_table_set (gsl_integration_qaws_table * t, double alpha, double beta, int mu, int nu)`

GSL documentation:

### `int gsl_integration_qaws_table_set (gsl_integration_qaws_table * t, double alpha, double beta, int mu, int nu)`

> This function modifies the parameters $(\alpha, \beta, \mu, \nu)$ of
> an existing `gsl_integration_qaws_table` struct `t`.

"""
function integration_qaws_table_set(t, alpha, beta, mu, nu)
    ccall((:gsl_integration_qaws_table_set, libgsl), Cint, (Ref{gsl_integration_qaws_table}, Cdouble, Cdouble, Cint, Cint), t, alpha, beta, mu, nu)
end

@doc md"""
    integration_qaws_table_free(t) -> Cvoid

C signature:
`void gsl_integration_qaws_table_free (gsl_integration_qaws_table * t)`

GSL documentation:

### `void gsl_integration_qaws_table_free (gsl_integration_qaws_table * t)`

> This function frees all the memory associated with the
> `gsl_integration_qaws_table` struct `t`.

"""
function integration_qaws_table_free(t)
    ccall((:gsl_integration_qaws_table_free, libgsl), Cvoid, (Ptr{gsl_integration_qaws_table},), t)
end

@doc md"""
    integration_qawo_table_alloc(omega, L, sine, n) -> Ptr{gsl_integration_qawo_table}

C signature:
`gsl_integration_qawo_table * gsl_integration_qawo_table_alloc (double omega, double L, enum gsl_integration_qawo_enum sine, size_t n)`

GSL documentation:

### `gsl_integration_qawo_table * gsl_integration_qawo_table_alloc (double omega, double L, enum gsl_integration_qawo_enum sine, size_t n)`

> This function allocates space for a `gsl_integration_qawo_table`
> struct and its associated workspace describing a sine or cosine weight
> function $w(x)$ with the parameters $(\omega, L)$,
>
> not texinfo
>
> $$\begin{aligned}
> w(x) =
> \left\{
> \begin{array}{c}
> \sin{(\omega x)} \\
> \cos{(\omega x)} \\
> \end{array}
> \right\}
> \end{aligned}$$
>
> texinfo
>
> w(x) = sin(omega x)  
> w(x) = cos(omega x)
>
> The parameter `L` must be the length of the interval over which the
> function will be integrated $L = b - a$. The choice of sine or cosine
> is made with the parameter `sine` which should be chosen from one of
> the two following symbolic values:
>
> GSL\_INTEG\_COSINE
>
> GSL\_INTEG\_SINE
>
> The `gsl_integration_qawo_table` is a table of the trigonometric
> coefficients required in the integration process. The parameter `n`
> determines the number of levels of coefficients that are computed.
> Each level corresponds to one bisection of the interval $L$, so that
> `n` levels are sufficient for subintervals down to the length $L/2^n$.
> The integration routine `gsl_integration_qawo` returns the error
> `GSL_ETABLE` if the number of levels is insufficient for the requested
> accuracy.

"""
function integration_qawo_table_alloc(omega, L, sine, n)
    ccall((:gsl_integration_qawo_table_alloc, libgsl), Ptr{gsl_integration_qawo_table}, (Cdouble, Cdouble, Cint, Csize_t), omega, L, sine, n)
end

@doc md"""
    integration_qawo_table_set(t, omega, L, sine) -> Cint

C signature:
`int gsl_integration_qawo_table_set (gsl_integration_qawo_table * t, double omega, double L, enum gsl_integration_qawo_enum sine)`

GSL documentation:

### `int gsl_integration_qawo_table_set (gsl_integration_qawo_table * t, double omega, double L, enum gsl_integration_qawo_enum sine)`

> This function changes the parameters `omega`, `L` and `sine` of the
> existing workspace `t`.

"""
function integration_qawo_table_set(t, omega, L, sine)
    ccall((:gsl_integration_qawo_table_set, libgsl), Cint, (Ref{gsl_integration_qawo_table}, Cdouble, Cdouble, Cint), t, omega, L, sine)
end

@doc md"""
    integration_qawo_table_set_length(t, L) -> Cint

C signature:
`int gsl_integration_qawo_table_set_length (gsl_integration_qawo_table * t, double L)`

GSL documentation:

### `int gsl_integration_qawo_table_set_length (gsl_integration_qawo_table * t, double L)`

> This function allows the length parameter `L` of the workspace `t` to
> be changed.

"""
function integration_qawo_table_set_length(t, L)
    ccall((:gsl_integration_qawo_table_set_length, libgsl), Cint, (Ref{gsl_integration_qawo_table}, Cdouble), t, L)
end

@doc md"""
    integration_qawo_table_free(t) -> Cvoid

C signature:
`void gsl_integration_qawo_table_free (gsl_integration_qawo_table * t)`

GSL documentation:

### `void gsl_integration_qawo_table_free (gsl_integration_qawo_table * t)`

> This function frees all the memory associated with the workspace `t`.

"""
function integration_qawo_table_free(t)
    ccall((:gsl_integration_qawo_table_free, libgsl), Cvoid, (Ptr{gsl_integration_qawo_table},), t)
end

@doc md"""
    integration_qk15(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk15 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk15(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk15, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qk21(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk21 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk21(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk21, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qk31(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk31 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk31(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk31, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qk41(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk41 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk41(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk41, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qk51(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk51 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk51(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk51, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qk61(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk61 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function integration_qk61(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk61, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qcheb(f, a, b, cheb12, cheb24) -> Cvoid

C signature:
`void gsl_integration_qcheb (gsl_function * f, double a, double b, double *cheb12, double *cheb24)`
"""
function integration_qcheb(f, a, b, cheb12, cheb24)
    ccall((:gsl_integration_qcheb, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, a, b, cheb12, cheb24)
end

@doc md"""
    integration_qk(n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk (const int n, const double xgk[], const double wg[], const double wgk[], double fv1[], double fv2[], const gsl_function *f, double a, double b, double * result, double * abserr, double * resabs, double * resasc)`
"""
function integration_qk(n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk, libgsl), Cvoid, (Cint, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc)
end

@doc md"""
    integration_qng(f, a, b, epsabs, epsrel, result, abserr, neval) -> Cint

C signature:
`int gsl_integration_qng (const gsl_function * f, double a, double b, double epsabs, double epsrel, double *result, double *abserr, size_t * neval)`

GSL documentation:

### `int gsl_integration_qng (const gsl_function * f, double a, double b, double epsabs, double epsrel, double * result, double * abserr, size_t * neval)`

> This function applies the Gauss-Kronrod 10-point, 21-point, 43-point
> and 87-point integration rules in succession until an estimate of the
> integral of $f$ over $(a,b)$ is achieved within the desired absolute
> and relative error limits, `epsabs` and `epsrel`. The function returns
> the final approximation, `result`, an estimate of the absolute error,
> `abserr` and the number of function evaluations used, `neval`. The
> Gauss-Kronrod rules are designed in such a way that each rule uses all
> the results of its predecessors, in order to minimize the total number
> of function evaluations.

"""
function integration_qng(f, a, b, epsabs, epsrel, result, abserr, neval)
    ccall((:gsl_integration_qng, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Csize_t}), f, a, b, epsabs, epsrel, result, abserr, neval)
end

@doc md"""
    integration_qag(f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qag (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, int key, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qag (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, int key, gsl_integration_workspace * workspace,  double * result, double * abserr)`

> This function applies an integration rule adaptively until an estimate
> of the integral of $f$ over $(a,b)$ is achieved within the desired
> absolute and relative error limits, `epsabs` and `epsrel`. The
> function returns the final approximation, `result`, and an estimate of
> the absolute error, `abserr`. The integration rule is determined by
> the value of `key`, which should be chosen from the following symbolic
> names,
>
> -   GSL\_INTEG\_GAUSS15 (key = 1)
>
> -   GSL\_INTEG\_GAUSS21 (key = 2)
>
> -   GSL\_INTEG\_GAUSS31 (key = 3)
>
> -   GSL\_INTEG\_GAUSS41 (key = 4)
>
> -   GSL\_INTEG\_GAUSS51 (key = 5)
>
> -   GSL\_INTEG\_GAUSS61 (key = 6)
>
> corresponding to the 15, 21, 31, 41, 51 and 61 point Gauss-Kronrod
> rules. The higher-order rules give better accuracy for smooth
> functions, while lower-order rules save time when the function
> contains local difficulties, such as discontinuities.
>
> On each iteration the adaptive integration strategy bisects the
> interval with the largest error estimate. The subintervals and their
> results are stored in the memory provided by `workspace`. The maximum
> number of subintervals is given by `limit`, which may not exceed the
> allocated size of the workspace.

"""
function integration_qag(f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr)
    ccall((:gsl_integration_qag, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Cint, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr)
end

@doc md"""
    integration_qagi(f, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagi (gsl_function * f, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qagi (gsl_function * f, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function computes the integral of the function `f` over the
> infinite interval $(-\infty,+\infty)$. The integral is mapped onto the
> semi-open interval $(0,1]$ using the transformation $x = (1-t)/t$,
>
> $$\int_{-\infty}^{+\infty} dx f(x) = \int_0^1 dt (f((1-t)/t) + f(-(1-t)/t))/t^2.$$
>
> It is then integrated using the QAGS algorithm. The normal 21-point
> Gauss-Kronrod rule of QAGS is replaced by a 15-point rule, because the
> transformation can generate an integrable singularity at the origin.
> In this case a lower-order rule is more efficient.

"""
function integration_qagi(f, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagi, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qagiu(f, a, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagiu (gsl_function * f, double a, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qagiu (gsl_function * f, double a, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function computes the integral of the function `f` over the
> semi-infinite interval $(a,+\infty)$. The integral is mapped onto the
> semi-open interval $(0,1]$ using the transformation $x = a + (1-t)/t$,
>
> $$\int_{a}^{+\infty} dx f(x) = \int_0^1 dt f(a + (1-t)/t)/t^2$$
>
> and then integrated using the QAGS algorithm.

"""
function integration_qagiu(f, a, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagiu, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qagil(f, b, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagil (gsl_function * f, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qagil (gsl_function * f, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function computes the integral of the function `f` over the
> semi-infinite interval $(-\infty,b)$. The integral is mapped onto the
> semi-open interval $(0,1]$ using the transformation $x = b - (1-t)/t$,
>
> $$\int_{-\infty}^{b} dx f(x) = \int_0^1 dt f(b - (1-t)/t)/t^2$$
>
> and then integrated using the QAGS algorithm.

"""
function integration_qagil(f, b, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagil, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, b, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qags(f, a, b, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qags (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qags (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function applies the Gauss-Kronrod 21-point integration rule
> adaptively until an estimate of the integral of $f$ over $(a,b)$ is
> achieved within the desired absolute and relative error limits,
> `epsabs` and `epsrel`. The results are extrapolated using the
> epsilon-algorithm, which accelerates the convergence of the integral
> in the presence of discontinuities and integrable singularities. The
> function returns the final approximation from the extrapolation,
> `result`, and an estimate of the absolute error, `abserr`. The
> subintervals and their results are stored in the memory provided by
> `workspace`. The maximum number of subintervals is given by `limit`,
> which may not exceed the allocated size of the workspace.

"""
function integration_qags(f, a, b, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qags, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qagp(f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagp (const gsl_function * f, double *pts, size_t npts, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qagp (const gsl_function * f, double * pts, size_t npts, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function applies the adaptive integration algorithm QAGS taking
> account of the user-supplied locations of singular points. The array
> `pts` of length `npts` should contain the endpoints of the integration
> ranges defined by the integration region and locations of the
> singularities. For example, to integrate over the region $(a,b)$ with
> break-points at $x_1, x_2, x_3$ (where $a < x_1 < x_2 < x_3 < b$) the
> following `pts` array should be used:
>
>     pts[0] = a
>     pts[1] = x_1
>     pts[2] = x_2
>     pts[3] = x_3
>     pts[4] = b
>
> with `npts` = 5.
>
> If you know the locations of the singular points in the integration
> region then this routine will be faster than `gsl_integration_qags`.

"""
function integration_qagp(f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagp, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Csize_t, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qawc(f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qawc (gsl_function *f, const double a, const double b, const double c, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

GSL documentation:

### `int gsl_integration_qawc (gsl_function * f, double a, double b, double c, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function computes the Cauchy principal value of the integral of
> $f$ over $(a,b)$, with a singularity at `c`,
>
> not texinfo
>
> $$I = \int_a^b dx\, {f(x) \over x - c}
>   = \lim_{\epsilon \to 0} 
> \left\{
> \int_a^{c-\epsilon} dx\, {f(x) \over x - c}
> +
> \int_{c+\epsilon}^b dx\, {f(x) \over x - c}
> \right\}$$
>
> texinfo
>
> $$I = \int_a^b dx f(x) / (x - c)$$
>
> The adaptive bisection algorithm of QAG is used, with modifications to
> ensure that subdivisions do not occur at the singular point $x = c$.
> When a subinterval contains the point $x = c$ or is close to it then a
> special 25-point modified Clenshaw-Curtis rule is used to control the
> singularity. Further away from the singularity the algorithm uses an
> ordinary 15-point Gauss-Kronrod integration rule.

"""
function integration_qawc(f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qawc, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qaws(f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qaws (gsl_function * f, const double a, const double b, gsl_integration_qaws_table * t, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qaws (gsl_function * f, const double a, const double b, gsl_integration_qaws_table * t, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`

> This function computes the integral of the function $f(x)$ over the
> interval $(a,b)$ with the singular weight function
> $(x-a)^\alpha (b-x)^\beta \log^\mu (x-a) \log^\nu (b-x)$. The
> parameters of the weight function $(\alpha, \beta, \mu, \nu)$ are
> taken from the table `t`. The integral is,
>
> $$I = \int_a^b dx f(x) (x - a)^\alpha (b - x)^\beta \log^\mu (x - a) \log^\nu (b - x).$$
>
> The adaptive bisection algorithm of QAG is used. When a subinterval
> contains one of the endpoints then a special 25-point modified
> Clenshaw-Curtis rule is used to control the singularities. For
> subintervals which do not include the endpoints an ordinary 15-point
> Gauss-Kronrod integration rule is used.

"""
function integration_qaws(f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qaws, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{gsl_integration_qaws_table}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr)
end

@doc md"""
    integration_qawo(f, a, epsabs, epsrel, limit, workspace, wf, result, abserr) -> Cint

C signature:
`int gsl_integration_qawo (gsl_function * f, const double a, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_qawo_table * wf, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qawo (gsl_function * f, const double a, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_qawo_table * wf, double * result, double * abserr)`

> This function uses an adaptive algorithm to compute the integral of
> $f$ over $(a,b)$ with the weight function $\sin(\omega x)$ or
> $\cos(\omega x)$ defined by the table `wf`,
>
> not texinfo
>
> $$\begin{aligned}
> I = \int_a^b dx f(x)
> \left\{
> \begin{array}{c}
> \sin{(\omega x)} \\
> \cos{(\omega x)}
> \end{array}
> \right\}
> \end{aligned}$$
>
> texinfo
>
> I = int\_a^b dx f(x) sin(omega x)  
> I = int\_a^b dx f(x) cos(omega x)
>
> The results are extrapolated using the epsilon-algorithm to accelerate
> the convergence of the integral. The function returns the final
> approximation from the extrapolation, `result`, and an estimate of the
> absolute error, `abserr`. The subintervals and their results are
> stored in the memory provided by `workspace`. The maximum number of
> subintervals is given by `limit`, which may not exceed the allocated
> size of the workspace.
>
> Those subintervals with "large" widths $d$ where $d\omega > 4$ are
> computed using a 25-point Clenshaw-Curtis integration rule, which
> handles the oscillatory behavior. Subintervals with a "small" widths
> where $d\omega < 4$ are computed using a 15-point Gauss-Kronrod
> integration.

"""
function integration_qawo(f, a, epsabs, epsrel, limit, workspace, wf, result, abserr)
    ccall((:gsl_integration_qawo, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{gsl_integration_qawo_table}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, epsrel, limit, workspace, wf, result, abserr)
end

@doc md"""
    integration_qawf(f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr) -> Cint

C signature:
`int gsl_integration_qawf (gsl_function * f, const double a, const double epsabs, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_workspace * cycle_workspace, gsl_integration_qawo_table * wf, double *result, double *abserr)`

GSL documentation:

### `int gsl_integration_qawf (gsl_function * f, const double a, const double epsabs, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_workspace * cycle_workspace, gsl_integration_qawo_table * wf, double * result, double * abserr)`

> This function attempts to compute a Fourier integral of the function
> `f` over the semi-infinite interval $[a,+\infty)$
>
> not texinfo
>
> $$\begin{aligned}
> I = \int_a^{+\infty} dx f(x)
> \left\{
> \begin{array}{c}
> \sin{(\omega x)} \\
> \cos{(\omega x)}
> \end{array}
> \right\}
> \end{aligned}$$
>
> texinfo
>
>     I = \int_a^{+\infty} dx f(x) sin(omega x)
>     I = \int_a^{+\infty} dx f(x) cos(omega x)
>
> The parameter $\omega$ and choice of $\sin$ or $\cos$ is taken from
> the table `wf` (the length `L` can take any value, since it is
> overridden by this function to a value appropriate for the Fourier
> integration). The integral is computed using the QAWO algorithm over
> each of the subintervals,
>
> not texinfo
>
> $$\begin{aligned}
> C_1 &= [a,a+c] \\
> C_2 &= [a+c,a+2c] \\
> \dots &= \dots \\
> C_k &= [a+(k-1)c,a+kc]
> \end{aligned}$$
>
> texinfo
>
>     C_1 = [a, a + c]
>     C_2 = [a + c, a + 2 c]
>     ... = ...
>     C_k = [a + (k-1) c, a + k c]
>
> where $c = (2 floor(|\omega|) + 1) \pi/|\omega|$. The width $c$ is
> chosen to cover an odd number of periods so that the contributions
> from the intervals alternate in sign and are monotonically decreasing
> when `f` is positive and monotonically decreasing. The sum of this
> sequence of contributions is accelerated using the epsilon-algorithm.
>
> This function works to an overall absolute tolerance of `abserr`. The
> following strategy is used: on each interval $C_k$ the algorithm tries
> to achieve the tolerance
>
> $$TOL_k = u_k abserr$$
>
> where $u_k = (1 - p)p^{k-1}$ and $p = 9/10$. The sum of the geometric
> series of contributions from each interval gives an overall tolerance
> of `abserr`.
>
> If the integration of a subinterval leads to difficulties then the
> accuracy requirement for subsequent intervals is relaxed,
>
> not texinfo
>
> $$TOL_k = u_k \max{(abserr, \max_{i<k}{(E_i)})}$$
>
> texinfo
>
> $$TOL_k = u_k max(abserr, max_{i<k}(E_i))$$
>
> where $E_k$ is the estimated error on the interval $C_k$.
>
> The subintervals and their results are stored in the memory provided
> by `workspace`. The maximum number of subintervals is given by
> `limit`, which may not exceed the allocated size of the workspace. The
> integration over each subinterval uses the memory provided by
> `cycle_workspace` as workspace for the QAWO algorithm.

"""
function integration_qawf(f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr)
    ccall((:gsl_integration_qawf, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{gsl_integration_workspace}, Ref{gsl_integration_qawo_table}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr)
end

@doc md"""
    integration_glfixed_table_alloc(n) -> Ptr{gsl_integration_glfixed_table}

C signature:
`gsl_integration_glfixed_table * gsl_integration_glfixed_table_alloc (size_t n)`

GSL documentation:

### `gsl_integration_glfixed_table * gsl_integration_glfixed_table_alloc (size_t n)`

> This function determines the Gauss-Legendre abscissae and weights
> necessary for an $n$-point fixed order integration scheme. If
> possible, high precision precomputed coefficients are used. If
> precomputed weights are not available, lower precision coefficients
> are computed on the fly.

"""
function integration_glfixed_table_alloc(n)
    ccall((:gsl_integration_glfixed_table_alloc, libgsl), Ptr{gsl_integration_glfixed_table}, (Csize_t,), n)
end

@doc md"""
    integration_glfixed_table_free(t) -> Cvoid

C signature:
`void gsl_integration_glfixed_table_free (gsl_integration_glfixed_table * t)`

GSL documentation:

### `void gsl_integration_glfixed_table_free (gsl_integration_glfixed_table * t)`

> This function frees the memory associated with the table `t`.

"""
function integration_glfixed_table_free(t)
    ccall((:gsl_integration_glfixed_table_free, libgsl), Cvoid, (Ptr{gsl_integration_glfixed_table},), t)
end

@doc md"""
    integration_glfixed(f, a, b, t) -> Cdouble

C signature:
`double gsl_integration_glfixed (const gsl_function *f, double a, double b, const gsl_integration_glfixed_table * t)`

GSL documentation:

### `double gsl_integration_glfixed (const gsl_function * f, double a, double b, const gsl_integration_glfixed_table * t)`

> This function applies the Gauss-Legendre integration rule contained in
> table `t` and returns the result.

"""
function integration_glfixed(f, a, b, t)
    ccall((:gsl_integration_glfixed, libgsl), Cdouble, (Ref{gsl_function}, Cdouble, Cdouble, Ref{gsl_integration_glfixed_table}), f, a, b, t)
end

@doc md"""
    integration_glfixed_point(a, b, i, xi, wi, t) -> Cint

C signature:
`int gsl_integration_glfixed_point (double a, double b, size_t i, double *xi, double *wi, const gsl_integration_glfixed_table * t)`

GSL documentation:

### `int gsl_integration_glfixed_point (double a, double b, size_t i, double * xi, double * wi, const gsl_integration_glfixed_table * t)`

> For `i` in $[0, \dots, n - 1]$, this function obtains the `i`-th
> Gauss-Legendre point `xi` and weight `wi` on the interval \[`a`,
> `b`\]. The points and weights are ordered by increasing point value. A
> function $f$ may be integrated on \[`a`, `b`\] by summing $wi * f(xi)$
> over `i`.

"""
function integration_glfixed_point(a, b, i, xi, wi, t)
    ccall((:gsl_integration_glfixed_point, libgsl), Cint, (Cdouble, Cdouble, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_integration_glfixed_table}), a, b, i, xi, wi, t)
end

@doc md"""
    integration_cquad_workspace_alloc(n) -> Ptr{gsl_integration_cquad_workspace}

C signature:
`gsl_integration_cquad_workspace * gsl_integration_cquad_workspace_alloc (const size_t n)`

GSL documentation:

### `gsl_integration_cquad_workspace * gsl_integration_cquad_workspace_alloc (size_t n)`

> This function allocates a workspace sufficient to hold the data for
> `n` intervals. The number `n` is not the maximum number of intervals
> that will be evaluated. If the workspace is full, intervals with
> smaller error estimates will be discarded. A minimum of 3 intervals is
> required and for most functions, a workspace of size 100 is
> sufficient.

"""
function integration_cquad_workspace_alloc(n)
    ccall((:gsl_integration_cquad_workspace_alloc, libgsl), Ptr{gsl_integration_cquad_workspace}, (Csize_t,), n)
end

@doc md"""
    integration_cquad_workspace_free(w) -> Cvoid

C signature:
`void gsl_integration_cquad_workspace_free (gsl_integration_cquad_workspace * w)`

GSL documentation:

### `void gsl_integration_cquad_workspace_free (gsl_integration_cquad_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function integration_cquad_workspace_free(w)
    ccall((:gsl_integration_cquad_workspace_free, libgsl), Cvoid, (Ptr{gsl_integration_cquad_workspace},), w)
end

@doc md"""
    integration_cquad(f, a, b, epsabs, epsrel, ws, result, abserr, nevals) -> Cint

C signature:
`int gsl_integration_cquad (const gsl_function * f, double a, double b, double epsabs, double epsrel, gsl_integration_cquad_workspace * ws, double *result, double *abserr, size_t * nevals)`

GSL documentation:

### `int gsl_integration_cquad (const gsl_function * f, double a, double b, double epsabs, double epsrel, gsl_integration_cquad_workspace * workspace,  double * result, double * abserr, size_t * nevals)`

> This function computes the integral of $f$ over $(a,b)$ within the
> desired absolute and relative error limits, `epsabs` and `epsrel`
> using the algorithm. The function returns the final approximation,
> `result`, an estimate of the absolute error, `abserr`, and the number
> of function evaluations required, `nevals`.
>
> The algorithm divides the integration region into subintervals, and in
> each iteration, the subinterval with the largest estimated error is
> processed. The algorithm uses Clenshaw-Curits quadrature rules of
> degree 4, 8, 16 and 32 over 5, 9, 17 and 33 nodes respectively. Each
> interval is initialized with the lowest-degree rule. When an interval
> is processed, the next-higher degree rule is evaluated and an error
> estimate is computed based on the $L_2$-norm of the difference between
> the underlying interpolating polynomials of both rules. If the
> highest-degree rule has already been used, or the interpolatory
> polynomials differ significantly, the interval is bisected.
>
> The subintervals and their results are stored in the memory provided
> by `workspace`. If the error estimate or the number of function
> evaluations is not needed, the pointers `abserr` and `nevals` can be
> set to `NULL`.

"""
function integration_cquad(f, a, b, epsabs, epsrel, ws, result, abserr, nevals)
    ccall((:gsl_integration_cquad, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_integration_cquad_workspace}, Ref{Cdouble}, Ref{Cdouble}, Ref{Csize_t}), f, a, b, epsabs, epsrel, ws, result, abserr, nevals)
end

@doc md"""
    integration_romberg_alloc(n) -> Ptr{gsl_integration_romberg_workspace}

C signature:
`gsl_integration_romberg_workspace *gsl_integration_romberg_alloc(const size_t n)`

GSL documentation:

### `gsl_integration_romberg_workspace * gsl_integration_romberg_alloc(const size_t n)`

> This function allocates a workspace for Romberg integration,
> specifying a maximum of $n$ iterations, or divisions of the interval.
> Since the number of divisions is $2^n + 1$, $n$ can be kept relatively
> small (i.e. $10$ or $20$). It is capped at a maximum value of $30$ to
> prevent overflow. The size of the workspace is $O(2n)$.

"""
function integration_romberg_alloc(n)
    ccall((:gsl_integration_romberg_alloc, libgsl), Ptr{gsl_integration_romberg_workspace}, (Csize_t,), n)
end

@doc md"""
    integration_romberg_free(w) -> Cvoid

C signature:
`void gsl_integration_romberg_free(gsl_integration_romberg_workspace * w)`

GSL documentation:

### `void gsl_integration_romberg_free(gsl_integration_romberg_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function integration_romberg_free(w)
    ccall((:gsl_integration_romberg_free, libgsl), Cvoid, (Ptr{gsl_integration_romberg_workspace},), w)
end

@doc md"""
    integration_romberg(f, a, b, epsabs, epsrel, result, neval, w) -> Cint

C signature:
`int gsl_integration_romberg(const gsl_function * f, const double a, const double b, const double epsabs, const double epsrel, double * result, size_t * neval, gsl_integration_romberg_workspace * w)`

GSL documentation:

### `int gsl_integration_romberg(const gsl_function * f, const double a, const double b, const double epsabs, const double epsrel, double * result, size_t * neval, gsl_integration_romberg_workspace * w)`

> This function integrates $f(x)$, specified by `f`, from `a` to `b`,
> storing the answer in `result`. At each step in the iteration,
> convergence is tested by checking:
>
> $$| I_k - I_{k-1} | \le \textrm{max} \left( epsabs, epsrel \times |I_k| \right)$$
>
> where $I_k$ is the current approximation and $I_{k-1}$ is the
> approximation of the previous iteration. If the method does not
> converge within the previously specified $n$ iterations, the function
> stores the best current estimate in `result` and returns
> `GSL_EMAXITER`. If the method converges, the function returns
> `GSL_SUCCESS`. The total number of function evaluations is returned in
> `neval`.

"""
function integration_romberg(f, a, b, epsabs, epsrel, result, neval, w)
    ccall((:gsl_integration_romberg, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_integration_romberg_workspace}), f, a, b, epsabs, epsrel, result, neval, w)
end

@doc md"""
    integration_fixed_alloc(type, n, a, b, alpha, beta) -> Ptr{gsl_integration_fixed_workspace}

C signature:
`gsl_integration_fixed_workspace * gsl_integration_fixed_alloc(const gsl_integration_fixed_type * type, const size_t n, const double a, const double b, const double alpha, const double beta)`

GSL documentation:

### `gsl_integration_fixed_workspace * gsl_integration_fixed_alloc(const gsl_integration_fixed_type * T, const size_t n, const double a, const double b, const double alpha, const double beta)`

> This function allocates a workspace for computing integrals with
> interpolating quadratures using `n` quadrature nodes. The parameters
> `a`, `b`, `alpha`, and `beta` specify the integration interval and/or
> weighting function for the various quadrature types. See the
> `table <tab_fixed-quadratures>` above for constraints on these
> parameters. The size of the workspace is $O(4n)$.
>
> gsl\_integration\_fixed\_type
>
> The type of quadrature used is specified by `T` which can be set to
> the following choices:
>
> gsl\_integration\_fixed\_legendre
>
> This specifies Legendre quadrature integration. The parameters `alpha`
> and `beta` are ignored for this type.
>
> gsl\_integration\_fixed\_chebyshev
>
> This specifies Chebyshev type 1 quadrature integration. The parameters
> `alpha` and `beta` are ignored for this type.
>
> gsl\_integration\_fixed\_gegenbauer
>
> This specifies Gegenbauer quadrature integration. The parameter `beta`
> is ignored for this type.
>
> gsl\_integration\_fixed\_jacobi
>
> This specifies Jacobi quadrature integration.
>
> gsl\_integration\_fixed\_laguerre
>
> This specifies Laguerre quadrature integration. The parameter `beta`
> is ignored for this type.
>
> gsl\_integration\_fixed\_hermite
>
> This specifies Hermite quadrature integration. The parameter `beta` is
> ignored for this type.
>
> gsl\_integration\_fixed\_exponential
>
> This specifies exponential quadrature integration. The parameter
> `beta` is ignored for this type.
>
> gsl\_integration\_fixed\_rational
>
> This specifies rational quadrature integration.
>
> gsl\_integration\_fixed\_chebyshev2
>
> This specifies Chebyshev type 2 quadrature integration. The parameters
> `alpha` and `beta` are ignored for this type.

"""
function integration_fixed_alloc(type, n, a, b, alpha, beta)
    ccall((:gsl_integration_fixed_alloc, libgsl), Ptr{gsl_integration_fixed_workspace}, (Ref{gsl_integration_fixed_type}, Csize_t, Cdouble, Cdouble, Cdouble, Cdouble), type, n, a, b, alpha, beta)
end

@doc md"""
    integration_fixed_free(w) -> Cvoid

C signature:
`void gsl_integration_fixed_free(gsl_integration_fixed_workspace * w)`

GSL documentation:

### `void gsl_integration_fixed_free(gsl_integration_fixed_workspace * w)`

> This function frees the memory assocated with the workspace `w`

"""
function integration_fixed_free(w)
    ccall((:gsl_integration_fixed_free, libgsl), Cvoid, (Ptr{gsl_integration_fixed_workspace},), w)
end

@doc md"""
    integration_fixed_n(w) -> Csize_t

C signature:
`size_t gsl_integration_fixed_n(const gsl_integration_fixed_workspace * w)`

GSL documentation:

### `size_t gsl_integration_fixed_n(const gsl_integration_fixed_workspace * w)`

> This function returns the number of quadrature nodes and weights.

"""
function integration_fixed_n(w)
    ccall((:gsl_integration_fixed_n, libgsl), Csize_t, (Ptr{gsl_integration_fixed_workspace},), w)
end

@doc md"""
    integration_fixed_nodes(w) -> Ptr{Cdouble}

C signature:
`double *gsl_integration_fixed_nodes(const gsl_integration_fixed_workspace * w)`

GSL documentation:

### `double * gsl_integration_fixed_nodes(const gsl_integration_fixed_workspace * w)`

> This function returns a pointer to an array of size `n` containing the
> quadrature nodes $x_i$.

"""
function integration_fixed_nodes(w)
    ccall((:gsl_integration_fixed_nodes, libgsl), Ptr{Cdouble}, (Ptr{gsl_integration_fixed_workspace},), w)
end

@doc md"""
    integration_fixed_weights(w) -> Ptr{Cdouble}

C signature:
`double *gsl_integration_fixed_weights(const gsl_integration_fixed_workspace * w)`

GSL documentation:

### `double * gsl_integration_fixed_weights(const gsl_integration_fixed_workspace * w)`

> This function returns a pointer to an array of size `n` containing the
> quadrature weights $w_i$.

"""
function integration_fixed_weights(w)
    ccall((:gsl_integration_fixed_weights, libgsl), Ptr{Cdouble}, (Ptr{gsl_integration_fixed_workspace},), w)
end

@doc md"""
    integration_fixed(func, result, w) -> Cint

C signature:
`int gsl_integration_fixed(const gsl_function * func, double * result, const gsl_integration_fixed_workspace * w)`

GSL documentation:

### `int gsl_integration_fixed(const gsl_function * func, double * result, const gsl_integration_fixed_workspace * w)`

> This function integrates the function $f(x)$ provided in `func` using
> previously computed fixed quadrature rules. The integral is
> approximated as

"""
function integration_fixed(func, result, w)
    ccall((:gsl_integration_fixed, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Ref{gsl_integration_fixed_workspace}), func, result, w)
end

