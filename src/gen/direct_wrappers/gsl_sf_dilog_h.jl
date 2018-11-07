#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_dilog.h ###########################################################


@doc md"""
    sf_dilog_e(x, result) -> Cint

C signature:
`int gsl_sf_dilog_e(const double x, gsl_sf_result * result)`
"""
function sf_dilog_e(x, result)
    ccall((:gsl_sf_dilog_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_dilog(x) -> Cdouble

C signature:
`double gsl_sf_dilog(const double x)`

GSL documentation:

### `double gsl_sf_dilog (double x)`

> int gsl\_sf\_dilog\_e (double x, gsl\_sf\_result \* result)

> These routines compute the dilogarithm for a real argument. In Lewin's
> notation this is $Li_2(x)$, the real part of the dilogarithm of a real
> $x$. It is defined by the integral representation
>
> $$Li_2(x) = - \Re \int_0^x ds \log(1-s) / s$$
>
> Note that $\Im(Li_2(x)) = 0$ for $x \le 1$, and $-\pi\log(x)$ for
> $x > 1$.
>
> Note that Abramowitz & Stegun refer to the Spence integral
> $S(x) = Li_2(1 - x)$ as the dilogarithm rather than $Li_2(x)$.

"""
function sf_dilog(x)
    ccall((:gsl_sf_dilog, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_complex_dilog_xy_e(x, y, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_dilog_xy_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_dilog_xy_e(x, y, result_re, result_im)
    ccall((:gsl_sf_complex_dilog_xy_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, result_re, result_im)
end

@doc md"""
    sf_complex_dilog_e(r, theta, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_dilog_e( const double r, const double theta, gsl_sf_result * result_re, gsl_sf_result * result_im )`

GSL documentation:

### `int gsl_sf_complex_dilog_e (double r, double theta, gsl_sf_result * result_re, gsl_sf_result * result_im)`

> This function computes the full complex-valued dilogarithm for the
> complex argument $z = r \exp(i \theta)$. The real and imaginary

"""
function sf_complex_dilog_e(r, theta, result_re, result_im)
    ccall((:gsl_sf_complex_dilog_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), r, theta, result_re, result_im)
end

@doc md"""
    sf_complex_spence_xy_e(x, y, real_sp, imag_sp) -> Cint

C signature:
`int gsl_sf_complex_spence_xy_e( const double x, const double y, gsl_sf_result * real_sp, gsl_sf_result * imag_sp )`
"""
function sf_complex_spence_xy_e(x, y, real_sp, imag_sp)
    ccall((:gsl_sf_complex_spence_xy_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, real_sp, imag_sp)
end

