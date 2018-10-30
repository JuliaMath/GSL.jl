#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_elementary.h ######################################################


"""
    gsl_sf_multiply_e(x, y, result) -> Cint

C signature:
`int gsl_sf_multiply_e(const double x, const double y, gsl_sf_result * result)`
"""
function gsl_sf_multiply_e(x, y, result)
    ccall((:gsl_sf_multiply_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

"""
    gsl_sf_multiply(x, y) -> Cdouble

C signature:
`double gsl_sf_multiply(const double x, const double y)`
"""
function gsl_sf_multiply(x, y)
    ccall((:gsl_sf_multiply, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

"""
    gsl_sf_multiply_err_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_multiply_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`
"""
function gsl_sf_multiply_err_e(x, dx, y, dy, result)
    ccall((:gsl_sf_multiply_err_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result)
end

