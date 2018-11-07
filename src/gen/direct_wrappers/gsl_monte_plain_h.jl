#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_monte_plain.h ########################################################


@doc md"""
    monte_plain_integrate(f, xl, xu, dim, calls, r, state, result, abserr) -> Cint

C signature:
`int gsl_monte_plain_integrate (const gsl_monte_function * f, const double xl[], const double xu[], const size_t dim, const size_t calls, gsl_rng * r, gsl_monte_plain_state * state, double *result, double *abserr)`

GSL documentation:

### `int gsl_monte_plain_integrate (gsl_monte_function * f, const double xl[], const double xu[], size_t dim, size_t calls, gsl_rng * r, gsl_monte_plain_state * s, double * result, double * abserr)`

> This routines uses the plain Monte Carlo algorithm to integrate the
> function `f` over the `dim`-dimensional hypercubic region defined by
> the lower and upper limits in the arrays `xl` and `xu`, each of size
> `dim`. The integration uses a fixed number of function calls `calls`,
> and obtains random sampling points using the random number generator
> `r`. A previously allocated workspace `s` must be supplied. The result
> of the integration is returned in `result`, with an estimated absolute
> error `abserr`.

"""
function monte_plain_integrate(f, xl, xu, dim, calls, r, state, result, abserr)
    ccall((:gsl_monte_plain_integrate, libgsl), Cint, (Ref{gsl_monte_function}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_rng}, Ref{gsl_monte_plain_state}, Ref{Cdouble}, Ref{Cdouble}), f, xl, xu, dim, calls, r, state, result, abserr)
end

@doc md"""
    monte_plain_alloc(dim) -> Ptr{gsl_monte_plain_state}

C signature:
`gsl_monte_plain_state* gsl_monte_plain_alloc(size_t dim)`

GSL documentation:

### `gsl_monte_plain_state * gsl_monte_plain_alloc (size_t dim)`

> This function allocates and initializes a workspace for Monte Carlo
> integration in `dim` dimensions.

"""
function monte_plain_alloc(dim)
    ccall((:gsl_monte_plain_alloc, libgsl), Ptr{gsl_monte_plain_state}, (Csize_t,), dim)
end

@doc md"""
    monte_plain_init(state) -> Cint

C signature:
`int gsl_monte_plain_init(gsl_monte_plain_state* state)`

GSL documentation:

### `int gsl_monte_plain_init (gsl_monte_plain_state* s)`

> This function initializes a previously allocated integration state.
> This allows an existing workspace to be reused for different
> integrations.

"""
function monte_plain_init(state)
    ccall((:gsl_monte_plain_init, libgsl), Cint, (Ptr{gsl_monte_plain_state},), state)
end

@doc md"""
    monte_plain_free(state) -> Cvoid

C signature:
`void gsl_monte_plain_free (gsl_monte_plain_state* state)`

GSL documentation:

### `void gsl_monte_plain_free (gsl_monte_plain_state * s)`

> This function frees the memory associated with the integrator state
> `s`.

"""
function monte_plain_free(state)
    ccall((:gsl_monte_plain_free, libgsl), Cvoid, (Ptr{gsl_monte_plain_state},), state)
end

