#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_dilog.h ###########################################################


"""
    gsl_sf_dilog_e(x, result) -> Cint

C signature:
`int gsl_sf_dilog_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_dilog_e(x, result)
    ccall((:gsl_sf_dilog_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_dilog(x) -> Cdouble

C signature:
`double gsl_sf_dilog(const double x)`
"""
function gsl_sf_dilog(x)
    ccall((:gsl_sf_dilog, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_complex_dilog_xy_e(x, y, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_dilog_xy_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function gsl_sf_complex_dilog_xy_e(x, y, result_re, result_im)
    ccall((:gsl_sf_complex_dilog_xy_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, result_re, result_im)
end

"""
    gsl_sf_complex_dilog_e(r, theta, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_dilog_e( const double r, const double theta, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function gsl_sf_complex_dilog_e(r, theta, result_re, result_im)
    ccall((:gsl_sf_complex_dilog_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), r, theta, result_re, result_im)
end

"""
    gsl_sf_complex_spence_xy_e(x, y, real_sp, imag_sp) -> Cint

C signature:
`int gsl_sf_complex_spence_xy_e( const double x, const double y, gsl_sf_result * real_sp, gsl_sf_result * imag_sp )`
"""
function gsl_sf_complex_spence_xy_e(x, y, real_sp, imag_sp)
    ccall((:gsl_sf_complex_spence_xy_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, real_sp, imag_sp)
end

