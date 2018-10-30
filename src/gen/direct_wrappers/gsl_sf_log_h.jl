#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_log.h #############################################################


"""
    gsl_sf_log_e(x, result) -> Cint

C signature:
`int gsl_sf_log_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_log_e(x, result)
    ccall((:gsl_sf_log_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_log(x) -> Cdouble

C signature:
`double gsl_sf_log(const double x)`
"""
function gsl_sf_log(x)
    ccall((:gsl_sf_log, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_log_abs_e(x, result) -> Cint

C signature:
`int gsl_sf_log_abs_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_log_abs_e(x, result)
    ccall((:gsl_sf_log_abs_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_log_abs(x) -> Cdouble

C signature:
`double gsl_sf_log_abs(const double x)`
"""
function gsl_sf_log_abs(x)
    ccall((:gsl_sf_log_abs, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_complex_log_e(zr, zi, lnr, theta) -> Cint

C signature:
`int gsl_sf_complex_log_e(const double zr, const double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`
"""
function gsl_sf_complex_log_e(zr, zi, lnr, theta)
    ccall((:gsl_sf_complex_log_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lnr, theta)
end

"""
    gsl_sf_log_1plusx_e(x, result) -> Cint

C signature:
`int gsl_sf_log_1plusx_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_log_1plusx_e(x, result)
    ccall((:gsl_sf_log_1plusx_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_log_1plusx(x) -> Cdouble

C signature:
`double gsl_sf_log_1plusx(const double x)`
"""
function gsl_sf_log_1plusx(x)
    ccall((:gsl_sf_log_1plusx, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_log_1plusx_mx_e(x, result) -> Cint

C signature:
`int gsl_sf_log_1plusx_mx_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_log_1plusx_mx_e(x, result)
    ccall((:gsl_sf_log_1plusx_mx_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_log_1plusx_mx(x) -> Cdouble

C signature:
`double gsl_sf_log_1plusx_mx(const double x)`
"""
function gsl_sf_log_1plusx_mx(x)
    ccall((:gsl_sf_log_1plusx_mx, libgsl), Cdouble, (Cdouble,), x)
end

