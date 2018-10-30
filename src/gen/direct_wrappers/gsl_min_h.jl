#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_min.h ################################################################


"""
    gsl_min_fminimizer_alloc(T) -> Ptr{gsl_min_fminimizer}

C signature:
`gsl_min_fminimizer * gsl_min_fminimizer_alloc (const gsl_min_fminimizer_type * T)`
"""
function gsl_min_fminimizer_alloc(T)
    ccall((:gsl_min_fminimizer_alloc, libgsl), Ptr{gsl_min_fminimizer}, (Ptr{gsl_min_fminimizer_type},), T)
end

"""
    gsl_min_fminimizer_free(s) -> Cvoid

C signature:
`void gsl_min_fminimizer_free (gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_free(s)
    ccall((:gsl_min_fminimizer_free, libgsl), Cvoid, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_set(s, f, x_minimum, x_lower, x_upper) -> Cint

C signature:
`int gsl_min_fminimizer_set (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double x_lower, double x_upper)`
"""
function gsl_min_fminimizer_set(s, f, x_minimum, x_lower, x_upper)
    ccall((:gsl_min_fminimizer_set, libgsl), Cint, (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble, Cdouble), s, f, x_minimum, x_lower, x_upper)
end

"""
    gsl_min_fminimizer_set_with_values(s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper) -> Cint

C signature:
`int gsl_min_fminimizer_set_with_values (gsl_min_fminimizer * s, gsl_function * f, double x_minimum, double f_minimum, double x_lower, double f_lower, double x_upper, double f_upper)`
"""
function gsl_min_fminimizer_set_with_values(s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper)
    ccall((:gsl_min_fminimizer_set_with_values, libgsl), Cint, (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), s, f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper)
end

"""
    gsl_min_fminimizer_iterate(s) -> Cint

C signature:
`int gsl_min_fminimizer_iterate (gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_iterate(s)
    ccall((:gsl_min_fminimizer_iterate, libgsl), Cint, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_name(s)
    ccall((:gsl_min_fminimizer_name, libgsl), Ptr{Cchar}, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_x_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_minimum (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_x_minimum(s)
    ccall((:gsl_min_fminimizer_x_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_x_lower(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_lower (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_x_lower(s)
    ccall((:gsl_min_fminimizer_x_lower, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_x_upper(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_x_upper (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_x_upper(s)
    ccall((:gsl_min_fminimizer_x_upper, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_f_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_minimum (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_f_minimum(s)
    ccall((:gsl_min_fminimizer_f_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_f_lower(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_lower (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_f_lower(s)
    ccall((:gsl_min_fminimizer_f_lower, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_f_upper(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_f_upper (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_f_upper(s)
    ccall((:gsl_min_fminimizer_f_upper, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_fminimizer_minimum(s) -> Cdouble

C signature:
`double gsl_min_fminimizer_minimum (const gsl_min_fminimizer * s)`
"""
function gsl_min_fminimizer_minimum(s)
    ccall((:gsl_min_fminimizer_minimum, libgsl), Cdouble, (Ptr{gsl_min_fminimizer},), s)
end

"""
    gsl_min_test_interval(x_lower, x_upper, epsabs, epsrel) -> Cint

C signature:
`int gsl_min_test_interval (double x_lower, double x_upper, double epsabs, double epsrel)`
"""
function gsl_min_test_interval(x_lower, x_upper, epsabs, epsrel)
    ccall((:gsl_min_test_interval, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel)
end

"""
    gsl_min_find_bracket(f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max) -> Cint

C signature:
`int gsl_min_find_bracket(gsl_function *f,double *x_minimum,double * f_minimum, double *x_lower, double * f_lower, double *x_upper, double * f_upper, size_t eval_max)`
"""
function gsl_min_find_bracket(f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max)
    ccall((:gsl_min_find_bracket, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), f, x_minimum, f_minimum, x_lower, f_lower, x_upper, f_upper, eval_max)
end

