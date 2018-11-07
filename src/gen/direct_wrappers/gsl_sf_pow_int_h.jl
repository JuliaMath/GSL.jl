#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_pow_int.h #########################################################


@doc md"""
    sf_pow_int_e(x, n, result) -> Cint

C signature:
`int gsl_sf_pow_int_e(double x, int n, gsl_sf_result * result)`
"""
function sf_pow_int_e(x, n, result)
    ccall((:gsl_sf_pow_int_e, libgsl), Cint, (Cdouble, Cint, Ref{gsl_sf_result}), x, n, result)
end

@doc md"""
    sf_pow_int(x, n) -> Cdouble

C signature:
`double gsl_sf_pow_int(const double x, const int n)`

GSL documentation:

### `double gsl_sf_pow_int (double x, int n)`

> int gsl\_sf\_pow\_int\_e (double x, int n, gsl\_sf\_result \* result)

> These routines compute the power $x^n$ for integer `n`. The power is
> computed using the minimum number of multiplications. For example,
> $x^8$ is computed as $((x^2)^2)^2$, requiring only 3 multiplications.
> For reasons of efficiency, these functions do not check for overflow
> or underflow conditions. The following is a simple example:
>
>     #include <gsl/gsl_sf_pow_int.h>
>     /* compute 3.0**12 */

"""
function sf_pow_int(x, n)
    ccall((:gsl_sf_pow_int, libgsl), Cdouble, (Cdouble, Cint), x, n)
end

