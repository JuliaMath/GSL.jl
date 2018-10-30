#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_hyperg.h ##########################################################


"""
    gsl_sf_hyperg_0F1_e(c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_0F1_e(double c, double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_0F1_e(c, x, result)
    ccall((:gsl_sf_hyperg_0F1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), c, x, result)
end

"""
    gsl_sf_hyperg_0F1(c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_0F1(const double c, const double x)`
"""
function gsl_sf_hyperg_0F1(c, x)
    ccall((:gsl_sf_hyperg_0F1, libgsl), Cdouble, (Cdouble, Cdouble), c, x)
end

"""
    gsl_sf_hyperg_1F1_int_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_1F1_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_1F1_int_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_1F1_int_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

"""
    gsl_sf_hyperg_1F1_int(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_1F1_int(const int m, const int n, double x)`
"""
function gsl_sf_hyperg_1F1_int(m, n, x)
    ccall((:gsl_sf_hyperg_1F1_int, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

"""
    gsl_sf_hyperg_1F1_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_1F1_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_1F1_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_1F1_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

"""
    gsl_sf_hyperg_1F1(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_1F1(double a, double b, double x)`
"""
function gsl_sf_hyperg_1F1(a, b, x)
    ccall((:gsl_sf_hyperg_1F1, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

"""
    gsl_sf_hyperg_U_int_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_U_int_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_U_int_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

"""
    gsl_sf_hyperg_U_int(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_U_int(const int m, const int n, const double x)`
"""
function gsl_sf_hyperg_U_int(m, n, x)
    ccall((:gsl_sf_hyperg_U_int, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

"""
    gsl_sf_hyperg_U_int_e10_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_int_e10_e(const int m, const int n, const double x, gsl_sf_result_e10 * result)`
"""
function gsl_sf_hyperg_U_int_e10_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_U_int_e10_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result_e10}), m, n, x, result)
end

"""
    gsl_sf_hyperg_U_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_U_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_U_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

"""
    gsl_sf_hyperg_U(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_U(const double a, const double b, const double x)`
"""
function gsl_sf_hyperg_U(a, b, x)
    ccall((:gsl_sf_hyperg_U, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

"""
    gsl_sf_hyperg_U_e10_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_e10_e(const double a, const double b, const double x, gsl_sf_result_e10 * result)`
"""
function gsl_sf_hyperg_U_e10_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_U_e10_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result_e10}), a, b, x, result)
end

"""
    gsl_sf_hyperg_2F1_e(a, b, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_e(double a, double b, const double c, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_2F1_e(a, b, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, c, x, result)
end

"""
    gsl_sf_hyperg_2F1(a, b, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1(double a, double b, double c, double x)`
"""
function gsl_sf_hyperg_2F1(a, b, c, x)
    ccall((:gsl_sf_hyperg_2F1, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), a, b, c, x)
end

"""
    gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_conj_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_conj_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), aR, aI, c, x, result)
end

"""
    gsl_sf_hyperg_2F1_conj(aR, aI, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_conj(double aR, double aI, double c, double x)`
"""
function gsl_sf_hyperg_2F1_conj(aR, aI, c, x)
    ccall((:gsl_sf_hyperg_2F1_conj, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), aR, aI, c, x)
end

"""
    gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_renorm_e(const double a, const double b, const double c, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_renorm_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, c, x, result)
end

"""
    gsl_sf_hyperg_2F1_renorm(a, b, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_renorm(double a, double b, double c, double x)`
"""
function gsl_sf_hyperg_2F1_renorm(a, b, c, x)
    ccall((:gsl_sf_hyperg_2F1_renorm, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), a, b, c, x)
end

"""
    gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_conj_renorm_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_conj_renorm_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), aR, aI, c, x, result)
end

"""
    gsl_sf_hyperg_2F1_conj_renorm(aR, aI, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_conj_renorm(double aR, double aI, double c, double x)`
"""
function gsl_sf_hyperg_2F1_conj_renorm(aR, aI, c, x)
    ccall((:gsl_sf_hyperg_2F1_conj_renorm, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), aR, aI, c, x)
end

"""
    gsl_sf_hyperg_2F0_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F0_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function gsl_sf_hyperg_2F0_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_2F0_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

"""
    gsl_sf_hyperg_2F0(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F0(const double a, const double b, const double x)`
"""
function gsl_sf_hyperg_2F0(a, b, x)
    ccall((:gsl_sf_hyperg_2F0, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

