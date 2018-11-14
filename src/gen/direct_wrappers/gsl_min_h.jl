#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_min.h ################################################################


@doc md"""
    min_fminimizer_alloc(T) -> Ptr{gsl_min_fminimizer}

C signature:
`gsl_min_fminimizer * gsl_min_fminimizer_alloc (const gsl_min_fminimizer_type * T)`

GSL documentation:

### `gsl_min_fminimizer * gsl_min_fminimizer_alloc (const gsl_min_fminimizer_type * T)`

> This function returns a pointer to a newly allocated instance of a
> minimizer of type `T`. For example, the following code creates an
> instance of a golden section minimizer:
>
>     const gsl_min_fminimizer_type * T = gsl_min_fminimizer_goldensection;
>     gsl_min_fminimizer * s = gsl_min_fminimizer_alloc (T);
>
> If there is insufficient memory to create the minimizer then the
> function returns a null pointer and the error handler is invoked with
> an error code of `GSL_ENOMEM`.

"""
function min_fminimizer_alloc(T)
    ccall((:gsl_min_fminimizer_alloc, libgsl), Ptr{gsl_min_fminimizer}, (Ptr{gsl_min_fminimizer_type},), T)
end

@doc md"""
    min_fminimizer_free(s) -> Cvoid

C signature:
`void gsl_min_fminimizer_free (gsl_min_fminimizer * s)`

GSL documentation:

### `void gsl_min_fminimizer_free (gsl_min_fminimizer * s)`

> This function frees all the memory associated with the minimizer `s`.

"""
function min_fminimizer_free(s)
    ccall((:gsl_min_fminimizer_free, libgsl), Cvoid, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_set(s, f, x_minimum, x_lower, x_upper) -> Cint

C signature:
`int gsl_min_fminimizer_set (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double x_lower, double x_upper)`

GSL documentation:

### `int gsl_min_fminimizer_set (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double x_lower, double x_upper)`

> This function sets, or resets, an existing minimizer `s` to use the
> function `f` and the initial search interval \[`x_lower`, `x_upper`\],
> with a guess for the location of the minimum `x_minimum`.
>
> If the interval given does not contain a minimum, then the function
> returns an error code of `GSL_EINVAL`.

"""
function min_fminimizer_set(s, f, x_minimum, x_lower, x_upper)
    ccall((:gsl_min_fminimizer_set, libgsl), Cint, (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble, Cdouble), s, f, x_minimum, x_lower, x_upper)
end

@doc md"""
    min_fminimizer_set_with_values(s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper) -> Cint

C signature:
`int gsl_min_fminimizer_set_with_values (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double f_minimum, double x_lower, double f_lower, double x_upper, double f_upper)`

GSL documentation:

### `int gsl_min_fminimizer_set_with_values (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double f_minimum, double x_lower, double f_lower, double x_upper, double f_upper)`

> This function is equivalent to `gsl_min_fminimizer_set` but uses the
> values `f_minimum`, `f_lower` and `f_upper` instead of computing
> `f(x_minimum)`, `f(x_lower)` and `f(x_upper)`.

"""
function min_fminimizer_set_with_values(s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper)
    ccall((:gsl_min_fminimizer_set_with_values, libgsl), Cint, (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper)
end

@doc md"""
    min_fminimizer_iterate(s) -> Cint

C signature:
`int gsl_min_fminimizer_iterate (gsl_min_fminimizer * s)`

GSL documentation:

### `int gsl_min_fminimizer_iterate (gsl_min_fminimizer * s)`

> This function performs a single iteration of the minimizer `s`. If the
> iteration encounters an unexpected problem then an error code will be
> returned,
>
> `GSL_EBADFUNC`
>
> > the iteration encountered a singular point where the function
> > evaluated to `Inf` or `NaN`.
>
> `GSL_FAILURE`
>
> > the algorithm could not improve the current best approximation or
> > bounding interval.

The minimizer maintains a current best estimate of the position of the
minimum at all times, and the current interval bounding the minimum.
This information can be accessed with the following auxiliary functions,

"""
function min_fminimizer_iterate(s)
    ccall((:gsl_min_fminimizer_iterate, libgsl), Cint, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`

GSL documentation:

### `const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`

> This function returns a pointer to the name of the minimizer. For
> example:
>
>     printf ("s is a '%s' minimizer\n", gsl_min_fminimizer_name (s));
>
> would print something like `s is a 'brent' minimizer`.

"""
function min_fminimizer_name(s)
    ccall((:gsl_min_fminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_x_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_minimum (const gsl_min_fminimizer * s)`

GSL documentation:

### `double gsl_min_fminimizer_x_minimum (const gsl_min_fminimizer * s)`

> This function returns the current estimate of the position of the
> minimum for the minimizer `s`.

"""
function min_fminimizer_x_minimum(s)
    ccall((:gsl_min_fminimizer_x_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_x_lower(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_lower (const gsl_min_fminimizer * s)`
"""
function min_fminimizer_x_lower(s)
    ccall((:gsl_min_fminimizer_x_lower, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_x_upper(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_upper (const gsl_min_fminimizer * s)`

GSL documentation:

### `double gsl_min_fminimizer_x_upper (const gsl_min_fminimizer * s)`

> double gsl\_min\_fminimizer\_x\_lower (const gsl\_min\_fminimizer \*
> s)

> These functions return the current upper and lower bound of the
> interval for the minimizer `s`.

"""
function min_fminimizer_x_upper(s)
    ccall((:gsl_min_fminimizer_x_upper, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_f_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_minimum (const gsl_min_fminimizer * s)`

GSL documentation:

### `double gsl_min_fminimizer_f_minimum (const gsl_min_fminimizer * s)`

> double gsl\_min\_fminimizer\_f\_upper (const gsl\_min\_fminimizer \*
> s) double gsl\_min\_fminimizer\_f\_lower (const gsl\_min\_fminimizer
> \* s)

> These functions return the value of the function at the current
> estimate of the minimum and at the upper and lower bounds of the
> interval for the minimizer `s`.

"""
function min_fminimizer_f_minimum(s)
    ccall((:gsl_min_fminimizer_f_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_f_lower(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_lower (const gsl_min_fminimizer * s)`
"""
function min_fminimizer_f_lower(s)
    ccall((:gsl_min_fminimizer_f_lower, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_f_upper(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_upper (const gsl_min_fminimizer * s)`
"""
function min_fminimizer_f_upper(s)
    ccall((:gsl_min_fminimizer_f_upper, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_fminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_minimum (const gsl_min_fminimizer * s)`
"""
function min_fminimizer_minimum(s)
    ccall((:gsl_min_fminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

@doc md"""
    min_test_interval(x_lower, x_upper, epsabs, epsrel) -> Cint

C signature:
`int gsl_min_test_interval (double x_lower, double x_upper, double epsabs, double epsrel)`

GSL documentation:

### `int gsl_min_test_interval (double x_lower, double x_upper,  double epsabs, double epsrel)`

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
> that the relative error is accurately estimated for minima close to
> the origin.
>
> This condition on the interval also implies that any estimate of the
> minimum $x_m$ in the interval satisfies the same condition with
> respect to the true minimum $x_m^*$,
>
> not texinfo
>
> $$|x_m - x_m^*| < \hbox{\it epsabs} + \hbox{\it epsrel\/}\, x_m^*$$
>
> texinfo
>
>     |x_m - x_m^*| < epsabs + epsrel x_m^*
>
> assuming that the true minimum $x_m^*$ is contained within the
> interval.

"""
function min_test_interval(x_lower, x_upper, epsabs, epsrel)
    ccall((:gsl_min_test_interval, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel)
end

@doc md"""
    min_find_bracket(f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max) -> Cint

C signature:
`int gsl_min_find_bracket(gsl_function *f,double *x_minimum,double * f_minimum, double *x_lower, double * f_lower, double *x_upper, double * f_upper, size_t eval_max)`
"""
function min_find_bracket(f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max)
    ccall((:gsl_min_find_bracket, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max)
end

