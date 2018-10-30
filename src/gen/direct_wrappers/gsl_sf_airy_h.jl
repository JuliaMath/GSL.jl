#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_airy.h ############################################################


"""
    gsl_sf_airy_Ai_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_e(const double x, const gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Ai_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Ai(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Ai(x, mode)
    ccall((:gsl_sf_airy_Ai, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Bi_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Bi_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Bi(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Bi(x, mode)
    ccall((:gsl_sf_airy_Bi, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Ai_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Ai_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Ai_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_scaled(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Ai_scaled(x, mode)
    ccall((:gsl_sf_airy_Ai_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Bi_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Bi_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Bi_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_scaled(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Bi_scaled(x, mode)
    ccall((:gsl_sf_airy_Bi_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Ai_deriv_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Ai_deriv_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_deriv_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Ai_deriv(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_deriv(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Ai_deriv(x, mode)
    ccall((:gsl_sf_airy_Ai_deriv, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Bi_deriv_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Bi_deriv_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_deriv_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Bi_deriv(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_deriv(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Bi_deriv(x, mode)
    ccall((:gsl_sf_airy_Bi_deriv, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Ai_deriv_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Ai_deriv_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_deriv_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Ai_deriv_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_deriv_scaled(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Ai_deriv_scaled(x, mode)
    ccall((:gsl_sf_airy_Ai_deriv_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_Bi_deriv_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_airy_Bi_deriv_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_deriv_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

"""
    gsl_sf_airy_Bi_deriv_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_deriv_scaled(const double x, gsl_mode_t mode)`
"""
function gsl_sf_airy_Bi_deriv_scaled(x, mode)
    ccall((:gsl_sf_airy_Bi_deriv_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

"""
    gsl_sf_airy_zero_Ai_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Ai_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_airy_zero_Ai_e(s, result)
    ccall((:gsl_sf_airy_zero_Ai_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_airy_zero_Ai(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Ai(unsigned int s)`
"""
function gsl_sf_airy_zero_Ai(s)
    ccall((:gsl_sf_airy_zero_Ai, libgsl), Cdouble, (Cuint,), s)
end

"""
    gsl_sf_airy_zero_Bi_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Bi_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_airy_zero_Bi_e(s, result)
    ccall((:gsl_sf_airy_zero_Bi_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_airy_zero_Bi(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Bi(unsigned int s)`
"""
function gsl_sf_airy_zero_Bi(s)
    ccall((:gsl_sf_airy_zero_Bi, libgsl), Cdouble, (Cuint,), s)
end

"""
    gsl_sf_airy_zero_Ai_deriv_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Ai_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_airy_zero_Ai_deriv_e(s, result)
    ccall((:gsl_sf_airy_zero_Ai_deriv_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_airy_zero_Ai_deriv(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Ai_deriv(unsigned int s)`
"""
function gsl_sf_airy_zero_Ai_deriv(s)
    ccall((:gsl_sf_airy_zero_Ai_deriv, libgsl), Cdouble, (Cuint,), s)
end

"""
    gsl_sf_airy_zero_Bi_deriv_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Bi_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_airy_zero_Bi_deriv_e(s, result)
    ccall((:gsl_sf_airy_zero_Bi_deriv_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_airy_zero_Bi_deriv(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Bi_deriv(unsigned int s)`
"""
function gsl_sf_airy_zero_Bi_deriv(s)
    ccall((:gsl_sf_airy_zero_Bi_deriv, libgsl), Cdouble, (Cuint,), s)
end

