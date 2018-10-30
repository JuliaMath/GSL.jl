#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multimin.h ###########################################################


"""
    gsl_multimin_diff(f, x, g) -> Cint

C signature:
`int gsl_multimin_diff (const gsl_multimin_function * f, const gsl_vector * x, gsl_vector * g)`
"""
function gsl_multimin_diff(f, x, g)
    ccall((:gsl_multimin_diff, libgsl), Cint, (Ref{gsl_multimin_function}, Ref{gsl_vector}, Ref{gsl_vector}), f, x, g)
end

"""
    gsl_multimin_fminimizer_alloc(T, n) -> Ptr{gsl_multimin_fminimizer}

C signature:
`gsl_multimin_fminimizer * gsl_multimin_fminimizer_alloc(const gsl_multimin_fminimizer_type *T, size_t n)`
"""
function gsl_multimin_fminimizer_alloc(T, n)
    ccall((:gsl_multimin_fminimizer_alloc, libgsl), Ptr{gsl_multimin_fminimizer}, (Ref{gsl_multimin_fminimizer_type}, Csize_t), T, n)
end

"""
    gsl_multimin_fminimizer_set(s, f, x, step_size) -> Cint

C signature:
`int gsl_multimin_fminimizer_set (gsl_multimin_fminimizer * s, gsl_multimin_function * f, const gsl_vector * x, const gsl_vector * step_size)`
"""
function gsl_multimin_fminimizer_set(s, f, x, step_size)
    ccall((:gsl_multimin_fminimizer_set, libgsl), Cint, (Ref{gsl_multimin_fminimizer}, Ref{gsl_multimin_function}, Ref{gsl_vector}, Ref{gsl_vector}), s, f, x, step_size)
end

"""
    gsl_multimin_fminimizer_free(s) -> Cvoid

C signature:
`void gsl_multimin_fminimizer_free(gsl_multimin_fminimizer *s)`
"""
function gsl_multimin_fminimizer_free(s)
    ccall((:gsl_multimin_fminimizer_free, libgsl), Cvoid, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_fminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multimin_fminimizer_name (const gsl_multimin_fminimizer * s)`
"""
function gsl_multimin_fminimizer_name(s)
    ccall((:gsl_multimin_fminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_fminimizer_iterate(s) -> Cint

C signature:
`int gsl_multimin_fminimizer_iterate(gsl_multimin_fminimizer *s)`
"""
function gsl_multimin_fminimizer_iterate(s)
    ccall((:gsl_multimin_fminimizer_iterate, libgsl), Cint, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_fminimizer_x(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fminimizer_x (const gsl_multimin_fminimizer * s)`
"""
function gsl_multimin_fminimizer_x(s)
    ccall((:gsl_multimin_fminimizer_x, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_fminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_multimin_fminimizer_minimum (const gsl_multimin_fminimizer * s)`
"""
function gsl_multimin_fminimizer_minimum(s)
    ccall((:gsl_multimin_fminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_fminimizer_size(s) -> Cdouble

C signature:
`double gsl_multimin_fminimizer_size (const gsl_multimin_fminimizer * s)`
"""
function gsl_multimin_fminimizer_size(s)
    ccall((:gsl_multimin_fminimizer_size, libgsl), Cdouble, (Ptr{gsl_multimin_fminimizer},), s)
end

"""
    gsl_multimin_test_gradient(g, epsabs) -> Cint

C signature:
`int gsl_multimin_test_gradient(const gsl_vector * g, double epsabs)`
"""
function gsl_multimin_test_gradient(g, epsabs)
    ccall((:gsl_multimin_test_gradient, libgsl), Cint, (Ref{gsl_vector}, Cdouble), g, epsabs)
end

"""
    gsl_multimin_test_size(size, epsabs) -> Cint

C signature:
`int gsl_multimin_test_size(const double size, double epsabs)`
"""
function gsl_multimin_test_size(size, epsabs)
    ccall((:gsl_multimin_test_size, libgsl), Cint, (Cdouble, Cdouble), size, epsabs)
end

"""
    gsl_multimin_fdfminimizer_alloc(T, n) -> Ptr{gsl_multimin_fdfminimizer}

C signature:
`gsl_multimin_fdfminimizer * gsl_multimin_fdfminimizer_alloc(const gsl_multimin_fdfminimizer_type *T, size_t n)`
"""
function gsl_multimin_fdfminimizer_alloc(T, n)
    ccall((:gsl_multimin_fdfminimizer_alloc, libgsl), Ptr{gsl_multimin_fdfminimizer}, (Ref{gsl_multimin_fdfminimizer_type}, Csize_t), T, n)
end

"""
    gsl_multimin_fdfminimizer_set(s, fdf, x, step_size, tol) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_set (gsl_multimin_fdfminimizer * s, gsl_multimin_function_fdf *fdf, const gsl_vector * x, double step_size, double tol)`
"""
function gsl_multimin_fdfminimizer_set(s, fdf, x, step_size, tol)
    ccall((:gsl_multimin_fdfminimizer_set, libgsl), Cint, (Ref{gsl_multimin_fdfminimizer}, Ref{gsl_multimin_function_fdf}, Ref{gsl_vector}, Cdouble, Cdouble), s, fdf, x, step_size, tol)
end

"""
    gsl_multimin_fdfminimizer_free(s) -> Cvoid

C signature:
`void gsl_multimin_fdfminimizer_free(gsl_multimin_fdfminimizer *s)`
"""
function gsl_multimin_fdfminimizer_free(s)
    ccall((:gsl_multimin_fdfminimizer_free, libgsl), Cvoid, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`
"""
function gsl_multimin_fdfminimizer_name(s)
    ccall((:gsl_multimin_fdfminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_iterate(s) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_iterate(gsl_multimin_fdfminimizer *s)`
"""
function gsl_multimin_fdfminimizer_iterate(s)
    ccall((:gsl_multimin_fdfminimizer_iterate, libgsl), Cint, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_restart(s) -> Cint

C signature:
`int gsl_multimin_fdfminimizer_restart(gsl_multimin_fdfminimizer *s)`
"""
function gsl_multimin_fdfminimizer_restart(s)
    ccall((:gsl_multimin_fdfminimizer_restart, libgsl), Cint, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_x(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_x (const gsl_multimin_fdfminimizer * s)`
"""
function gsl_multimin_fdfminimizer_x(s)
    ccall((:gsl_multimin_fdfminimizer_x, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_dx(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_dx (const gsl_multimin_fdfminimizer * s)`
"""
function gsl_multimin_fdfminimizer_dx(s)
    ccall((:gsl_multimin_fdfminimizer_dx, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_gradient(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multimin_fdfminimizer_gradient (const gsl_multimin_fdfminimizer * s)`
"""
function gsl_multimin_fdfminimizer_gradient(s)
    ccall((:gsl_multimin_fdfminimizer_gradient, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multimin_fdfminimizer},), s)
end

"""
    gsl_multimin_fdfminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_multimin_fdfminimizer_minimum (const gsl_multimin_fdfminimizer * s)`
"""
function gsl_multimin_fdfminimizer_minimum(s)
    ccall((:gsl_multimin_fdfminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_multimin_fdfminimizer},), s)
end

