#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_exp.h #############################################################


"""
    gsl_sf_exp_e(x, result) -> Cint

C signature:
`int gsl_sf_exp_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_exp_e(x, result)
    ccall((:gsl_sf_exp_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_exp(x) -> Cdouble

C signature:
`double gsl_sf_exp(const double x)`
"""
function gsl_sf_exp(x)
    ccall((:gsl_sf_exp, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_exp_e10_e(x, result) -> Cint

C signature:
`int gsl_sf_exp_e10_e(const double x, gsl_sf_result_e10 * result)`
"""
function gsl_sf_exp_e10_e(x, result)
    ccall((:gsl_sf_exp_e10_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result_e10}), x, result)
end

"""
    gsl_sf_exp_mult_e(x, y, result) -> Cint

C signature:
`int gsl_sf_exp_mult_e(const double x, const double y, gsl_sf_result * result)`
"""
function gsl_sf_exp_mult_e(x, y, result)
    ccall((:gsl_sf_exp_mult_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

"""
    gsl_sf_exp_mult(x, y) -> Cdouble

C signature:
`double gsl_sf_exp_mult(const double x, const double y)`
"""
function gsl_sf_exp_mult(x, y)
    ccall((:gsl_sf_exp_mult, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

"""
    gsl_sf_exp_mult_e10_e(x, y, result) -> Cint

C signature:
`int gsl_sf_exp_mult_e10_e(const double x, const double y, gsl_sf_result_e10 * result)`
"""
function gsl_sf_exp_mult_e10_e(x, y, result)
    ccall((:gsl_sf_exp_mult_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, y, result)
end

"""
    gsl_sf_expm1_e(x, result) -> Cint

C signature:
`int gsl_sf_expm1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_expm1_e(x, result)
    ccall((:gsl_sf_expm1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_expm1(x) -> Cdouble

C signature:
`double gsl_sf_expm1(const double x)`
"""
function gsl_sf_expm1(x)
    ccall((:gsl_sf_expm1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_exprel_e(x, result) -> Cint

C signature:
`int gsl_sf_exprel_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_e(x, result)
    ccall((:gsl_sf_exprel_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_exprel(x) -> Cdouble

C signature:
`double gsl_sf_exprel(const double x)`
"""
function gsl_sf_exprel(x)
    ccall((:gsl_sf_exprel, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_exprel_2_e(x, result) -> Cint

C signature:
`int gsl_sf_exprel_2_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_2_e(x, result)
    ccall((:gsl_sf_exprel_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_exprel_2(x) -> Cdouble

C signature:
`double gsl_sf_exprel_2(const double x)`
"""
function gsl_sf_exprel_2(x)
    ccall((:gsl_sf_exprel_2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_exprel_n_e(n, x, result) -> Cint

C signature:
`int gsl_sf_exprel_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_n_e(n, x, result)
    ccall((:gsl_sf_exprel_n_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_exprel_n(n, x) -> Cdouble

C signature:
`double gsl_sf_exprel_n(const int n, const double x)`
"""
function gsl_sf_exprel_n(n, x)
    ccall((:gsl_sf_exprel_n, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_exprel_n_CF_e(n, x, result) -> Cint

C signature:
`int gsl_sf_exprel_n_CF_e(const double n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_n_CF_e(n, x, result)
    ccall((:gsl_sf_exprel_n_CF_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_exp_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_exp_err_e(const double x, const double dx, gsl_sf_result * result)`
"""
function gsl_sf_exp_err_e(x, dx, result)
    ccall((:gsl_sf_exp_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

"""
    gsl_sf_exp_err_e10_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_exp_err_e10_e(const double x, const double dx, gsl_sf_result_e10 * result)`
"""
function gsl_sf_exp_err_e10_e(x, dx, result)
    ccall((:gsl_sf_exp_err_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, dx, result)
end

"""
    gsl_sf_exp_mult_err_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_exp_mult_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`
"""
function gsl_sf_exp_mult_err_e(x, dx, y, dy, result)
    ccall((:gsl_sf_exp_mult_err_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result)
end

"""
    gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_exp_mult_err_e10_e(const double x, const double dx, const double y, const double dy, gsl_sf_result_e10 * result)`
"""
function gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result)
    ccall((:gsl_sf_exp_mult_err_e10_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, dx, y, dy, result)
end

