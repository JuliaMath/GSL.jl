#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_elementary.h ######################################################


@doc md"""
    sf_multiply_e(x, y, result) -> Cint

C signature:
`int gsl_sf_multiply_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_multiply_e(x, y, result)
    ccall((:gsl_sf_multiply_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

@doc md"""
    sf_multiply(x, y) -> Cdouble

C signature:
`double gsl_sf_multiply(const double x, const double y)`

GSL documentation:

### `double gsl_sf_multiply (double x, double y)`

> int gsl\_sf\_multiply\_e (double x, double y, gsl\_sf\_result \*
> result)

> This function multiplies `x` and `y` storing the product and its
> associated error in `result`.

"""
function sf_multiply(x, y)
    ccall((:gsl_sf_multiply, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    sf_multiply_err_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_multiply_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_multiply_err_e (double x, double dx, double y, double dy, gsl_sf_result * result)`

> This function multiplies `x` and `y` with associated absolute errors
> `dx` and `dy`. The product $xy \pm xy \sqrt{(dx/x)^2 +(dy/y)^2}$ is
> stored in `result`.

"""
function sf_multiply_err_e(x, dx, y, dy, result)
    ccall((:gsl_sf_multiply_err_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result)
end

