#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_psi.h #############################################################


"""
    gsl_sf_psi_int_e(n, result) -> Cint

C signature:
`int gsl_sf_psi_int_e(const int n, gsl_sf_result * result)`
"""
function gsl_sf_psi_int_e(n, result)
    ccall((:gsl_sf_psi_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_psi_int(n) -> Cdouble

C signature:
`double gsl_sf_psi_int(const int n)`
"""
function gsl_sf_psi_int(n)
    ccall((:gsl_sf_psi_int, libgsl), Cdouble, (Cint,), n)
end

"""
    gsl_sf_psi_e(x, result) -> Cint

C signature:
`int gsl_sf_psi_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_psi_e(x, result)
    ccall((:gsl_sf_psi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_psi(x) -> Cdouble

C signature:
`double gsl_sf_psi(const double x)`
"""
function gsl_sf_psi(x)
    ccall((:gsl_sf_psi, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_psi_1piy_e(y, result) -> Cint

C signature:
`int gsl_sf_psi_1piy_e(const double y, gsl_sf_result * result)`
"""
function gsl_sf_psi_1piy_e(y, result)
    ccall((:gsl_sf_psi_1piy_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), y, result)
end

"""
    gsl_sf_psi_1piy(y) -> Cdouble

C signature:
`double gsl_sf_psi_1piy(const double y)`
"""
function gsl_sf_psi_1piy(y)
    ccall((:gsl_sf_psi_1piy, libgsl), Cdouble, (Cdouble,), y)
end

"""
    gsl_sf_complex_psi_e(x, y, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_psi_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function gsl_sf_complex_psi_e(x, y, result_re, result_im)
    ccall((:gsl_sf_complex_psi_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, result_re, result_im)
end

"""
    gsl_sf_psi_1_int_e(n, result) -> Cint

C signature:
`int gsl_sf_psi_1_int_e(const int n, gsl_sf_result * result)`
"""
function gsl_sf_psi_1_int_e(n, result)
    ccall((:gsl_sf_psi_1_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

"""
    gsl_sf_psi_1_int(n) -> Cdouble

C signature:
`double gsl_sf_psi_1_int(const int n)`
"""
function gsl_sf_psi_1_int(n)
    ccall((:gsl_sf_psi_1_int, libgsl), Cdouble, (Cint,), n)
end

"""
    gsl_sf_psi_1_e(x, result) -> Cint

C signature:
`int gsl_sf_psi_1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_psi_1_e(x, result)
    ccall((:gsl_sf_psi_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_psi_1(x) -> Cdouble

C signature:
`double gsl_sf_psi_1(const double x)`
"""
function gsl_sf_psi_1(x)
    ccall((:gsl_sf_psi_1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_psi_n_e(n, x, result) -> Cint

C signature:
`int gsl_sf_psi_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_psi_n_e(n, x, result)
    ccall((:gsl_sf_psi_n_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_psi_n(n, x) -> Cdouble

C signature:
`double gsl_sf_psi_n(const int n, const double x)`
"""
function gsl_sf_psi_n(n, x)
    ccall((:gsl_sf_psi_n, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

