#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_lambert.h #########################################################


@doc md"""
    sf_lambert_W0_e(x, result) -> Cint

C signature:
`int gsl_sf_lambert_W0_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_W0_e(x, result)
    ccall((:gsl_sf_lambert_W0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_lambert_W0(x) -> Cdouble

C signature:
`double gsl_sf_lambert_W0(double x)`

GSL documentation:

### `double gsl_sf_lambert_W0 (double x)`

> int gsl\_sf\_lambert\_W0\_e (double x, gsl\_sf\_result \* result)

> These compute the principal branch of the Lambert W function,
> $W_0(x)$.

"""
function sf_lambert_W0(x)
    ccall((:gsl_sf_lambert_W0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_lambert_Wm1_e(x, result) -> Cint

C signature:
`int gsl_sf_lambert_Wm1_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_Wm1_e(x, result)
    ccall((:gsl_sf_lambert_Wm1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_lambert_Wm1(x) -> Cdouble

C signature:
`double gsl_sf_lambert_Wm1(double x)`

GSL documentation:

### `double gsl_sf_lambert_Wm1 (double x)`

> int gsl\_sf\_lambert\_Wm1\_e (double x, gsl\_sf\_result \* result)

> These compute the secondary real-valued branch of the Lambert W
> function, $W_{-1}(x)$.

"""
function sf_lambert_Wm1(x)
    ccall((:gsl_sf_lambert_Wm1, libgsl), Cdouble, (Cdouble,), x)
end

