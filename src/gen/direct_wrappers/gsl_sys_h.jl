#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sys.h ################################################################


"""
    gsl_log1p(x) -> Cdouble

C signature:
`double gsl_log1p (const double x)`
"""
function gsl_log1p(x)
    ccall((:gsl_log1p, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_expm1(x) -> Cdouble

C signature:
`double gsl_expm1 (const double x)`
"""
function gsl_expm1(x)
    ccall((:gsl_expm1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_hypot(x, y) -> Cdouble

C signature:
`double gsl_hypot (const double x, const double y)`
"""
function gsl_hypot(x, y)
    ccall((:gsl_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

"""
    gsl_hypot3(x, y, z) -> Cdouble

C signature:
`double gsl_hypot3 (const double x, const double y, const double z)`
"""
function gsl_hypot3(x, y, z)
    ccall((:gsl_hypot3, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, y, z)
end

"""
    gsl_acosh(x) -> Cdouble

C signature:
`double gsl_acosh (const double x)`
"""
function gsl_acosh(x)
    ccall((:gsl_acosh, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_asinh(x) -> Cdouble

C signature:
`double gsl_asinh (const double x)`
"""
function gsl_asinh(x)
    ccall((:gsl_asinh, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_atanh(x) -> Cdouble

C signature:
`double gsl_atanh (const double x)`
"""
function gsl_atanh(x)
    ccall((:gsl_atanh, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_isnan(x) -> Cint

C signature:
`int gsl_isnan (const double x)`
"""
function gsl_isnan(x)
    ccall((:gsl_isnan, libgsl), Cint, (Cdouble,), x)
end

"""
    gsl_isinf(x) -> Cint

C signature:
`int gsl_isinf (const double x)`
"""
function gsl_isinf(x)
    ccall((:gsl_isinf, libgsl), Cint, (Cdouble,), x)
end

"""
    gsl_finite(x) -> Cint

C signature:
`int gsl_finite (const double x)`
"""
function gsl_finite(x)
    ccall((:gsl_finite, libgsl), Cint, (Cdouble,), x)
end

"""
    gsl_nan() -> Cdouble

C signature:
`double gsl_nan (void)`
"""
function gsl_nan()
    ccall((:gsl_nan, libgsl), Cdouble, (), )
end

"""
    gsl_posinf() -> Cdouble

C signature:
`double gsl_posinf (void)`
"""
function gsl_posinf()
    ccall((:gsl_posinf, libgsl), Cdouble, (), )
end

"""
    gsl_neginf() -> Cdouble

C signature:
`double gsl_neginf (void)`
"""
function gsl_neginf()
    ccall((:gsl_neginf, libgsl), Cdouble, (), )
end

"""
    gsl_fdiv(x, y) -> Cdouble

C signature:
`double gsl_fdiv (const double x, const double y)`
"""
function gsl_fdiv(x, y)
    ccall((:gsl_fdiv, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

"""
    gsl_coerce_double(x) -> Cdouble

C signature:
`double gsl_coerce_double (const double x)`
"""
function gsl_coerce_double(x)
    ccall((:gsl_coerce_double, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_coerce_float(x) -> Cfloat

C signature:
`float gsl_coerce_float (const float x)`
"""
function gsl_coerce_float(x)
    ccall((:gsl_coerce_float, libgsl), Cfloat, (Cfloat,), x)
end

"""
    gsl_coerce_long_double(x) -> Cdouble

C signature:
`long double gsl_coerce_long_double (const long double x)`
"""
function gsl_coerce_long_double(x)
    ccall((:gsl_coerce_long_double, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_ldexp(x, e) -> Cdouble

C signature:
`double gsl_ldexp(const double x, const int e)`
"""
function gsl_ldexp(x, e)
    ccall((:gsl_ldexp, libgsl), Cdouble, (Cdouble, Cint), x, e)
end

"""
    gsl_frexp(x, e) -> Cdouble

C signature:
`double gsl_frexp(const double x, int * e)`
"""
function gsl_frexp(x, e)
    ccall((:gsl_frexp, libgsl), Cdouble, (Cdouble, Ref{Cint}), x, e)
end

"""
    gsl_fcmp(x1, x2, epsilon) -> Cint

C signature:
`int gsl_fcmp (const double x1, const double x2, const double epsilon)`
"""
function gsl_fcmp(x1, x2, epsilon)
    ccall((:gsl_fcmp, libgsl), Cint, (Cdouble, Cdouble, Cdouble), x1, x2, epsilon)
end

