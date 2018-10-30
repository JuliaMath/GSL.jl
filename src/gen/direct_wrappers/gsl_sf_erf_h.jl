#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_erf.h #############################################################


"""
    gsl_sf_erfc_e(x, result) -> Cint

C signature:
`int gsl_sf_erfc_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_erfc_e(x, result)
    ccall((:gsl_sf_erfc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_erfc(x) -> Cdouble

C signature:
`double gsl_sf_erfc(double x)`
"""
function gsl_sf_erfc(x)
    ccall((:gsl_sf_erfc, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_log_erfc_e(x, result) -> Cint

C signature:
`int gsl_sf_log_erfc_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_log_erfc_e(x, result)
    ccall((:gsl_sf_log_erfc_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_log_erfc(x) -> Cdouble

C signature:
`double gsl_sf_log_erfc(double x)`
"""
function gsl_sf_log_erfc(x)
    ccall((:gsl_sf_log_erfc, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_erf_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_erf_e(x, result)
    ccall((:gsl_sf_erf_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_erf(x) -> Cdouble

C signature:
`double gsl_sf_erf(double x)`
"""
function gsl_sf_erf(x)
    ccall((:gsl_sf_erf, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_erf_Z_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_erf_Z_e(x, result)
    ccall((:gsl_sf_erf_Z_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_erf_Q_e(x, result) -> Cint

C signature:
`int gsl_sf_erf_Q_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_erf_Q_e(x, result)
    ccall((:gsl_sf_erf_Q_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_erf_Z(x) -> Cdouble

C signature:
`double gsl_sf_erf_Z(double x)`
"""
function gsl_sf_erf_Z(x)
    ccall((:gsl_sf_erf_Z, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_erf_Q(x) -> Cdouble

C signature:
`double gsl_sf_erf_Q(double x)`
"""
function gsl_sf_erf_Q(x)
    ccall((:gsl_sf_erf_Q, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_hazard_e(x, result) -> Cint

C signature:
`int gsl_sf_hazard_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_hazard_e(x, result)
    ccall((:gsl_sf_hazard_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_hazard(x) -> Cdouble

C signature:
`double gsl_sf_hazard(double x)`
"""
function gsl_sf_hazard(x)
    ccall((:gsl_sf_hazard, libgsl), Cdouble, (Cdouble,), x)
end

