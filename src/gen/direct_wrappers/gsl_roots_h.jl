#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_roots.h ##############################################################


@doc md"""
    root_fsolver_alloc(T) -> Ptr{gsl_root_fsolver}

C signature:
`gsl_root_fsolver * gsl_root_fsolver_alloc (const gsl_root_fsolver_type * T)`

GSL documentation:

### `gsl_root_fsolver * gsl_root_fsolver_alloc (const gsl_root_fsolver_type * T)`

> This function returns a pointer to a newly allocated instance of a
> solver of type `T`. For example, the following code creates an
> instance of a bisection solver:
>
>     const gsl_root_fsolver_type * T = gsl_root_fsolver_bisection;
>     gsl_root_fsolver * s = gsl_root_fsolver_alloc (T);
>
> If there is insufficient memory to create the solver then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function root_fsolver_alloc(T)
    ccall((:gsl_root_fsolver_alloc, libgsl), Ptr{gsl_root_fsolver}, (Ptr{gsl_root_fsolver_type},), T)
end

@doc md"""
    root_fsolver_free(s) -> Cvoid

C signature:
`void gsl_root_fsolver_free (gsl_root_fsolver * s)`

GSL documentation:

### `void gsl_root_fsolver_free (gsl_root_fsolver * s)`

> void gsl\_root\_fdfsolver\_free (gsl\_root\_fdfsolver \* s)

> These functions free all the memory associated with the solver `s`.

"""
function root_fsolver_free(s)
    ccall((:gsl_root_fsolver_free, libgsl), Cvoid, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fsolver_set(s, f, x_lower, x_upper) -> Cint

C signature:
`int gsl_root_fsolver_set (gsl_root_fsolver * s, gsl_function * f, double x_lower, double x_upper)`

GSL documentation:

### `int gsl_root_fsolver_set (gsl_root_fsolver * s, gsl_function * f, double x_lower, double x_upper)`

> This function initializes, or reinitializes, an existing solver `s` to
> use the function `f` and the initial search interval \[`x_lower`,
> `x_upper`\].

"""
function root_fsolver_set(s, f, x_lower, x_upper)
    ccall((:gsl_root_fsolver_set, libgsl), Cint, (Ref{gsl_root_fsolver}, Ref{gsl_function}, Cdouble, Cdouble), s, f, x_lower, x_upper)
end

@doc md"""
    root_fsolver_iterate(s) -> Cint

C signature:
`int gsl_root_fsolver_iterate (gsl_root_fsolver * s)`

GSL documentation:

### `int gsl_root_fsolver_iterate (gsl_root_fsolver * s)`

> int gsl\_root\_fdfsolver\_iterate (gsl\_root\_fdfsolver \* s)

> These functions perform a single iteration of the solver `s`. If the
> iteration encounters an unexpected problem then an error code will be
> returned,
>
> `GSL_EBADFUNC`
>
> > the iteration encountered a singular point where the function or its
> > derivative evaluated to `Inf` or `NaN`.
>
> `GSL_EZERODIV`
>
> > the derivative of the function vanished at the iteration point,
> > preventing the algorithm from continuing without a division by zero.

The solver maintains a current best estimate of the root at all times.
The bracketing solvers also keep track of the current best interval
bounding the root. This information can be accessed with the following
auxiliary functions,

"""
function root_fsolver_iterate(s)
    ccall((:gsl_root_fsolver_iterate, libgsl), Cint, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`

GSL documentation:

### `const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`

> const char \* gsl\_root\_fdfsolver\_name (const gsl\_root\_fdfsolver
> \* s)

> These functions return a pointer to the name of the solver. For
> example:
>
>     printf ("s is a '%s' solver\n", gsl_root_fsolver_name (s));
>
> would print something like `s is a 'bisection' solver`.

"""
function root_fsolver_name(s)
    ccall((:gsl_root_fsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fsolver_root(s) -> Cdouble

C signature:
`double gsl_root_fsolver_root (const gsl_root_fsolver * s)`

GSL documentation:

### `double gsl_root_fsolver_root (const gsl_root_fsolver * s)`

> double gsl\_root\_fdfsolver\_root (const gsl\_root\_fdfsolver \* s)

> These functions return the current estimate of the root for the solver
> `s`.

"""
function root_fsolver_root(s)
    ccall((:gsl_root_fsolver_root, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fsolver_x_lower(s) -> Cdouble

C signature:
`double gsl_root_fsolver_x_lower (const gsl_root_fsolver * s)`

GSL documentation:

### `double gsl_root_fsolver_x_lower (const gsl_root_fsolver * s)`

> double gsl\_root\_fsolver\_x\_upper (const gsl\_root\_fsolver \* s)

> These functions return the current bracketing interval for the solver
> `s`.

"""
function root_fsolver_x_lower(s)
    ccall((:gsl_root_fsolver_x_lower, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fsolver_x_upper(s) -> Cdouble

C signature:
`double gsl_root_fsolver_x_upper (const gsl_root_fsolver * s)`
"""
function root_fsolver_x_upper(s)
    ccall((:gsl_root_fsolver_x_upper, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

@doc md"""
    root_fdfsolver_alloc(T) -> Ptr{gsl_root_fdfsolver}

C signature:
`gsl_root_fdfsolver * gsl_root_fdfsolver_alloc (const gsl_root_fdfsolver_type * T)`

GSL documentation:

### `gsl_root_fdfsolver * gsl_root_fdfsolver_alloc (const gsl_root_fdfsolver_type * T)`

> This function returns a pointer to a newly allocated instance of a
> derivative-based solver of type `T`. For example, the following code
> creates an instance of a Newton-Raphson solver:
>
>     const gsl_root_fdfsolver_type * T = gsl_root_fdfsolver_newton;
>     gsl_root_fdfsolver * s = gsl_root_fdfsolver_alloc (T);
>
> If there is insufficient memory to create the solver then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function root_fdfsolver_alloc(T)
    ccall((:gsl_root_fdfsolver_alloc, libgsl), Ptr{gsl_root_fdfsolver}, (Ptr{gsl_root_fdfsolver_type},), T)
end

@doc md"""
    root_fdfsolver_set(s, fdf, root) -> Cint

C signature:
`int gsl_root_fdfsolver_set (gsl_root_fdfsolver * s, gsl_function_fdf * fdf, double root)`

GSL documentation:

### `int gsl_root_fdfsolver_set (gsl_root_fdfsolver * s, gsl_function_fdf * fdf, double root)`

> This function initializes, or reinitializes, an existing solver `s` to
> use the function and derivative `fdf` and the initial guess `root`.

"""
function root_fdfsolver_set(s, fdf, root)
    ccall((:gsl_root_fdfsolver_set, libgsl), Cint, (Ref{gsl_root_fdfsolver}, Ref{gsl_function_fdf}, Cdouble), s, fdf, root)
end

@doc md"""
    root_fdfsolver_iterate(s) -> Cint

C signature:
`int gsl_root_fdfsolver_iterate (gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_iterate(s)
    ccall((:gsl_root_fdfsolver_iterate, libgsl), Cint, (Ptr{gsl_root_fdfsolver},), s)
end

@doc md"""
    root_fdfsolver_free(s) -> Cvoid

C signature:
`void gsl_root_fdfsolver_free (gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_free(s)
    ccall((:gsl_root_fdfsolver_free, libgsl), Cvoid, (Ptr{gsl_root_fdfsolver},), s)
end

@doc md"""
    root_fdfsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_root_fdfsolver_name (const gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_name(s)
    ccall((:gsl_root_fdfsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_root_fdfsolver},), s)
end

@doc md"""
    root_fdfsolver_root(s) -> Cdouble

C signature:
`double gsl_root_fdfsolver_root (const gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_root(s)
    ccall((:gsl_root_fdfsolver_root, libgsl), Cdouble, (Ptr{gsl_root_fdfsolver},), s)
end

@doc md"""
    root_test_interval(x_lower, x_upper, epsabs, epsrel) -> Cint

C signature:
`int gsl_root_test_interval (double x_lower, double x_upper, double epsabs, double epsrel)`

GSL documentation:

### `int gsl_root_test_interval (double x_lower, double x_upper, double epsabs, double epsrel)`

> This function tests for the convergence of the interval \[`x_lower`,
> `x_upper`\] with absolute error `epsabs` and relative error `epsrel`.
> The test returns `GSL_SUCCESS` if the following condition is achieved,
>
> not texinfo
>
> $$|a - b| < \hbox{\it epsabs} + \hbox{\it epsrel\/}\, \min(|a|,|b|)$$
>
> texinfo
>
>     |a - b| < epsabs + epsrel min(|a|,|b|) 
>
> when the interval $x = [a,b]$ does not include the origin. If the
> interval includes the origin then $\min(|a|,|b|)$ is replaced by zero
> (which is the minimum value of $|x|$ over the interval). This ensures
> that the relative error is accurately estimated for roots close to the
> origin.
>
> This condition on the interval also implies that any estimate of the
> root $r$ in the interval satisfies the same condition with respect to
> the true root $r^*$,
>
> not texinfo
>
> $$|r - r^*| < \hbox{\it epsabs} + \hbox{\it epsrel\/}\, r^*$$
>
> texinfo
>
>     |r - r^*| < epsabs + epsrel r^*
>
> assuming that the true root $r^*$ is contained within the interval.

"""
function root_test_interval(x_lower, x_upper, epsabs, epsrel)
    ccall((:gsl_root_test_interval, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel)
end

@doc md"""
    root_test_residual(f, epsabs) -> Cint

C signature:
`int gsl_root_test_residual (double f, double epsabs)`

GSL documentation:

### `int gsl_root_test_residual (double f, double epsabs)`

> This function tests the residual value `f` against the absolute error
> bound `epsabs`. The test returns `GSL_SUCCESS` if the following
> condition is achieved,
>
> not texinfo
>
> $$|f| < \hbox{\it epsabs}$$
>
> texinfo
>
>     |f| < epsabs
>
> and returns `GSL_CONTINUE` otherwise. This criterion is suitable for
> situations where the precise location of the root, $x$, is unimportant
> provided a value can be found where the residual, $|f(x)|$, is small
> enough.

"""
function root_test_residual(f, epsabs)
    ccall((:gsl_root_test_residual, libgsl), Cint, (Cdouble, Cdouble), f, epsabs)
end

@doc md"""
    root_test_delta(x1, x0, epsabs, epsrel) -> Cint

C signature:
`int gsl_root_test_delta (double x1, double x0, double epsabs, double epsrel)`

GSL documentation:

### `int gsl_root_test_delta (double x1, double x0, double epsabs, double epsrel)`

> This function tests for the convergence of the sequence `x0`, `x1`
> with absolute error `epsabs` and relative error `epsrel`. The test
> returns `GSL_SUCCESS` if the following condition is achieved,
>
> not texinfo
>
> $$|x_1 - x_0| < \hbox{\it epsabs} + \hbox{\it epsrel\/}\, |x_1|$$
>
> texinfo
>
>     |x_1 - x_0| < epsabs + epsrel |x_1|
>
> and returns `GSL_CONTINUE` otherwise.

"""
function root_test_delta(x1, x0, epsabs, epsrel)
    ccall((:gsl_root_test_delta, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x1, x0, epsabs, epsrel)
end

