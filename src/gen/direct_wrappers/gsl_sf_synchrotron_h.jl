#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_synchrotron.h #####################################################


@doc md"""
    sf_synchrotron_1_e(x, result) -> Cint

C signature:
`int gsl_sf_synchrotron_1_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_1_e(x, result)
    ccall((:gsl_sf_synchrotron_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_synchrotron_1(x) -> Cdouble

C signature:
`double gsl_sf_synchrotron_1(const double x)`

GSL documentation:

### `double gsl_sf_synchrotron_1 (double x)`

> int gsl\_sf\_synchrotron\_1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the first synchrotron function
> $x \int_x^\infty dt K_{5/3}(t)$ for $x \ge 0$.

"""
function sf_synchrotron_1(x)
    ccall((:gsl_sf_synchrotron_1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_synchrotron_2_e(x, result) -> Cint

C signature:
`int gsl_sf_synchrotron_2_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_2_e(x, result)
    ccall((:gsl_sf_synchrotron_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_synchrotron_2(x) -> Cdouble

C signature:
`double gsl_sf_synchrotron_2(const double x)`

GSL documentation:

### `double gsl_sf_synchrotron_2 (double x)`

> int gsl\_sf\_synchrotron\_2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the second synchrotron function $x K_{2/3}(x)$
> for $x \ge 0$.

"""
function sf_synchrotron_2(x)
    ccall((:gsl_sf_synchrotron_2, libgsl), Cdouble, (Cdouble,), x)
end

