#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_deriv.h ##############################################################


@doc md"""
    deriv_central(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_central (const gsl_function *f, double x, double h, double *result, double *abserr)`

GSL documentation:

### `int gsl_deriv_central (const gsl_function * f, double x, double h, double * result, double * abserr)`

> This function computes the numerical derivative of the function `f` at
> the point `x` using an adaptive central difference algorithm with a
> step-size of `h`. The derivative is returned in `result` and an
> estimate of its absolute error is returned in `abserr`.
>
> The initial value of `h` is used to estimate an optimal step-size,
> based on the scaling of the truncation error and round-off error in
> the derivative calculation. The derivative is computed using a 5-point
> rule for equally spaced abscissae at $x - h$, $x - h/2$, $x$,
> $x + h/2$, $x+h$, with an error estimate taken from the difference
> between the 5-point rule and the corresponding 3-point rule $x-h$,
> $x$, $x+h$. Note that the value of the function at $x$ does not
> contribute to the derivative calculation, so only 4-points are
> actually used.

"""
function deriv_central(f, x, h, result, abserr)
    ccall((:gsl_deriv_central, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

@doc md"""
    deriv_backward(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_backward (const gsl_function *f, double x, double h, double *result, double *abserr)`

GSL documentation:

### `int gsl_deriv_backward (const gsl_function * f, double x, double h, double * result, double * abserr)`

> This function computes the numerical derivative of the function `f` at
> the point `x` using an adaptive backward difference algorithm with a
> step-size of `h`. The function is evaluated only at points less than
> `x`, and never at `x` itself. The derivative is returned in `result`
> and an estimate of its absolute error is returned in `abserr`. This
> function should be used if $f(x)$ has a discontinuity at `x`, or is
> undefined for values greater than `x`.
>
> This function is equivalent to calling `gsl_deriv_forward` with a
> negative step-size.

"""
function deriv_backward(f, x, h, result, abserr)
    ccall((:gsl_deriv_backward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

@doc md"""
    deriv_forward(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_forward (const gsl_function *f, double x, double h, double *result, double *abserr)`

GSL documentation:

### `int gsl_deriv_forward (const gsl_function * f, double x, double h, double * result, double * abserr)`

> This function computes the numerical derivative of the function `f` at
> the point `x` using an adaptive forward difference algorithm with a
> step-size of `h`. The function is evaluated only at points greater
> than `x`, and never at `x` itself. The derivative is returned in
> `result` and an estimate of its absolute error is returned in
> `abserr`. This function should be used if $f(x)$ has a discontinuity
> at `x`, or is undefined for values less than `x`.
>
> The initial value of `h` is used to estimate an optimal step-size,
> based on the scaling of the truncation error and round-off error in
> the derivative calculation. The derivative at $x$ is computed using an
> "open" 4-point rule for equally spaced abscissae at $x+h/4$,
> $x + h/2$, $x + 3h/4$, $x+h$, with an error estimate taken from the
> difference between the 4-point rule and the corresponding 2-point rule
> $x+h/2$, $x+h$.

"""
function deriv_forward(f, x, h, result, abserr)
    ccall((:gsl_deriv_forward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

