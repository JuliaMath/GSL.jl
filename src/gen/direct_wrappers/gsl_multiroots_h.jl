#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multiroots.h #########################################################


"""
    gsl_multiroot_fdjacobian(F, x, f, epsrel, jacobian) -> Cint

C signature:
`int gsl_multiroot_fdjacobian (gsl_multiroot_function * F, const gsl_vector * x, const gsl_vector * f, double epsrel, gsl_matrix * jacobian)`
"""
function gsl_multiroot_fdjacobian(F, x, f, epsrel, jacobian)
    ccall((:gsl_multiroot_fdjacobian, libgsl), Cint, (Ref{gsl_multiroot_function}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_matrix}), F, x, f, epsrel, jacobian)
end

"""
    gsl_multiroot_fsolver_alloc(T, n) -> Ptr{gsl_multiroot_fsolver}

C signature:
`gsl_multiroot_fsolver * gsl_multiroot_fsolver_alloc (const gsl_multiroot_fsolver_type * T, size_t n)`
"""
function gsl_multiroot_fsolver_alloc(T, n)
    ccall((:gsl_multiroot_fsolver_alloc, libgsl), Ptr{gsl_multiroot_fsolver}, (Ref{gsl_multiroot_fsolver_type}, Csize_t), T, n)
end

"""
    gsl_multiroot_fsolver_free(s) -> Cvoid

C signature:
`void gsl_multiroot_fsolver_free (gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_free(s)
    ccall((:gsl_multiroot_fsolver_free, libgsl), Cvoid, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fsolver_set(s, f, x) -> Cint

C signature:
`int gsl_multiroot_fsolver_set (gsl_multiroot_fsolver * s, gsl_multiroot_function * f, const gsl_vector * x)`
"""
function gsl_multiroot_fsolver_set(s, f, x)
    ccall((:gsl_multiroot_fsolver_set, libgsl), Cint, (Ref{gsl_multiroot_fsolver}, Ref{gsl_multiroot_function}, Ref{gsl_vector}), s, f, x)
end

"""
    gsl_multiroot_fsolver_iterate(s) -> Cint

C signature:
`int gsl_multiroot_fsolver_iterate (gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_iterate(s)
    ccall((:gsl_multiroot_fsolver_iterate, libgsl), Cint, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_name(s)
    ccall((:gsl_multiroot_fsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fsolver_root(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_root (const gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_root(s)
    ccall((:gsl_multiroot_fsolver_root, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fsolver_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_dx (const gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_dx(s)
    ccall((:gsl_multiroot_fsolver_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fsolver_f(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fsolver_f (const gsl_multiroot_fsolver * s)`
"""
function gsl_multiroot_fsolver_f(s)
    ccall((:gsl_multiroot_fsolver_f, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_alloc(T, n) -> Ptr{gsl_multiroot_fdfsolver}

C signature:
`gsl_multiroot_fdfsolver * gsl_multiroot_fdfsolver_alloc (const gsl_multiroot_fdfsolver_type * T, size_t n)`
"""
function gsl_multiroot_fdfsolver_alloc(T, n)
    ccall((:gsl_multiroot_fdfsolver_alloc, libgsl), Ptr{gsl_multiroot_fdfsolver}, (Ref{gsl_multiroot_fdfsolver_type}, Csize_t), T, n)
end

"""
    gsl_multiroot_fdfsolver_set(s, fdf, x) -> Cint

C signature:
`int gsl_multiroot_fdfsolver_set (gsl_multiroot_fdfsolver * s, gsl_multiroot_function_fdf * fdf, const gsl_vector * x)`
"""
function gsl_multiroot_fdfsolver_set(s, fdf, x)
    ccall((:gsl_multiroot_fdfsolver_set, libgsl), Cint, (Ref{gsl_multiroot_fdfsolver}, Ref{gsl_multiroot_function_fdf}, Ref{gsl_vector}), s, fdf, x)
end

"""
    gsl_multiroot_fdfsolver_iterate(s) -> Cint

C signature:
`int gsl_multiroot_fdfsolver_iterate (gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_iterate(s)
    ccall((:gsl_multiroot_fdfsolver_iterate, libgsl), Cint, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_free(s) -> Cvoid

C signature:
`void gsl_multiroot_fdfsolver_free (gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_free(s)
    ccall((:gsl_multiroot_fdfsolver_free, libgsl), Cvoid, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multiroot_fdfsolver_name (const gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_name(s)
    ccall((:gsl_multiroot_fdfsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_root(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_root (const gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_root(s)
    ccall((:gsl_multiroot_fdfsolver_root, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_dx (const gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_dx(s)
    ccall((:gsl_multiroot_fdfsolver_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_fdfsolver_f(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multiroot_fdfsolver_f (const gsl_multiroot_fdfsolver * s)`
"""
function gsl_multiroot_fdfsolver_f(s)
    ccall((:gsl_multiroot_fdfsolver_f, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver},), s)
end

"""
    gsl_multiroot_test_delta(dx, x, epsabs, epsrel) -> Cint

C signature:
`int gsl_multiroot_test_delta (const gsl_vector * dx, const gsl_vector * x, double epsabs, double epsrel)`
"""
function gsl_multiroot_test_delta(dx, x, epsabs, epsrel)
    ccall((:gsl_multiroot_test_delta, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Cdouble), dx, x, epsabs, epsrel)
end

"""
    gsl_multiroot_test_residual(f, epsabs) -> Cint

C signature:
`int gsl_multiroot_test_residual (const gsl_vector * f, double epsabs)`
"""
function gsl_multiroot_test_residual(f, epsabs)
    ccall((:gsl_multiroot_test_residual, libgsl), Cint, (Ref{gsl_vector}, Cdouble), f, epsabs)
end

