#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_monte_miser.h ########################################################


@doc md"""
    monte_miser_integrate(f, xl, xh, dim, calls, r, state, result, abserr) -> Cint

C signature:
`int gsl_monte_miser_integrate(gsl_monte_function * f, const double xl[], const double xh[], size_t dim, size_t calls, gsl_rng *r, gsl_monte_miser_state* state, double *result, double *abserr)`

GSL documentation:

### `int gsl_monte_miser_integrate (gsl_monte_function * f, const double xl[], const double xu[], size_t dim, size_t calls, gsl_rng * r, gsl_monte_miser_state * s, double * result, double * abserr)`

> This routines uses the MISER Monte Carlo algorithm to integrate the
> function `f` over the `dim`-dimensional hypercubic region defined by
> the lower and upper limits in the arrays `xl` and `xu`, each of size
> `dim`. The integration uses a fixed number of function calls `calls`,
> and obtains random sampling points using the random number generator
> `r`. A previously allocated workspace `s` must be supplied. The result
> of the integration is returned in `result`, with an estimated absolute
> error `abserr`.

"""
function monte_miser_integrate(f, xl, xh, dim, calls, r, state, result, abserr)
    ccall((:gsl_monte_miser_integrate, libgsl), Cint, (Ref{gsl_monte_function}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_rng}, Ref{gsl_monte_miser_state}, Ref{Cdouble}, Ref{Cdouble}), f, xl, xh, dim, calls, r, state, result, abserr)
end

@doc md"""
    monte_miser_alloc(dim) -> Ptr{gsl_monte_miser_state}

C signature:
`gsl_monte_miser_state* gsl_monte_miser_alloc(size_t dim)`

GSL documentation:

### `gsl_monte_miser_state * gsl_monte_miser_alloc (size_t dim)`

> This function allocates and initializes a workspace for Monte Carlo
> integration in `dim` dimensions. The workspace is used to maintain the
> state of the integration.

"""
function monte_miser_alloc(dim)
    ccall((:gsl_monte_miser_alloc, libgsl), Ptr{gsl_monte_miser_state}, (Csize_t,), dim)
end

@doc md"""
    monte_miser_init(state) -> Cint

C signature:
`int gsl_monte_miser_init(gsl_monte_miser_state* state)`

GSL documentation:

### `int gsl_monte_miser_init (gsl_monte_miser_state* s)`

> This function initializes a previously allocated integration state.
> This allows an existing workspace to be reused for different
> integrations.

"""
function monte_miser_init(state)
    ccall((:gsl_monte_miser_init, libgsl), Cint, (Ptr{gsl_monte_miser_state},), state)
end

@doc md"""
    monte_miser_free(state) -> Cvoid

C signature:
`void gsl_monte_miser_free(gsl_monte_miser_state* state)`

GSL documentation:

### `void gsl_monte_miser_free (gsl_monte_miser_state * s)`

> This function frees the memory associated with the integrator state
> `s`.

The MISER algorithm has several configurable parameters which can be
changed using the following two functions.

"""
function monte_miser_free(state)
    ccall((:gsl_monte_miser_free, libgsl), Cvoid, (Ptr{gsl_monte_miser_state},), state)
end

@doc md"""
    monte_miser_params_get(state, params) -> Cvoid

C signature:
`void gsl_monte_miser_params_get (const gsl_monte_miser_state * state, gsl_monte_miser_params * params)`

GSL documentation:

### `void gsl_monte_miser_params_get (const gsl_monte_miser_state * s, gsl_monte_miser_params * params)`

> This function copies the parameters of the integrator state into the
> user-supplied `params` structure.

"""
function monte_miser_params_get(state, params)
    ccall((:gsl_monte_miser_params_get, libgsl), Cvoid, (Ref{gsl_monte_miser_state}, Ref{gsl_monte_miser_params}), state, params)
end

@doc md"""
    monte_miser_params_set(state, params) -> Cvoid

C signature:
`void gsl_monte_miser_params_set (gsl_monte_miser_state * state, const gsl_monte_miser_params * params)`

GSL documentation:

### `void gsl_monte_miser_params_set (gsl_monte_miser_state * s, const gsl_monte_miser_params * params)`

> This function sets the integrator parameters based on values provided
> in the `params` structure.

Typically the values of the parameters are first read using
`gsl_monte_miser_params_get`, the necessary changes are made to the
fields of the `params` structure, and the values are copied back into
the integrator state using `gsl_monte_miser_params_set`. The functions
use the `gsl_monte_miser_params` structure which contains the following
fields:

"""
function monte_miser_params_set(state, params)
    ccall((:gsl_monte_miser_params_set, libgsl), Cvoid, (Ref{gsl_monte_miser_state}, Ref{gsl_monte_miser_params}), state, params)
end

