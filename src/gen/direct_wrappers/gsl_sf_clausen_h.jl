#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_clausen.h #########################################################


"""
    gsl_sf_clausen_e(x, result) -> Cint

C signature:
`int gsl_sf_clausen_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_clausen_e(x, result)
    ccall((:gsl_sf_clausen_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_clausen(x) -> Cdouble

C signature:
`double gsl_sf_clausen(const double x)`
"""
function gsl_sf_clausen(x)
    ccall((:gsl_sf_clausen, libgsl), Cdouble, (Cdouble,), x)
end

