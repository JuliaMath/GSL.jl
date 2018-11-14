#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multimin.h ###########################################################


@doc md"""
    multimin_diff(f, x, g) -> Cint

C signature:
`int gsl_multimin_diff (const gsl_multimin_function * f, const gsl_vector * x, gsl_vector * g)`
"""
function multimin_diff(f, x, g)
    ccall((:gsl_multimin_diff, libgsl), Cint, (Ref{gsl_multimin_function}, Ref{gsl_vector}, Ref{gsl_vector}), f, x, g)
end

@doc md"""
    multimin_fminimizer_alloc(T, n) -> Ptr{gsl_multimin_fminimizer}

C signature:
`gsl_multimin_fminimizer * gsl_multimin_fminimizer_alloc(const gsl_multimin_fminimizer_type *T, size_t n)`
"""
function multimin_fminimizer_alloc(T, n)
    ccall((:gsl_multimin_fminimizer_alloc, libgsl), Ptr{gsl_multimin_fminimizer}, (Ref{gsl_multimin_fminimizer_type}, Csize_t), T, n)
end

@doc md"""
    multimin_fminimizer_set(s, f, x, step_size) -> Cint

C signature:
`int gsl_multimin_fminimizer_set (gsl_multimin_fminimizer * s, gsl_multimin_function * f, const gsl_vector * x, const gsl_vector * step_size)`
"""
function multimin_fminimizer_set(s, f, x, step_size)
    ccall((:gsl_multimin_fminimizer_set, libgsl), Cint, (Ref{gsl_multimin_fminimizer}, Ref{gsl_multimin_function}, Ref{gsl_vector}, Ref{gsl_vector}), s, f, x, step_size)
end

@doc md"""
    multimin_fminimizer_free(s) -> Cvoid

C signature:
`void gsl_multimin_fminimizer_free(gsl_multimin_fminimizer *s)`
"""
function multimin_fminimizer_free(s)
    ccall((:gsl_multimin_fminimizer_free, libgsl), Cvoid, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_fminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multimin_fminimizer_name (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_name(s)
    ccall((:gsl_multimin_fminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_fminimizer_iterate(s) -> Cint

C signature:
`int gsl_multimin_fminimizer_iterate(gsl_multimin_fminimizer *s)`
"""
function multimin_fminimizer_iterate(s)
    ccall((:gsl_multimin_fminimizer_iterate, libgsl), Cint, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_fminimizer_x(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fminimizer_x (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_x(s)
    ccall((:gsl_multimin_fminimizer_x, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_fminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_multimin_fminimizer_minimum (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_minimum(s)
    ccall((:gsl_multimin_fminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_fminimizer_size(s) -> Cdouble

C signature:
`double gsl_multimin_fminimizer_size (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_size(s)
    ccall((:gsl_multimin_fminimizer_size, libgsl), Cdouble, (Ptr{gsl_multimin_fminimizer},), s)
end

@doc md"""
    multimin_test_gradient(g, epsabs) -> Cint

C signature:
`int gsl_multimin_test_gradient(const gsl_vector * g, double epsabs)`

GSL documentation:

### `int gsl_multimin_test_gradient (const gsl_vector * g, double epsabs)`

> This function tests the norm of the gradient `g` against the absolute
> tolerance `epsabs`. The gradient of a multidimensional function goes
> to zero at a minimum. The test returns `GSL_SUCCESS` if the following
> condition is achieved,
>
> not texinfo
>
> $$|g| < \hbox{\it epsabs}$$
>
> texinfo
>
>     |g| < epsabs
>
> and returns `GSL_CONTINUE` otherwise. A suitable choice of `epsabs`
> can be made from the desired accuracy in the function for small
> variations in $x$. The relationship between these quantities is given
> by $\delta{f} = g\,\delta{x}$.

"""
function multimin_test_gradient(g, epsabs)
    ccall((:gsl_multimin_test_gradient, libgsl), Cint, (Ref{gsl_vector}, Cdouble), g, epsabs)
end

@doc md"""
    multimin_test_size(size, epsabs) -> Cint

C signature:
`int gsl_multimin_test_size(const double size, double epsabs)`

GSL documentation:

### `int gsl_multimin_test_size (const double size, double epsabs)`

> This function tests the minimizer specific characteristic size (if
> applicable to the used minimizer) against absolute tolerance `epsabs`.
> The test returns `GSL_SUCCESS` if the size is smaller than tolerance,
> otherwise `GSL_CONTINUE` is returned.

"""
function multimin_test_size(size, epsabs)
    ccall((:gsl_multimin_test_size, libgsl), Cint, (Cdouble, Cdouble), size, epsabs)
end

@doc md"""
    multimin_fdfminimizer_alloc(T, n) -> Ptr{gsl_multimin_fdfminimizer}

C signature:
`gsl_multimin_fdfminimizer * gsl_multimin_fdfminimizer_alloc(const gsl_multimin_fdfminimizer_type *T, size_t n)`

GSL documentation:

### `gsl_multimin_fdfminimizer * gsl_multimin_fdfminimizer_alloc (const gsl_multimin_fdfminimizer_type * T, size_t n)`

> gsl\_multimin\_fminimizer \* gsl\_multimin\_fminimizer\_alloc (const
> gsl\_multimin\_fminimizer\_type \* T, size\_t n)

> This function returns a pointer to a newly allocated instance of a
> minimizer of type `T` for an `n`-dimension function. If there is
> insufficient memory to create the minimizer then the function returns
> a null pointer and the error handler is invoked with an error code of
> `GSL_ENOMEM`.

"""
function multimin_fdfminimizer_alloc(T, n)
    ccall((:gsl_multimin_fdfminimizer_alloc, libgsl), Ptr{gsl_multimin_fdfminimizer}, (Ref{gsl_multimin_fdfminimizer_type}, Csize_t), T, n)
end

@doc md"""
    multimin_fdfminimizer_set(s, fdf, x, step_size, tol) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_set (gsl_multimin_fdfminimizer * s, gsl_multimin_function_fdf *fdf, const gsl_vector * x, double step_size, double tol)`

GSL documentation:

### `int gsl_multimin_fdfminimizer_set (gsl_multimin_fdfminimizer * s, gsl_multimin_function_fdf * fdf, const gsl_vector * x, double step_size, double tol)`

> int gsl\_multimin\_fminimizer\_set (gsl\_multimin\_fminimizer \* s,
> gsl\_multimin\_function \* f, const gsl\_vector \* x, const
> gsl\_vector \* step\_size)

> The function `gsl_multimin_fdfminimizer_set` initializes the minimizer
> `s` to minimize the function `fdf` starting from the initial point
> `x`. The size of the first trial step is given by `step_size`. The
> accuracy of the line minimization is specified by `tol`. The precise
> meaning of this parameter depends on the method used. Typically the
> line minimization is considered successful if the gradient of the
> function $g$ is orthogonal to the current search direction $p$ to a
> relative accuracy of `tol`, where $p \cdot g < tol |p| |g|$. A `tol`
> value of 0.1 is suitable for most purposes, since line minimization
> only needs to be carried out approximately. Note that setting `tol` to
> zero will force the use of "exact" line-searches, which are extremely
> expensive.
>
> The function `gsl_multimin_fminimizer_set` initializes the minimizer
> `s` to minimize the function `f`, starting from the initial point `x`.
> The size of the initial trial steps is given in vector `step_size`.
> The precise meaning of this parameter depends on the method used.

"""
function multimin_fdfminimizer_set(s, fdf, x, step_size, tol)
    ccall((:gsl_multimin_fdfminimizer_set, libgsl), Cint, (Ref{gsl_multimin_fdfminimizer}, Ref{gsl_multimin_function_fdf}, Ref{gsl_vector}, Cdouble, Cdouble), s, fdf, x, step_size, tol)
end

@doc md"""
    multimin_fdfminimizer_free(s) -> Cvoid

C signature:
`void gsl_multimin_fdfminimizer_free(gsl_multimin_fdfminimizer *s)`

GSL documentation:

### `void gsl_multimin_fdfminimizer_free (gsl_multimin_fdfminimizer * s)`

> void gsl\_multimin\_fminimizer\_free (gsl\_multimin\_fminimizer \* s)

> This function frees all the memory associated with the minimizer `s`.

"""
function multimin_fdfminimizer_free(s)
    ccall((:gsl_multimin_fdfminimizer_free, libgsl), Cvoid, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`

GSL documentation:

### `const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`

> const char \* gsl\_multimin\_fminimizer\_name (const
> gsl\_multimin\_fminimizer \* s)

> This function returns a pointer to the name of the minimizer. For
> example:
>
>     printf ("s is a '%s' minimizer\n", gsl_multimin_fdfminimizer_name (s));
>
> would print something like `s is a 'conjugate_pr' minimizer`.

"""
function multimin_fdfminimizer_name(s)
    ccall((:gsl_multimin_fdfminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_iterate(s) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_iterate(gsl_multimin_fdfminimizer *s)`

GSL documentation:

### `int gsl_multimin_fdfminimizer_iterate (gsl_multimin_fdfminimizer * s)`

> int gsl\_multimin\_fminimizer\_iterate (gsl\_multimin\_fminimizer \*
> s)

> These functions perform a single iteration of the minimizer `s`. If
> the iteration encounters an unexpected problem then an error code will
> be returned. The error code `GSL_ENOPROG` signifies that the minimizer
> is unable to improve on its current estimate, either due to numerical
> difficulty or because a genuine local minimum has been reached.

The minimizer maintains a current best estimate of the minimum at all
times. This information can be accessed with the following auxiliary
functions,

"""
function multimin_fdfminimizer_iterate(s)
    ccall((:gsl_multimin_fdfminimizer_iterate, libgsl), Cint, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_restart(s) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_restart(gsl_multimin_fdfminimizer *s)`

GSL documentation:

### `int gsl_multimin_fdfminimizer_restart (gsl_multimin_fdfminimizer * s)`

> This function resets the minimizer `s` to use the current point as a
> new starting point.

"""
function multimin_fdfminimizer_restart(s)
    ccall((:gsl_multimin_fdfminimizer_restart, libgsl), Cint, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_x(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_x (const gsl_multimin_fdfminimizer * s)`

GSL documentation:

### `gsl_vector * gsl_multimin_fdfminimizer_x (const gsl_multimin_fdfminimizer * s)`

> gsl\_vector \* gsl\_multimin\_fminimizer\_x (const
> gsl\_multimin\_fminimizer \* s) double
> gsl\_multimin\_fdfminimizer\_minimum (const
> gsl\_multimin\_fdfminimizer \* s) double
> gsl\_multimin\_fminimizer\_minimum (const gsl\_multimin\_fminimizer \*
> s) gsl\_vector \* gsl\_multimin\_fdfminimizer\_gradient (const
> gsl\_multimin\_fdfminimizer \* s) gsl\_vector \*
> gsl\_multimin\_fdfminimizer\_dx (const gsl\_multimin\_fdfminimizer \*
> s) double gsl\_multimin\_fminimizer\_size (const
> gsl\_multimin\_fminimizer \* s)

> These functions return the current best estimate of the location of
> the minimum, the value of the function at that point, its gradient,
> the last step increment of the estimate, and minimizer specific
> characteristic size for the minimizer `s`.

"""
function multimin_fdfminimizer_x(s)
    ccall((:gsl_multimin_fdfminimizer_x, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_dx (const gsl_multimin_fdfminimizer * s)`
"""
function multimin_fdfminimizer_dx(s)
    ccall((:gsl_multimin_fdfminimizer_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_gradient(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_gradient (const gsl_multimin_fdfminimizer * s)`
"""
function multimin_fdfminimizer_gradient(s)
    ccall((:gsl_multimin_fdfminimizer_gradient, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

@doc md"""
    multimin_fdfminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_multimin_fdfminimizer_minimum (const gsl_multimin_fdfminimizer * s)`
"""
function multimin_fdfminimizer_minimum(s)
    ccall((:gsl_multimin_fdfminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_multimin_fdfminimizer},), s)
end

