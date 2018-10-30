#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_transport.h #######################################################


"""
    gsl_sf_transport_2_e(x, result) -> Cint

C signature:
`int gsl_sf_transport_2_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_transport_2_e(x, result)
    ccall((:gsl_sf_transport_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_transport_2(x) -> Cdouble

C signature:
`double gsl_sf_transport_2(const double x)`
"""
function gsl_sf_transport_2(x)
    ccall((:gsl_sf_transport_2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_transport_3_e(x, result) -> Cint

C signature:
`int gsl_sf_transport_3_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_transport_3_e(x, result)
    ccall((:gsl_sf_transport_3_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_transport_3(x) -> Cdouble

C signature:
`double gsl_sf_transport_3(const double x)`
"""
function gsl_sf_transport_3(x)
    ccall((:gsl_sf_transport_3, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_transport_4_e(x, result) -> Cint

C signature:
`int gsl_sf_transport_4_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_transport_4_e(x, result)
    ccall((:gsl_sf_transport_4_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_transport_4(x) -> Cdouble

C signature:
`double gsl_sf_transport_4(const double x)`
"""
function gsl_sf_transport_4(x)
    ccall((:gsl_sf_transport_4, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_transport_5_e(x, result) -> Cint

C signature:
`int gsl_sf_transport_5_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_transport_5_e(x, result)
    ccall((:gsl_sf_transport_5_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_transport_5(x) -> Cdouble

C signature:
`double gsl_sf_transport_5(const double x)`
"""
function gsl_sf_transport_5(x)
    ccall((:gsl_sf_transport_5, libgsl), Cdouble, (Cdouble,), x)
end

