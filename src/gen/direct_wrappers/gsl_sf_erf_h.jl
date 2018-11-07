#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_erf.h #############################################################


@doc md"""
    sf_erfc_e(x, result) -> Cint

C signature:
`int gsl_sf_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_erfc_e(x, result)
    ccall((:gsl_sf_erfc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_erfc(x) -> Cdouble

C signature:
`double gsl_sf_erfc(double x)`

GSL documentation:

### `double gsl_sf_erfc (double x)`

> int gsl\_sf\_erfc\_e (double x, gsl\_sf\_result \* result)

> These routines compute the complementary error function
> $\erfc(x) = 1 - \erf(x) = (2/\sqrt{\pi}) \int_x^\infty \exp(-t^2)$

"""
function sf_erfc(x)
    ccall((:gsl_sf_erfc, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_log_erfc_e(x, result) -> Cint

C signature:
`int gsl_sf_log_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_log_erfc_e(x, result)
    ccall((:gsl_sf_log_erfc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_log_erfc(x) -> Cdouble

C signature:
`double gsl_sf_log_erfc(double x)`

GSL documentation:

### `double gsl_sf_log_erfc (double x)`

> int gsl\_sf\_log\_erfc\_e (double x, gsl\_sf\_result \* result)

> These routines compute the logarithm of the complementary error
> function $\log(\erfc(x))$.

"""
function sf_log_erfc(x)
    ccall((:gsl_sf_log_erfc, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_erf_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_e(double x, gsl_sf_result * result)`
"""
function sf_erf_e(x, result)
    ccall((:gsl_sf_erf_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_erf(x) -> Cdouble

C signature:
`double gsl_sf_erf(double x)`

GSL documentation:

### `double gsl_sf_erf (double x)`

> int gsl\_sf\_erf\_e (double x, gsl\_sf\_result \* result)

> These routines compute the error function $\erf(x)$, where
> $\erf(x) = (2/\sqrt{\pi}) \int_0^x dt \exp(-t^2)$.

"""
function sf_erf(x)
    ccall((:gsl_sf_erf, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_erf_Z_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Z_e(x, result)
    ccall((:gsl_sf_erf_Z_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_erf_Q_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_Q_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Q_e(x, result)
    ccall((:gsl_sf_erf_Q_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_erf_Z(x) -> Cdouble

C signature:
`double gsl_sf_erf_Z(double x)`

GSL documentation:

### `double gsl_sf_erf_Z (double x)`

> int gsl\_sf\_erf\_Z\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Gaussian probability density function
> $Z(x) = (1/\sqrt{2\pi}) \exp(-x^2/2)$

"""
function sf_erf_Z(x)
    ccall((:gsl_sf_erf_Z, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_erf_Q(x) -> Cdouble

C signature:
`double gsl_sf_erf_Q(double x)`

GSL documentation:

### `double gsl_sf_erf_Q (double x)`

> int gsl\_sf\_erf\_Q\_e (double x, gsl\_sf\_result \* result)

> These routines compute the upper tail of the Gaussian probability
> function $Q(x) = (1/\sqrt{2\pi}) \int_x^\infty dt \exp(-t^2/2)$

"""
function sf_erf_Q(x)
    ccall((:gsl_sf_erf_Q, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_hazard_e(x, result) -> Cint

C signature:
`int gsl_sf_hazard_e(double x, gsl_sf_result * result)`
"""
function sf_hazard_e(x, result)
    ccall((:gsl_sf_hazard_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_hazard(x) -> Cdouble

C signature:
`double gsl_sf_hazard(double x)`

GSL documentation:

### `double gsl_sf_hazard (double x)`

> int gsl\_sf\_hazard\_e (double x, gsl\_sf\_result \* result)

> These routines compute the hazard function for the normal
> distribution.

"""
function sf_hazard(x)
    ccall((:gsl_sf_hazard, libgsl), Cdouble, (Cdouble,), x)
end

