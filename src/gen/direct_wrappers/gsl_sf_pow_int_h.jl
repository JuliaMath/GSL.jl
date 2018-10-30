#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_pow_int.h #########################################################


"""
    gsl_sf_pow_int_e(x, n, result) -> Cint

C signature:
`int gsl_sf_pow_int_e(double x, int n, gsl_sf_result * result)`
"""
function gsl_sf_pow_int_e(x, n, result)
    ccall((:gsl_sf_pow_int_e, libgsl), Cint, (Cdouble, Cint, Ref{gsl_sf_result}), x, n, result)
end

"""
    gsl_sf_pow_int(x, n) -> Cdouble

C signature:
`double gsl_sf_pow_int(const double x, const int n)`
"""
function gsl_sf_pow_int(x, n)
    ccall((:gsl_sf_pow_int, libgsl), Cdouble, (Cdouble, Cint), x, n)
end

