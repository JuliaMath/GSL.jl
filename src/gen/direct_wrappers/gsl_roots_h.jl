#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_roots.h ##############################################################


"""
    gsl_root_fsolver_alloc(T) -> Ptr{gsl_root_fsolver}

C signature:
`gsl_root_fsolver * gsl_root_fsolver_alloc (const gsl_root_fsolver_type * T)`
"""
function gsl_root_fsolver_alloc(T)
    ccall((:gsl_root_fsolver_alloc, libgsl), Ptr{gsl_root_fsolver}, (Ptr{gsl_root_fsolver_type},), T)
end

"""
    gsl_root_fsolver_free(s) -> Cvoid

C signature:
`void gsl_root_fsolver_free (gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_free(s)
    ccall((:gsl_root_fsolver_free, libgsl), Cvoid, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fsolver_set(s, f, x_lower, x_upper) -> Cint

C signature:
`int gsl_root_fsolver_set (gsl_root_fsolver * s, gsl_function * f, double x_lower, double x_upper)`
"""
function gsl_root_fsolver_set(s, f, x_lower, x_upper)
    ccall((:gsl_root_fsolver_set, libgsl), Cint, (Ref{gsl_root_fsolver}, Ref{gsl_function}, Cdouble, Cdouble), s, f, x_lower, x_upper)
end

"""
    gsl_root_fsolver_iterate(s) -> Cint

C signature:
`int gsl_root_fsolver_iterate (gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_iterate(s)
    ccall((:gsl_root_fsolver_iterate, libgsl), Cint, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_name(s)
    ccall((:gsl_root_fsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fsolver_root(s) -> Cdouble

C signature:
`double gsl_root_fsolver_root (const gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_root(s)
    ccall((:gsl_root_fsolver_root, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fsolver_x_lower(s) -> Cdouble

C signature:
`double gsl_root_fsolver_x_lower (const gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_x_lower(s)
    ccall((:gsl_root_fsolver_x_lower, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fsolver_x_upper(s) -> Cdouble

C signature:
`double gsl_root_fsolver_x_upper (const gsl_root_fsolver * s)`
"""
function gsl_root_fsolver_x_upper(s)
    ccall((:gsl_root_fsolver_x_upper, libgsl), Cdouble, (Ptr{gsl_root_fsolver},), s)
end

"""
    gsl_root_fdfsolver_alloc(T) -> Ptr{gsl_root_fdfsolver}

C signature:
`gsl_root_fdfsolver * gsl_root_fdfsolver_alloc (const gsl_root_fdfsolver_type * T)`
"""
function gsl_root_fdfsolver_alloc(T)
    ccall((:gsl_root_fdfsolver_alloc, libgsl), Ptr{gsl_root_fdfsolver}, (Ptr{gsl_root_fdfsolver_type},), T)
end

"""
    gsl_root_fdfsolver_set(s, fdf, root) -> Cint

C signature:
`int gsl_root_fdfsolver_set (gsl_root_fdfsolver * s, gsl_function_fdf * fdf, double root)`
"""
function gsl_root_fdfsolver_set(s, fdf, root)
    ccall((:gsl_root_fdfsolver_set, libgsl), Cint, (Ref{gsl_root_fdfsolver}, Ref{gsl_function_fdf}, Cdouble), s, fdf, root)
end

"""
    gsl_root_fdfsolver_iterate(s) -> Cint

C signature:
`int gsl_root_fdfsolver_iterate (gsl_root_fdfsolver * s)`
"""
function gsl_root_fdfsolver_iterate(s)
    ccall((:gsl_root_fdfsolver_iterate, libgsl), Cint, (Ptr{gsl_root_fdfsolver},), s)
end

"""
    gsl_root_fdfsolver_free(s) -> Cvoid

C signature:
`void gsl_root_fdfsolver_free (gsl_root_fdfsolver * s)`
"""
function gsl_root_fdfsolver_free(s)
    ccall((:gsl_root_fdfsolver_free, libgsl), Cvoid, (Ptr{gsl_root_fdfsolver},), s)
end

"""
    gsl_root_fdfsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_root_fdfsolver_name (const gsl_root_fdfsolver * s)`
"""
function gsl_root_fdfsolver_name(s)
    ccall((:gsl_root_fdfsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_root_fdfsolver},), s)
end

"""
    gsl_root_fdfsolver_root(s) -> Cdouble

C signature:
`double gsl_root_fdfsolver_root (const gsl_root_fdfsolver * s)`
"""
function gsl_root_fdfsolver_root(s)
    ccall((:gsl_root_fdfsolver_root, libgsl), Cdouble, (Ptr{gsl_root_fdfsolver},), s)
end

"""
    gsl_root_test_interval(x_lower, x_upper, epsabs, epsrel) -> Cint

C signature:
`int gsl_root_test_interval (double x_lower, double x_upper, double epsabs, double epsrel)`
"""
function gsl_root_test_interval(x_lower, x_upper, epsabs, epsrel)
    ccall((:gsl_root_test_interval, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel)
end

"""
    gsl_root_test_residual(f, epsabs) -> Cint

C signature:
`int gsl_root_test_residual (double f, double epsabs)`
"""
function gsl_root_test_residual(f, epsabs)
    ccall((:gsl_root_test_residual, libgsl), Cint, (Cdouble, Cdouble), f, epsabs)
end

"""
    gsl_root_test_delta(x1, x0, epsabs, epsrel) -> Cint

C signature:
`int gsl_root_test_delta (double x1, double x0, double epsabs, double epsrel)`
"""
function gsl_root_test_delta(x1, x0, epsabs, epsrel)
    ccall((:gsl_root_test_delta, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x1, x0, epsabs, epsrel)
end

