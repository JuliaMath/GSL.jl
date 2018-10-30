#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_gegenbauer.h ######################################################


"""
    gsl_sf_gegenpoly_1_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_gegenpoly_1_e(double lambda, double x, gsl_sf_result * result)`
"""
function gsl_sf_gegenpoly_1_e(lambda, x, result)
    ccall((:gsl_sf_gegenpoly_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_gegenpoly_2_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_gegenpoly_2_e(double lambda, double x, gsl_sf_result * result)`
"""
function gsl_sf_gegenpoly_2_e(lambda, x, result)
    ccall((:gsl_sf_gegenpoly_2_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_gegenpoly_3_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_gegenpoly_3_e(double lambda, double x, gsl_sf_result * result)`
"""
function gsl_sf_gegenpoly_3_e(lambda, x, result)
    ccall((:gsl_sf_gegenpoly_3_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_gegenpoly_1(lambda, x) -> Cdouble

C signature:
`double gsl_sf_gegenpoly_1(double lambda, double x)`
"""
function gsl_sf_gegenpoly_1(lambda, x)
    ccall((:gsl_sf_gegenpoly_1, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_gegenpoly_2(lambda, x) -> Cdouble

C signature:
`double gsl_sf_gegenpoly_2(double lambda, double x)`
"""
function gsl_sf_gegenpoly_2(lambda, x)
    ccall((:gsl_sf_gegenpoly_2, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_gegenpoly_3(lambda, x) -> Cdouble

C signature:
`double gsl_sf_gegenpoly_3(double lambda, double x)`
"""
function gsl_sf_gegenpoly_3(lambda, x)
    ccall((:gsl_sf_gegenpoly_3, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_gegenpoly_n_e(n, lambda, x, result) -> Cint

C signature:
`int gsl_sf_gegenpoly_n_e(int n, double lambda, double x, gsl_sf_result * result)`
"""
function gsl_sf_gegenpoly_n_e(n, lambda, x, result)
    ccall((:gsl_sf_gegenpoly_n_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), n, lambda, x, result)
end

"""
    gsl_sf_gegenpoly_n(n, lambda, x) -> Cdouble

C signature:
`double gsl_sf_gegenpoly_n(int n, double lambda, double x)`
"""
function gsl_sf_gegenpoly_n(n, lambda, x)
    ccall((:gsl_sf_gegenpoly_n, libgsl), Cdouble, (Cint, Cdouble, Cdouble), n, lambda, x)
end

"""
    gsl_sf_gegenpoly_array(nmax, lambda, x, result_array) -> Cint

C signature:
`int gsl_sf_gegenpoly_array(int nmax, double lambda, double x, double * result_array)`
"""
function gsl_sf_gegenpoly_array(nmax, lambda, x, result_array)
    ccall((:gsl_sf_gegenpoly_array, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), nmax, lambda, x, result_array)
end

