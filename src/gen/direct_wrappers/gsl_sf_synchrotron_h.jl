#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_synchrotron.h #####################################################


"""
    gsl_sf_synchrotron_1_e(x, result) -> Cint

C signature:
`int gsl_sf_synchrotron_1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_synchrotron_1_e(x, result)
    ccall((:gsl_sf_synchrotron_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_synchrotron_1(x) -> Cdouble

C signature:
`double gsl_sf_synchrotron_1(const double x)`
"""
function gsl_sf_synchrotron_1(x)
    ccall((:gsl_sf_synchrotron_1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_synchrotron_2_e(x, result) -> Cint

C signature:
`int gsl_sf_synchrotron_2_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_synchrotron_2_e(x, result)
    ccall((:gsl_sf_synchrotron_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_synchrotron_2(x) -> Cdouble

C signature:
`double gsl_sf_synchrotron_2(const double x)`
"""
function gsl_sf_synchrotron_2(x)
    ccall((:gsl_sf_synchrotron_2, libgsl), Cdouble, (Cdouble,), x)
end

