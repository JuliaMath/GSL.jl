#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_dawson.h ##########################################################


"""
    gsl_sf_dawson_e(x, result) -> Cint

C signature:
`int gsl_sf_dawson_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_dawson_e(x, result)
    ccall((:gsl_sf_dawson_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_dawson(x) -> Cdouble

C signature:
`double gsl_sf_dawson(double x)`
"""
function gsl_sf_dawson(x)
    ccall((:gsl_sf_dawson, libgsl), Cdouble, (Cdouble,), x)
end

