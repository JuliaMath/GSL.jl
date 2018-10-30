#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_fit.h ################################################################


"""
    gsl_fit_linear(x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_linear (const double * x, const size_t xstride, const double * y, const size_t ystride, const size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * sumsq)`
"""
function gsl_fit_linear(x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq)
    ccall((:gsl_fit_linear, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, y, ystride, n, c0, c1, cov00, cov01, cov11, sumsq)
end

"""
    gsl_fit_wlinear(x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq) -> Cint

C signature:
`int gsl_fit_wlinear (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, const size_t n, double * c0, double * c1, double * cov00, double * cov01, double * cov11, double * chisq)`
"""
function gsl_fit_wlinear(x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq)
    ccall((:gsl_fit_wlinear, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c0, c1, cov00, cov01, cov11, chisq)
end

"""
    gsl_fit_linear_est(x, c0, c1, cov00, cov01, cov11, y, y_err) -> Cint

C signature:
`int gsl_fit_linear_est (const double x, const double c0, const double c1, const double cov00, const double cov01, const double cov11, double *y, double *y_err)`
"""
function gsl_fit_linear_est(x, c0, c1, cov00, cov01, cov11, y, y_err)
    ccall((:gsl_fit_linear_est, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c0, c1, cov00, cov01, cov11, y, y_err)
end

"""
    gsl_fit_mul(x, xstride, y, ystride, n, c1, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_mul (const double * x, const size_t xstride, const double * y, const size_t ystride, const size_t n, double * c1, double * cov11, double * sumsq)`
"""
function gsl_fit_mul(x, xstride, y, ystride, n, c1, cov11, sumsq)
    ccall((:gsl_fit_mul, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, y, ystride, n, c1, cov11, sumsq)
end

"""
    gsl_fit_wmul(x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq) -> Cint

C signature:
`int gsl_fit_wmul (const double * x, const size_t xstride, const double * w, const size_t wstride, const double * y, const size_t ystride, const size_t n, double * c1, double * cov11, double * sumsq)`
"""
function gsl_fit_wmul(x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq)
    ccall((:gsl_fit_wmul, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), x, xstride, w, wstride, y, ystride, n, c1, cov11, sumsq)
end

"""
    gsl_fit_mul_est(x, c1, cov11, y, y_err) -> Cint

C signature:
`int gsl_fit_mul_est (const double x, const double c1, const double cov11, double *y, double *y_err)`
"""
function gsl_fit_mul_est(x, c1, cov11, y, y_err)
    ccall((:gsl_fit_mul_est, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), x, c1, cov11, y, y_err)
end

