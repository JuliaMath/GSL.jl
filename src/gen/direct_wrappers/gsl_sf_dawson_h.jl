#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_dawson.h ##########################################################


@doc md"""
    sf_dawson_e(x, result) -> Cint

C signature:
`int gsl_sf_dawson_e(double x, gsl_sf_result * result)`
"""
function sf_dawson_e(x, result)
    ccall((:gsl_sf_dawson_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_dawson(x) -> Cdouble

C signature:
`double gsl_sf_dawson(double x)`

GSL documentation:

### `double gsl_sf_dawson (double x)`

> int gsl\_sf\_dawson\_e (double x, gsl\_sf\_result \* result)

> These routines compute the value of Dawson's integral for `x`.

"""
function sf_dawson(x)
    ccall((:gsl_sf_dawson, libgsl), Cdouble, (Cdouble,), x)
end

