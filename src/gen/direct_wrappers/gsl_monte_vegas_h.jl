#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_monte_vegas.h ########################################################


"""
    gsl_monte_vegas_integrate(f, xl, xu, dim, calls, r, state, result, abserr) -> Cint

C signature:
`int gsl_monte_vegas_integrate(gsl_monte_function * f, double xl[], double xu[], size_t dim, size_t calls, gsl_rng * r, gsl_monte_vegas_state *state, double* result, double* abserr)`
"""
function gsl_monte_vegas_integrate(f, xl, xu, dim, calls, r, state, result, abserr)
    ccall((:gsl_monte_vegas_integrate, libgsl), Cint, (Ref{gsl_monte_function}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_rng}, Ref{gsl_monte_vegas_state}, Ref{Cdouble}, Ref{Cdouble}), f, xl, xu, dim, calls, r, state, result, abserr)
end

"""
    gsl_monte_vegas_alloc(dim) -> Ptr{gsl_monte_vegas_state}

C signature:
`gsl_monte_vegas_state* gsl_monte_vegas_alloc(size_t dim)`
"""
function gsl_monte_vegas_alloc(dim)
    ccall((:gsl_monte_vegas_alloc, libgsl), Ptr{gsl_monte_vegas_state}, (Csize_t,), dim)
end

"""
    gsl_monte_vegas_init(state) -> Cint

C signature:
`int gsl_monte_vegas_init(gsl_monte_vegas_state* state)`
"""
function gsl_monte_vegas_init(state)
    ccall((:gsl_monte_vegas_init, libgsl), Cint, (Ptr{gsl_monte_vegas_state},), state)
end

"""
    gsl_monte_vegas_free(state) -> Cvoid

C signature:
`void gsl_monte_vegas_free (gsl_monte_vegas_state* state)`
"""
function gsl_monte_vegas_free(state)
    ccall((:gsl_monte_vegas_free, libgsl), Cvoid, (Ptr{gsl_monte_vegas_state},), state)
end

"""
    gsl_monte_vegas_chisq(state) -> Cdouble

C signature:
`double gsl_monte_vegas_chisq (const gsl_monte_vegas_state* state)`
"""
function gsl_monte_vegas_chisq(state)
    ccall((:gsl_monte_vegas_chisq, libgsl), Cdouble, (Ptr{gsl_monte_vegas_state},), state)
end

"""
    gsl_monte_vegas_runval(state, result, sigma) -> Cvoid

C signature:
`void gsl_monte_vegas_runval (const gsl_monte_vegas_state* state, double * result, double * sigma)`
"""
function gsl_monte_vegas_runval(state, result, sigma)
    ccall((:gsl_monte_vegas_runval, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{Cdouble}, Ref{Cdouble}), state, result, sigma)
end

"""
    gsl_monte_vegas_params_get(state, params) -> Cvoid

C signature:
`void gsl_monte_vegas_params_get (const gsl_monte_vegas_state * state, gsl_monte_vegas_params * params)`
"""
function gsl_monte_vegas_params_get(state, params)
    ccall((:gsl_monte_vegas_params_get, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{gsl_monte_vegas_params}), state, params)
end

"""
    gsl_monte_vegas_params_set(state, params) -> Cvoid

C signature:
`void gsl_monte_vegas_params_set (gsl_monte_vegas_state * state, const gsl_monte_vegas_params * params)`
"""
function gsl_monte_vegas_params_set(state, params)
    ccall((:gsl_monte_vegas_params_set, libgsl), Cvoid, (Ref{gsl_monte_vegas_state}, Ref{gsl_monte_vegas_params}), state, params)
end

