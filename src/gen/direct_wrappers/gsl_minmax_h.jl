#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_minmax.h #############################################################


@doc md"""
    GSL_MAX_INT(a, b) -> Cint

C signature:
`int GSL_MAX_INT (int a, int b)`
"""
function GSL_MAX_INT(a, b)
    ccall((:GSL_MAX_INT, libgsl), Cint, (Cint, Cint), a, b)
end

@doc md"""
    GSL_MIN_INT(a, b) -> Cint

C signature:
`int GSL_MIN_INT (int a, int b)`
"""
function GSL_MIN_INT(a, b)
    ccall((:GSL_MIN_INT, libgsl), Cint, (Cint, Cint), a, b)
end

@doc md"""
    GSL_MAX_DBL(a, b) -> Cdouble

C signature:
`double GSL_MAX_DBL (double a, double b)`

GSL documentation:

### `extern inline double GSL_MAX_DBL (double a, double b)`

> This function returns the maximum of the double precision numbers `a`
> and `b` using an inline function. The use of a function allows for
> type checking of the arguments as an extra safety feature. On
> platforms where inline functions are not available the macro `GSL_MAX`
> will be automatically substituted.

"""
function GSL_MAX_DBL(a, b)
    ccall((:GSL_MAX_DBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

@doc md"""
    GSL_MIN_DBL(a, b) -> Cdouble

C signature:
`double GSL_MIN_DBL (double a, double b)`

GSL documentation:

### `extern inline double GSL_MIN_DBL (double a, double b)`

> This function returns the minimum of the double precision numbers `a`
> and `b` using an inline function. The use of a function allows for
> type checking of the arguments as an extra safety feature. On
> platforms where inline functions are not available the macro `GSL_MIN`
> will be automatically substituted.

"""
function GSL_MIN_DBL(a, b)
    ccall((:GSL_MIN_DBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

@doc md"""
    GSL_MAX_LDBL(a, b) -> Cdouble

C signature:
`long double GSL_MAX_LDBL (long double a, long double b)`
"""
function GSL_MAX_LDBL(a, b)
    ccall((:GSL_MAX_LDBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

@doc md"""
    GSL_MIN_LDBL(a, b) -> Cdouble

C signature:
`long double GSL_MIN_LDBL (long double a, long double b)`
"""
function GSL_MIN_LDBL(a, b)
    ccall((:GSL_MIN_LDBL, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

