#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_fit.h ################################################################


@doc md"""
    fit_linear(x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_linear (const double * x, const size_t xstride, const double * y, const size_t ystride, const size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * sumsq)`

GSL documentation:

### `int gsl_fit_linear (const double * x, const size_t xstride, const double * y, const size_t ystride, size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * sumsq)`

> This function computes the best-fit linear regression coefficients
> (`c0`, `c1`) of the model $Y = c_0 + c_1 X$ for the dataset (`x`,
> `y`), two vectors of length `n` with strides `xstride` and `ystride`.
> The errors on `y` are assumed unknown so the variance-covariance
> matrix for the parameters (`c0`, `c1`) is estimated from the scatter
> of the points around the best-fit line and returned via the parameters
> (`cov00`, `cov01`, `cov11`). The sum of squares of the residuals from
> the best-fit line is returned in `sumsq`. Note: the correlation
> coefficient of the data can be computed using `gsl_stats_correlation`,
> it does not depend on the fit.

"""
function fit_linear(x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq)
    ccall((:gsl_fit_linear, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq)
end

@doc md"""
    fit_wlinear(x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq) -> Cint

C signature:
`int gsl_fit_wlinear (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, const size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * chisq)`

GSL documentation:

### `int gsl_fit_wlinear (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * chisq)`

> This function computes the best-fit linear regression coefficients
> (`c0`, `c1`) of the model $Y = c_0 + c_1 X$ for the weighted dataset
> (`x`, `y`), two vectors of length `n` with strides `xstride` and
> `ystride`. The vector `w`, of length `n` and stride `wstride`,
> specifies the weight of each datapoint. The weight is the reciprocal
> of the variance for each datapoint in `y`.
>
> The covariance matrix for the parameters (`c0`, `c1`) is computed
> using the weights and returned via the parameters (`cov00`, `cov01`,
> `cov11`). The weighted sum of squares of the residuals from the
> best-fit line, $\chi^2$, is returned in `chisq`.

"""
function fit_wlinear(x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq)
    ccall((:gsl_fit_wlinear, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq)
end

@doc md"""
    fit_linear_est(x, c0, c1, cov00, cov01, cov11, y, y_err) -> Cint

C signature:
`int gsl_fit_linear_est (const double x, const double c0, const double c1, const double cov00, const double cov01, const double cov11, double *y, double *y_err)`

GSL documentation:

### `int gsl_fit_linear_est (double x, double c0, double c1, double cov00, double cov01, double cov11, double * y, double * y_err)`

> This function uses the best-fit linear regression coefficients `c0`,
> `c1` and their covariance `cov00`, `cov01`, `cov11` to compute the
> fitted function `y` and its standard deviation `y_err` for the model
> $Y = c_0 + c_1 X$ at the point `x`.

"""
function fit_linear_est(x, c0, c1, cov00, cov01, cov11, y, y_err)
    ccall((:gsl_fit_linear_est, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c0, c1, cov00, cov01, cov11, y, y_err)
end

@doc md"""
    fit_mul(x, xstride, y, ystride, n, c1, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_mul (const double * x, const size_t xstride, const double * y, const size_t ystride, const size_t n, double * c1, double * cov11, double * sumsq)`

GSL documentation:

### `int gsl_fit_mul (const double * x, const size_t xstride, const double * y, const size_t ystride, size_t n, double * c1, double * cov11, double * sumsq)`

> This function computes the best-fit linear regression coefficient `c1`
> of the model $Y = c_1 X$ for the datasets (`x`, `y`), two vectors of
> length `n` with strides `xstride` and `ystride`. The errors on `y` are
> assumed unknown so the variance of the parameter `c1` is estimated
> from the scatter of the points around the best-fit line and returned
> via the parameter `cov11`. The sum of squares of the residuals from
> the best-fit line is returned in `sumsq`.

"""
function fit_mul(x, xstride, y, ystride, n, c1, cov11, sumsq)
    ccall((:gsl_fit_mul, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, y, ystride, n, c1, cov11, sumsq)
end

@doc md"""
    fit_wmul(x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_wmul (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, const size_t n, double * c1, double * cov11, double * sumsq)`

GSL documentation:

### `int gsl_fit_wmul (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, size_t n, double * c1, double * cov11, double * sumsq)`

> This function computes the best-fit linear regression coefficient `c1`
> of the model $Y = c_1 X$ for the weighted datasets (`x`, `y`), two
> vectors of length `n` with strides `xstride` and `ystride`. The vector
> `w`, of length `n` and stride `wstride`, specifies the weight of each
> datapoint. The weight is the reciprocal of the variance for each
> datapoint in `y`.
>
> The variance of the parameter `c1` is computed using the weights and
> returned via the parameter `cov11`. The weighted sum of squares of the
> residuals from the best-fit line, $\chi^2$, is returned in `chisq`.

"""
function fit_wmul(x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq)
    ccall((:gsl_fit_wmul, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq)
end

@doc md"""
    fit_mul_est(x, c1, cov11, y, y_err) -> Cint

C signature:
`int gsl_fit_mul_est (const double x, const double c1, const double cov11, double *y, double *y_err)`

GSL documentation:

### `int gsl_fit_mul_est (double x, double c1, double cov11, double * y, double * y_err)`

> This function uses the best-fit linear regression coefficient `c1` and
> its covariance `cov11` to compute the fitted function `y` and its
> standard deviation `y_err` for the model $Y = c_1 X$ at the point `x`.

"""
function fit_mul_est(x, c1, cov11, y, y_err)
    ccall((:gsl_fit_mul_est, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c1, cov11, y, y_err)
end

