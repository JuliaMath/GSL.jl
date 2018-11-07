#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multiroots.h #########################################################


@doc md"""
    multiroot_fdjacobian(F, x, f, epsrel, jacobian) -> Cint

C signature:
`int gsl_multiroot_fdjacobian (gsl_multiroot_function * F, const gsl_vector * x, const gsl_vector * f, double epsrel, gsl_matrix * jacobian)`
"""
function multiroot_fdjacobian(F, x, f, epsrel, jacobian)
    ccall((:gsl_multiroot_fdjacobian, libgsl), Cint, (Ref{gsl_multiroot_function}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_matrix}), F, x, f, epsrel, jacobian)
end

@doc md"""
    multiroot_fsolver_alloc(T, n) -> Ptr{gsl_multiroot_fsolver}

C signature:
`gsl_multiroot_fsolver * gsl_multiroot_fsolver_alloc (const gsl_multiroot_fsolver_type * T, size_t n)`

GSL documentation:

### `gsl_multiroot_fsolver * gsl_multiroot_fsolver_alloc (const gsl_multiroot_fsolver_type * T, size_t n)`

> This function returns a pointer to a newly allocated instance of a
> solver of type `T` for a system of `n` dimensions. For example, the
> following code creates an instance of a hybrid solver, to solve a
> 3-dimensional system of equations:
>
>     const gsl_multiroot_fsolver_type * T = gsl_multiroot_fsolver_hybrid;
>     gsl_multiroot_fsolver * s = gsl_multiroot_fsolver_alloc (T, 3);
>
> If there is insufficient memory to create the solver then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function multiroot_fsolver_alloc(T, n)
    ccall((:gsl_multiroot_fsolver_alloc, libgsl), Ptr{gsl_multiroot_fsolver}, (Ref{gsl_multiroot_fsolver_type}, Csize_t), T, n)
end

@doc md"""
    multiroot_fsolver_free(s) -> Cvoid

C signature:
`void gsl_multiroot_fsolver_free (gsl_multiroot_fsolver * s)`

GSL documentation:

### `void gsl_multiroot_fsolver_free (gsl_multiroot_fsolver * s)`

> void gsl\_multiroot\_fdfsolver\_free (gsl\_multiroot\_fdfsolver \* s)

> These functions free all the memory associated with the solver `s`.

"""
function multiroot_fsolver_free(s)
    ccall((:gsl_multiroot_fsolver_free, libgsl), Cvoid, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fsolver_set(s, f, x) -> Cint

C signature:
`int gsl_multiroot_fsolver_set (gsl_multiroot_fsolver * s, gsl_multiroot_function * f, const gsl_vector * x)`

GSL documentation:

### `int gsl_multiroot_fsolver_set (gsl_multiroot_fsolver * s, gsl_multiroot_function * f, const gsl_vector * x)`

> int gsl\_multiroot\_fdfsolver\_set (gsl\_multiroot\_fdfsolver \* s,
> gsl\_multiroot\_function\_fdf \* fdf, const gsl\_vector \* x)

> These functions set, or reset, an existing solver `s` to use the
> function `f` or function and derivative `fdf`, and the initial guess
> `x`. Note that the initial position is copied from `x`, this argument
> is not modified by subsequent iterations.

"""
function multiroot_fsolver_set(s, f, x)
    ccall((:gsl_multiroot_fsolver_set, libgsl), Cint, (Ref{gsl_multiroot_fsolver}, Ref{gsl_multiroot_function}, Ref{gsl_vector}), s, f, x)
end

@doc md"""
    multiroot_fsolver_iterate(s) -> Cint

C signature:
`int gsl_multiroot_fsolver_iterate (gsl_multiroot_fsolver * s)`

GSL documentation:

### `int gsl_multiroot_fsolver_iterate (gsl_multiroot_fsolver * s)`

> int gsl\_multiroot\_fdfsolver\_iterate (gsl\_multiroot\_fdfsolver \*
> s)

> These functions perform a single iteration of the solver `s`. If the
> iteration encounters an unexpected problem then an error code will be
> returned,
>
> `GSL_EBADFUNC`
>
> > the iteration encountered a singular point where the function or its
> > derivative evaluated to `Inf` or `NaN`.
>
> `GSL_ENOPROG`
>
> > the iteration is not making any progress, preventing the algorithm
> > from continuing.

The solver maintains a current best estimate of the root `s->x` and its
function value `s->f` at all times. This information can be accessed
with the following auxiliary functions,

"""
function multiroot_fsolver_iterate(s)
    ccall((:gsl_multiroot_fsolver_iterate, libgsl), Cint, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`

GSL documentation:

### `const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`

> const char \* gsl\_multiroot\_fdfsolver\_name (const
> gsl\_multiroot\_fdfsolver \* s)

> These functions return a pointer to the name of the solver. For
> example:
>
>     printf ("s is a '%s' solver\n", gsl_multiroot_fdfsolver_name (s));
>
> would print something like `s is a 'newton' solver`.

"""
function multiroot_fsolver_name(s)
    ccall((:gsl_multiroot_fsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fsolver_root(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_root (const gsl_multiroot_fsolver * s)`

GSL documentation:

### `gsl_vector * gsl_multiroot_fsolver_root (const gsl_multiroot_fsolver * s)`

> gsl\_vector \* gsl\_multiroot\_fdfsolver\_root (const
> gsl\_multiroot\_fdfsolver \* s)

> These functions return the current estimate of the root for the solver
> `s`, given by `s->x`.

"""
function multiroot_fsolver_root(s)
    ccall((:gsl_multiroot_fsolver_root, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fsolver_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_dx (const gsl_multiroot_fsolver * s)`

GSL documentation:

### `gsl_vector * gsl_multiroot_fsolver_dx (const gsl_multiroot_fsolver * s)`

> gsl\_vector \* gsl\_multiroot\_fdfsolver\_dx (const
> gsl\_multiroot\_fdfsolver \* s)

> These functions return the last step $dx$ taken by the solver `s`,
> given by `s->dx`.

"""
function multiroot_fsolver_dx(s)
    ccall((:gsl_multiroot_fsolver_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fsolver_f(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_f (const gsl_multiroot_fsolver * s)`

GSL documentation:

### `gsl_vector * gsl_multiroot_fsolver_f (const gsl_multiroot_fsolver * s)`

> gsl\_vector \* gsl\_multiroot\_fdfsolver\_f (const
> gsl\_multiroot\_fdfsolver \* s)

> These functions return the function value $f(x)$ at the current
> estimate of the root for the solver `s`, given by `s->f`.

"""
function multiroot_fsolver_f(s)
    ccall((:gsl_multiroot_fsolver_f, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_alloc(T, n) -> Ptr{gsl_multiroot_fdfsolver}

C signature:
`gsl_multiroot_fdfsolver * gsl_multiroot_fdfsolver_alloc (const gsl_multiroot_fdfsolver_type * T, size_t n)`

GSL documentation:

### `gsl_multiroot_fdfsolver * gsl_multiroot_fdfsolver_alloc (const gsl_multiroot_fdfsolver_type * T, size_t n)`

> This function returns a pointer to a newly allocated instance of a
> derivative solver of type `T` for a system of `n` dimensions. For
> example, the following code creates an instance of a Newton-Raphson
> solver, for a 2-dimensional system of equations:
>
>     const gsl_multiroot_fdfsolver_type * T = gsl_multiroot_fdfsolver_newton;
>     gsl_multiroot_fdfsolver * s = gsl_multiroot_fdfsolver_alloc (T, 2);
>
> If there is insufficient memory to create the solver then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function multiroot_fdfsolver_alloc(T, n)
    ccall((:gsl_multiroot_fdfsolver_alloc, libgsl), Ptr{gsl_multiroot_fdfsolver}, (Ref{gsl_multiroot_fdfsolver_type}, Csize_t), T, n)
end

@doc md"""
    multiroot_fdfsolver_set(s, fdf, x) -> Cint

C signature:
`int gsl_multiroot_fdfsolver_set (gsl_multiroot_fdfsolver * s, gsl_multiroot_function_fdf * fdf, const gsl_vector * x)`
"""
function multiroot_fdfsolver_set(s, fdf, x)
    ccall((:gsl_multiroot_fdfsolver_set, libgsl), Cint, (Ref{gsl_multiroot_fdfsolver}, Ref{gsl_multiroot_function_fdf}, Ref{gsl_vector}), s, fdf, x)
end

@doc md"""
    multiroot_fdfsolver_iterate(s) -> Cint

C signature:
`int gsl_multiroot_fdfsolver_iterate (gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_iterate(s)
    ccall((:gsl_multiroot_fdfsolver_iterate, libgsl), Cint, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_free(s) -> Cvoid

C signature:
`void gsl_multiroot_fdfsolver_free (gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_free(s)
    ccall((:gsl_multiroot_fdfsolver_free, libgsl), Cvoid, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multiroot_fdfsolver_name (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_name(s)
    ccall((:gsl_multiroot_fdfsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_root(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_root (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_root(s)
    ccall((:gsl_multiroot_fdfsolver_root, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_dx (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_dx(s)
    ccall((:gsl_multiroot_fdfsolver_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_fdfsolver_f(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_f (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_f(s)
    ccall((:gsl_multiroot_fdfsolver_f, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

@doc md"""
    multiroot_test_delta(dx, x, epsabs, epsrel) -> Cint

C signature:
`int gsl_multiroot_test_delta (const gsl_vector * dx, const gsl_vector * x, double epsabs, double epsrel)`

GSL documentation:

### `int gsl_multiroot_test_delta (const gsl_vector * dx, const gsl_vector * x, double epsabs, double epsrel)`

> This function tests for the convergence of the sequence by comparing
> the last step `dx` with the absolute error `epsabs` and relative error
> `epsrel` to the current position `x`. The test returns `GSL_SUCCESS`
> if the following condition is achieved,
>
> not texinfo
>
> $$|dx_i| < \hbox{\it epsabs} + \hbox{\it epsrel\/}\, |x_i|$$
>
> texinfo
>
>     |dx_i| < epsabs + epsrel |x_i|
>
> for each component of `x` and returns `GSL_CONTINUE` otherwise.

"""
function multiroot_test_delta(dx, x, epsabs, epsrel)
    ccall((:gsl_multiroot_test_delta, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Cdouble), dx, x, epsabs, epsrel)
end

@doc md"""
    multiroot_test_residual(f, epsabs) -> Cint

C signature:
`int gsl_multiroot_test_residual (const gsl_vector * f, double epsabs)`

GSL documentation:

### `int gsl_multiroot_test_residual (const gsl_vector * f, double epsabs)`

> This function tests the residual value `f` against the absolute error
> bound `epsabs`. The test returns `GSL_SUCCESS` if the following
> condition is achieved,
>
> not texinfo
>
> $$\sum_i |f_i| < \hbox{\it epsabs}$$
>
> texinfo
>
>     \sum_i |f_i| < epsabs
>
> and returns `GSL_CONTINUE` otherwise. This criterion is suitable for
> situations where the precise location of the root, $x$, is unimportant
> provided a value can be found where the residual is small enough.

"""
function multiroot_test_residual(f, epsabs)
    ccall((:gsl_multiroot_test_residual, libgsl), Cint, (Ref{gsl_vector}, Cdouble), f, epsabs)
end

