#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_monte_miser.h ########################################################


"""
    gsl_monte_miser_integrate(f, xl, xh, dim, calls, r, state, result, abserr) -> Cint

C signature:
`int gsl_monte_miser_integrate(gsl_monte_function * f, const double xl[], const double xh[], size_t dim, size_t calls, gsl_rng *r, gsl_monte_miser_state* state, double *result, double *abserr)`
"""
function gsl_monte_miser_integrate(f, xl, xh, dim, calls, r, state, result, abserr)
    ccall((:gsl_monte_miser_integrate, libgsl), Cint, (Ref{gsl_monte_function}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_rng}, Ref{gsl_monte_miser_state}, Ref{Cdouble}, Ref{Cdouble}), f, xl, xh, dim, calls, r, state, result, abserr)
end

"""
    gsl_monte_miser_alloc(dim) -> Ptr{gsl_monte_miser_state}

C signature:
`gsl_monte_miser_state* gsl_monte_miser_alloc(size_t dim)`
"""
function gsl_monte_miser_alloc(dim)
    ccall((:gsl_monte_miser_alloc, libgsl), Ptr{gsl_monte_miser_state}, (Csize_t,), dim)
end

"""
    gsl_monte_miser_init(state) -> Cint

C signature:
`int gsl_monte_miser_init(gsl_monte_miser_state* state)`
"""
function gsl_monte_miser_init(state)
    ccall((:gsl_monte_miser_init, libgsl), Cint, (Ptr{gsl_monte_miser_state},), state)
end

"""
    gsl_monte_miser_free(state) -> Cvoid

C signature:
`void gsl_monte_miser_free(gsl_monte_miser_state* state)`
"""
function gsl_monte_miser_free(state)
    ccall((:gsl_monte_miser_free, libgsl), Cvoid, (Ptr{gsl_monte_miser_state},), state)
end

"""
    gsl_monte_miser_params_get(state, params) -> Cvoid

C signature:
`void gsl_monte_miser_params_get (const gsl_monte_miser_state * state, gsl_monte_miser_params * params)`
"""
function gsl_monte_miser_params_get(state, params)
    ccall((:gsl_monte_miser_params_get, libgsl), Cvoid, (Ref{gsl_monte_miser_state}, Ref{gsl_monte_miser_params}), state, params)
end

"""
    gsl_monte_miser_params_set(state, params) -> Cvoid

C signature:
`void gsl_monte_miser_params_set (gsl_monte_miser_state * state, const gsl_monte_miser_params * params)`
"""
function gsl_monte_miser_params_set(state, params)
    ccall((:gsl_monte_miser_params_set, libgsl), Cvoid, (Ref{gsl_monte_miser_state}, Ref{gsl_monte_miser_params}), state, params)
end

