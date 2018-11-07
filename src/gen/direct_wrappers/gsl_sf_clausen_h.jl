#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_clausen.h #########################################################


@doc md"""
    sf_clausen_e(x, result) -> Cint

C signature:
`int gsl_sf_clausen_e(double x, gsl_sf_result * result)`
"""
function sf_clausen_e(x, result)
    ccall((:gsl_sf_clausen_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_clausen(x) -> Cdouble

C signature:
`double gsl_sf_clausen(const double x)`

GSL documentation:

### `double gsl_sf_clausen (double x)`

> int gsl\_sf\_clausen\_e (double x, gsl\_sf\_result \* result)

"""
function sf_clausen(x)
    ccall((:gsl_sf_clausen, libgsl), Cdouble, (Cdouble,), x)
end

