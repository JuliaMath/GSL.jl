#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_pow_int.h ############################################################


@doc md"""
    pow_2(x) -> Cdouble

C signature:
`double gsl_pow_2(const double x)`
"""
function pow_2(x)
    ccall((:gsl_pow_2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_3(x) -> Cdouble

C signature:
`double gsl_pow_3(const double x)`
"""
function pow_3(x)
    ccall((:gsl_pow_3, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_4(x) -> Cdouble

C signature:
`double gsl_pow_4(const double x)`
"""
function pow_4(x)
    ccall((:gsl_pow_4, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_5(x) -> Cdouble

C signature:
`double gsl_pow_5(const double x)`
"""
function pow_5(x)
    ccall((:gsl_pow_5, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_6(x) -> Cdouble

C signature:
`double gsl_pow_6(const double x)`
"""
function pow_6(x)
    ccall((:gsl_pow_6, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_7(x) -> Cdouble

C signature:
`double gsl_pow_7(const double x)`
"""
function pow_7(x)
    ccall((:gsl_pow_7, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_8(x) -> Cdouble

C signature:
`double gsl_pow_8(const double x)`
"""
function pow_8(x)
    ccall((:gsl_pow_8, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_9(x) -> Cdouble

C signature:
`double gsl_pow_9(const double x)`
"""
function pow_9(x)
    ccall((:gsl_pow_9, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    pow_uint(x, n) -> Cdouble

C signature:
`double gsl_pow_uint(double x, unsigned int n)`
"""
function pow_uint(x, n)
    ccall((:gsl_pow_uint, libgsl), Cdouble, (Cdouble, Cuint), x, n)
end

