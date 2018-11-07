#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_debye.h ###########################################################


@doc md"""
    sf_debye_1_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_1_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_1_e(x, result)
    ccall((:gsl_sf_debye_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_1(x) -> Cdouble

C signature:
`double gsl_sf_debye_1(const double x)`

GSL documentation:

### `double gsl_sf_debye_1 (double x)`

> int gsl\_sf\_debye\_1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the first-order Debye function $D_1(x)$.

"""
function sf_debye_1(x)
    ccall((:gsl_sf_debye_1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_debye_2_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_2_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_2_e(x, result)
    ccall((:gsl_sf_debye_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_2(x) -> Cdouble

C signature:
`double gsl_sf_debye_2(const double x)`

GSL documentation:

### `double gsl_sf_debye_2 (double x)`

> int gsl\_sf\_debye\_2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the second-order Debye function $D_2(x)$.

"""
function sf_debye_2(x)
    ccall((:gsl_sf_debye_2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_debye_3_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_3_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_3_e(x, result)
    ccall((:gsl_sf_debye_3_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_3(x) -> Cdouble

C signature:
`double gsl_sf_debye_3(const double x)`

GSL documentation:

### `double gsl_sf_debye_3 (double x)`

> int gsl\_sf\_debye\_3\_e (double x, gsl\_sf\_result \* result)

> These routines compute the third-order Debye function $D_3(x)$.

"""
function sf_debye_3(x)
    ccall((:gsl_sf_debye_3, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_debye_4_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_4_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_4_e(x, result)
    ccall((:gsl_sf_debye_4_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_4(x) -> Cdouble

C signature:
`double gsl_sf_debye_4(const double x)`

GSL documentation:

### `double gsl_sf_debye_4 (double x)`

> int gsl\_sf\_debye\_4\_e (double x, gsl\_sf\_result \* result)

> These routines compute the fourth-order Debye function $D_4(x)$.

"""
function sf_debye_4(x)
    ccall((:gsl_sf_debye_4, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_debye_5_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_5_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_5_e(x, result)
    ccall((:gsl_sf_debye_5_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_5(x) -> Cdouble

C signature:
`double gsl_sf_debye_5(const double x)`

GSL documentation:

### `double gsl_sf_debye_5 (double x)`

> int gsl\_sf\_debye\_5\_e (double x, gsl\_sf\_result \* result)

> These routines compute the fifth-order Debye function $D_5(x)$.

"""
function sf_debye_5(x)
    ccall((:gsl_sf_debye_5, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_debye_6_e(x, result) -> Cint

C signature:
`int gsl_sf_debye_6_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_6_e(x, result)
    ccall((:gsl_sf_debye_6_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_debye_6(x) -> Cdouble

C signature:
`double gsl_sf_debye_6(const double x)`

GSL documentation:

### `double gsl_sf_debye_6 (double x)`

> int gsl\_sf\_debye\_6\_e (double x, gsl\_sf\_result \* result)

> These routines compute the sixth-order Debye function $D_6(x)$.

"""
function sf_debye_6(x)
    ccall((:gsl_sf_debye_6, libgsl), Cdouble, (Cdouble,), x)
end

