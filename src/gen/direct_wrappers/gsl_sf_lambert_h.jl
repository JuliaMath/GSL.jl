#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_lambert.h #########################################################


"""
    gsl_sf_lambert_W0_e(x, result) -> Cint

C signature:
`int gsl_sf_lambert_W0_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_lambert_W0_e(x, result)
    ccall((:gsl_sf_lambert_W0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_lambert_W0(x) -> Cdouble

C signature:
`double gsl_sf_lambert_W0(double x)`
"""
function gsl_sf_lambert_W0(x)
    ccall((:gsl_sf_lambert_W0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_lambert_Wm1_e(x, result) -> Cint

C signature:
`int gsl_sf_lambert_Wm1_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_lambert_Wm1_e(x, result)
    ccall((:gsl_sf_lambert_Wm1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_lambert_Wm1(x) -> Cdouble

C signature:
`double gsl_sf_lambert_Wm1(double x)`
"""
function gsl_sf_lambert_Wm1(x)
    ccall((:gsl_sf_lambert_Wm1, libgsl), Cdouble, (Cdouble,), x)
end

