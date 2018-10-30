#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_trig.h ############################################################


"""
    gsl_sf_sin_e(x, result) -> Cint

C signature:
`int gsl_sf_sin_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_sin_e(x, result)
    ccall((:gsl_sf_sin_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_sin(x) -> Cdouble

C signature:
`double gsl_sf_sin(const double x)`
"""
function gsl_sf_sin(x)
    ccall((:gsl_sf_sin, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_cos_e(x, result) -> Cint

C signature:
`int gsl_sf_cos_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_cos_e(x, result)
    ccall((:gsl_sf_cos_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_cos(x) -> Cdouble

C signature:
`double gsl_sf_cos(const double x)`
"""
function gsl_sf_cos(x)
    ccall((:gsl_sf_cos, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_hypot_e(x, y, result) -> Cint

C signature:
`int gsl_sf_hypot_e(const double x, const double y, gsl_sf_result * result)`
"""
function gsl_sf_hypot_e(x, y, result)
    ccall((:gsl_sf_hypot_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

"""
    gsl_sf_hypot(x, y) -> Cdouble

C signature:
`double gsl_sf_hypot(const double x, const double y)`
"""
function gsl_sf_hypot(x, y)
    ccall((:gsl_sf_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

"""
    gsl_sf_complex_sin_e(zr, zi, szr, szi) -> Cint

C signature:
`int gsl_sf_complex_sin_e(const double zr, const double zi, gsl_sf_result * szr, gsl_sf_result * szi)`
"""
function gsl_sf_complex_sin_e(zr, zi, szr, szi)
    ccall((:gsl_sf_complex_sin_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, szr, szi)
end

"""
    gsl_sf_complex_cos_e(zr, zi, czr, czi) -> Cint

C signature:
`int gsl_sf_complex_cos_e(const double zr, const double zi, gsl_sf_result * czr, gsl_sf_result * czi)`
"""
function gsl_sf_complex_cos_e(zr, zi, czr, czi)
    ccall((:gsl_sf_complex_cos_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, czr, czi)
end

"""
    gsl_sf_complex_logsin_e(zr, zi, lszr, lszi) -> Cint

C signature:
`int gsl_sf_complex_logsin_e(const double zr, const double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`
"""
function gsl_sf_complex_logsin_e(zr, zi, lszr, lszi)
    ccall((:gsl_sf_complex_logsin_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lszr, lszi)
end

"""
    gsl_sf_sinc_e(x, result) -> Cint

C signature:
`int gsl_sf_sinc_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_sinc_e(x, result)
    ccall((:gsl_sf_sinc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_sinc(x) -> Cdouble

C signature:
`double gsl_sf_sinc(const double x)`
"""
function gsl_sf_sinc(x)
    ccall((:gsl_sf_sinc, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_lnsinh_e(x, result) -> Cint

C signature:
`int gsl_sf_lnsinh_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_lnsinh_e(x, result)
    ccall((:gsl_sf_lnsinh_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_lnsinh(x) -> Cdouble

C signature:
`double gsl_sf_lnsinh(const double x)`
"""
function gsl_sf_lnsinh(x)
    ccall((:gsl_sf_lnsinh, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_lncosh_e(x, result) -> Cint

C signature:
`int gsl_sf_lncosh_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_lncosh_e(x, result)
    ccall((:gsl_sf_lncosh_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_lncosh(x) -> Cdouble

C signature:
`double gsl_sf_lncosh(const double x)`
"""
function gsl_sf_lncosh(x)
    ccall((:gsl_sf_lncosh, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_polar_to_rect(r, theta, x, y) -> Cint

C signature:
`int gsl_sf_polar_to_rect(const double r, const double theta, gsl_sf_result * x, gsl_sf_result * y)`
"""
function gsl_sf_polar_to_rect(r, theta, x, y)
    ccall((:gsl_sf_polar_to_rect, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), r, theta, x, y)
end

"""
    gsl_sf_rect_to_polar(x, y, r, theta) -> Cint

C signature:
`int gsl_sf_rect_to_polar(const double x, const double y, gsl_sf_result * r, gsl_sf_result * theta)`
"""
function gsl_sf_rect_to_polar(x, y, r, theta)
    ccall((:gsl_sf_rect_to_polar, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, r, theta)
end

"""
    gsl_sf_sin_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_sin_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function gsl_sf_sin_err_e(x, dx, result)
    ccall((:gsl_sf_sin_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

"""
    gsl_sf_cos_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_cos_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function gsl_sf_cos_err_e(x, dx, result)
    ccall((:gsl_sf_cos_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

"""
    gsl_sf_angle_restrict_symm_e(theta) -> Cint

C signature:
`int gsl_sf_angle_restrict_symm_e(double * theta)`
"""
function gsl_sf_angle_restrict_symm_e(theta)
    ccall((:gsl_sf_angle_restrict_symm_e, libgsl), Cint, (Ptr{Cdouble},), theta)
end

"""
    gsl_sf_angle_restrict_symm(theta) -> Cdouble

C signature:
`double gsl_sf_angle_restrict_symm(const double theta)`
"""
function gsl_sf_angle_restrict_symm(theta)
    ccall((:gsl_sf_angle_restrict_symm, libgsl), Cdouble, (Cdouble,), theta)
end

"""
    gsl_sf_angle_restrict_pos_e(theta) -> Cint

C signature:
`int gsl_sf_angle_restrict_pos_e(double * theta)`
"""
function gsl_sf_angle_restrict_pos_e(theta)
    ccall((:gsl_sf_angle_restrict_pos_e, libgsl), Cint, (Ptr{Cdouble},), theta)
end

"""
    gsl_sf_angle_restrict_pos(theta) -> Cdouble

C signature:
`double gsl_sf_angle_restrict_pos(const double theta)`
"""
function gsl_sf_angle_restrict_pos(theta)
    ccall((:gsl_sf_angle_restrict_pos, libgsl), Cdouble, (Cdouble,), theta)
end

"""
    gsl_sf_angle_restrict_symm_err_e(theta, result) -> Cint

C signature:
`int gsl_sf_angle_restrict_symm_err_e(const double theta, gsl_sf_result * result)`
"""
function gsl_sf_angle_restrict_symm_err_e(theta, result)
    ccall((:gsl_sf_angle_restrict_symm_err_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), theta, result)
end

"""
    gsl_sf_angle_restrict_pos_err_e(theta, result) -> Cint

C signature:
`int gsl_sf_angle_restrict_pos_err_e(const double theta, gsl_sf_result * result)`
"""
function gsl_sf_angle_restrict_pos_err_e(theta, result)
    ccall((:gsl_sf_angle_restrict_pos_err_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), theta, result)
end

