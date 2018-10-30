#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_zeta.h ############################################################


"""
    gsl_sf_zeta_int_e(n, result) -> Cint

C signature:
`int gsl_sf_zeta_int_e(const int n, gsl_sf_result * result)`
"""
function gsl_sf_zeta_int_e(n, result)
    ccall((:gsl_sf_zeta_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_zeta_int(n) -> Cdouble

C signature:
`double gsl_sf_zeta_int(const int n)`
"""
function gsl_sf_zeta_int(n)
    ccall((:gsl_sf_zeta_int, libgsl), Cdouble, (Cint,), n)
end

"""
    gsl_sf_zeta_e(s, result) -> Cint

C signature:
`int gsl_sf_zeta_e(const double s, gsl_sf_result * result)`
"""
function gsl_sf_zeta_e(s, result)
    ccall((:gsl_sf_zeta_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_zeta(s) -> Cdouble

C signature:
`double gsl_sf_zeta(const double s)`
"""
function gsl_sf_zeta(s)
    ccall((:gsl_sf_zeta, libgsl), Cdouble, (Cdouble,), s)
end

"""
    gsl_sf_zetam1_e(s, result) -> Cint

C signature:
`int gsl_sf_zetam1_e(const double s, gsl_sf_result * result)`
"""
function gsl_sf_zetam1_e(s, result)
    ccall((:gsl_sf_zetam1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_zetam1(s) -> Cdouble

C signature:
`double gsl_sf_zetam1(const double s)`
"""
function gsl_sf_zetam1(s)
    ccall((:gsl_sf_zetam1, libgsl), Cdouble, (Cdouble,), s)
end

"""
    gsl_sf_zetam1_int_e(s, result) -> Cint

C signature:
`int gsl_sf_zetam1_int_e(const int s, gsl_sf_result * result)`
"""
function gsl_sf_zetam1_int_e(s, result)
    ccall((:gsl_sf_zetam1_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_zetam1_int(s) -> Cdouble

C signature:
`double gsl_sf_zetam1_int(const int s)`
"""
function gsl_sf_zetam1_int(s)
    ccall((:gsl_sf_zetam1_int, libgsl), Cdouble, (Cint,), s)
end

"""
    gsl_sf_hzeta_e(s, q, result) -> Cint

C signature:
`int gsl_sf_hzeta_e(const double s, const double q, gsl_sf_result * result)`
"""
function gsl_sf_hzeta_e(s, q, result)
    ccall((:gsl_sf_hzeta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), s, q, result)
end

"""
    gsl_sf_hzeta(s, q) -> Cdouble

C signature:
`double gsl_sf_hzeta(const double s, const double q)`
"""
function gsl_sf_hzeta(s, q)
    ccall((:gsl_sf_hzeta, libgsl), Cdouble, (Cdouble, Cdouble), s, q)
end

"""
    gsl_sf_eta_int_e(n, result) -> Cint

C signature:
`int gsl_sf_eta_int_e(int n, gsl_sf_result * result)`
"""
function gsl_sf_eta_int_e(n, result)
    ccall((:gsl_sf_eta_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_eta_int(n) -> Cdouble

C signature:
`double gsl_sf_eta_int(const int n)`
"""
function gsl_sf_eta_int(n)
    ccall((:gsl_sf_eta_int, libgsl), Cdouble, (Cint,), n)
end

"""
    gsl_sf_eta_e(s, result) -> Cint

C signature:
`int gsl_sf_eta_e(const double s, gsl_sf_result * result)`
"""
function gsl_sf_eta_e(s, result)
    ccall((:gsl_sf_eta_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_eta(s) -> Cdouble

C signature:
`double gsl_sf_eta(const double s)`
"""
function gsl_sf_eta(s)
    ccall((:gsl_sf_eta, libgsl), Cdouble, (Cdouble,), s)
end

