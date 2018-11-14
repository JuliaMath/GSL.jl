#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_monte_vegas.h ########################################################


@doc md"""
    monte_vegas_integrate(f, xl, xu, dim, calls, r, state, result, abserr) -> Cint

C signature:
`int gsl_monte_vegas_integrate(gsl_monte_function * f, double xl[], double xu[], size_t dim, size_t calls, gsl_rng * r, gsl_monte_vegas_state *state, double* result, double* abserr)`

GSL documentation:

### `int gsl_monte_vegas_integrate (gsl_monte_function * f, double xl[], double xu[], size_t dim, size_t calls, gsl_rng * r, gsl_monte_vegas_state * s, double * result, double * abserr)`

> This routines uses the VEGAS Monte Carlo algorithm to integrate the
> function `f` over the `dim`-dimensional hypercubic region defined by
> the lower and upper limits in the arrays `xl` and `xu`, each of size
> `dim`. The integration uses a fixed number of function calls `calls`,
> and obtains random sampling points using the random number generator
> `r`. A previously allocated workspace `s` must be supplied. The result
> of the integration is returned in `result`, with an estimated absolute
> error `abserr`. The result and its error estimate are based on a
> weighted average of independent samples. The chi-squared per degree of
> freedom for the weighted average is returned via the state struct
> component, `s->chisq`, and must be consistent with 1 for the weighted
> average to be reliable.

"""
function monte_vegas_integrate(f, xl, xu, dim, calls, r, state, result, abserr)
    ccall((:gsl_monte_vegas_integrate, libgsl), Cint, (Ref{gsl_monte_function}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_rng}, Ref{gsl_monte_vegas_state}, Ref{Cdouble}, Ref{Cdouble}), f, xl, xu, dim, calls, r, state, result, abserr)
end

@doc md"""
    monte_vegas_alloc(dim) -> Ptr{gsl_monte_vegas_state}

C signature:
`gsl_monte_vegas_state* gsl_monte_vegas_alloc(size_t dim)`

GSL documentation:

### `gsl_monte_vegas_state * gsl_monte_vegas_alloc (size_t dim)`

> This function allocates and initializes a workspace for Monte Carlo
> integration in `dim` dimensions. The workspace is used to maintain the
> state of the integration.

"""
function monte_vegas_alloc(dim)
    ccall((:gsl_monte_vegas_alloc, libgsl), Ptr{gsl_monte_vegas_state}, (Csize_t,), dim)
end

@doc md"""
    monte_vegas_init(state) -> Cint

C signature:
`int gsl_monte_vegas_init(gsl_monte_vegas_state* state)`

GSL documentation:

### `int gsl_monte_vegas_init (gsl_monte_vegas_state* s)`

> This function initializes a previously allocated integration state.
> This allows an existing workspace to be reused for different
> integrations.

"""
function monte_vegas_init(state)
    ccall((:gsl_monte_vegas_init, libgsl), Cint, (Ptr{gsl_monte_vegas_state},), state)
end

@doc md"""
    monte_vegas_free(state) -> Cvoid

C signature:
`void gsl_monte_vegas_free (gsl_monte_vegas_state* state)`

GSL documentation:

### `void gsl_monte_vegas_free (gsl_monte_vegas_state * s)`

> This function frees the memory associated with the integrator state
> `s`.

The VEGAS algorithm computes a number of independent estimates of the
integral internally, according to the `iterations` parameter described
below, and returns their weighted average. Random sampling of the
integrand can occasionally produce an estimate where the error is zero,
particularly if the function is constant in some regions. An estimate
with zero error causes the weighted average to break down and must be
handled separately. In the original Fortran implementations of VEGAS the
error estimate is made non-zero by substituting a small value (typically
`1e-30`). The implementation in GSL differs from this and avoids the use
of an arbitrary constant---it either assigns the value a weight which is
the average weight of the preceding estimates or discards it according
to the following procedure,

-   current estimate has zero error, weighted average has finite error

    The current estimate is assigned a weight which is the average
    weight of the preceding estimates.

-   current estimate has finite error, previous estimates had zero error

    The previous estimates are discarded and the weighted averaging
    procedure begins with the current estimate.

-   current estimate has zero error, previous estimates had zero error

    The estimates are averaged using the arithmetic mean, but no error
    is computed.

The convergence of the algorithm can be tested using the overall
chi-squared value of the results, which is available from the following
function:

"""
function monte_vegas_free(state)
    ccall((:gsl_monte_vegas_free, libgsl), Cvoid, (Ptr{gsl_monte_vegas_state},), state)
end

@doc md"""
    monte_vegas_chisq(state) -> Cdouble

C signature:
`double gsl_monte_vegas_chisq (const gsl_monte_vegas_state* state)`

GSL documentation:

### `double gsl_monte_vegas_chisq (const gsl_monte_vegas_state * s)`

> This function returns the chi-squared per degree of freedom for the
> weighted estimate of the integral. The returned value should be close
> to 1. A value which differs significantly from 1 indicates that the
> values from different iterations are inconsistent. In this case the
> weighted error will be under-estimated, and further iterations of the
> algorithm are needed to obtain reliable results.

"""
function monte_vegas_chisq(state)
    ccall((:gsl_monte_vegas_chisq, libgsl), Cdouble, (Ptr{gsl_monte_vegas_state},), state)
end

@doc md"""
    monte_vegas_runval(state, result, sigma) -> Cvoid

C signature:
`void gsl_monte_vegas_runval (const gsl_monte_vegas_state* state, double * result, double * sigma)`

GSL documentation:

### `void gsl_monte_vegas_runval (const gsl_monte_vegas_state * s, double * result, double * sigma)`

> This function returns the raw (unaveraged) values of the integral
> `result` and its error `sigma` from the most recent iteration of the
> algorithm.

The VEGAS algorithm is highly configurable. Several parameters can be
changed using the following two functions.

"""
function monte_vegas_runval(state, result, sigma)
    ccall((:gsl_monte_vegas_runval, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{Cdouble}, Ref{Cdouble}), state, result, sigma)
end

@doc md"""
    monte_vegas_params_get(state, params) -> Cvoid

C signature:
`void gsl_monte_vegas_params_get (const gsl_monte_vegas_state * state, gsl_monte_vegas_params * params)`

GSL documentation:

### `void gsl_monte_vegas_params_get (const gsl_monte_vegas_state * s, gsl_monte_vegas_params * params)`

> This function copies the parameters of the integrator state into the
> user-supplied `params` structure.

"""
function monte_vegas_params_get(state, params)
    ccall((:gsl_monte_vegas_params_get, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{gsl_monte_vegas_params}), state, params)
end

@doc md"""
    monte_vegas_params_set(state, params) -> Cvoid

C signature:
`void gsl_monte_vegas_params_set (gsl_monte_vegas_state * state, const gsl_monte_vegas_params * params)`

GSL documentation:

### `void gsl_monte_vegas_params_set (gsl_monte_vegas_state * s, const gsl_monte_vegas_params * params)`

> This function sets the integrator parameters based on values provided
> in the `params` structure.

Typically the values of the parameters are first read using
`gsl_monte_vegas_params_get`, the necessary changes are made to the
fields of the `params` structure, and the values are copied back into
the integrator state using `gsl_monte_vegas_params_set`. The functions
use the `gsl_monte_vegas_params` structure which contains the following
fields:

"""
function monte_vegas_params_set(state, params)
    ccall((:gsl_monte_vegas_params_set, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{gsl_monte_vegas_params}), state, params)
end

