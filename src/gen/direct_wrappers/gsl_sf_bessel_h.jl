#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_bessel.h ##########################################################


"""
    gsl_sf_bessel_J0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_J0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_J0_e(x, result)
    ccall((:gsl_sf_bessel_J0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_J0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_J0(const double x)`
"""
function gsl_sf_bessel_J0(x)
    ccall((:gsl_sf_bessel_J0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_J1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_J1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_J1_e(x, result)
    ccall((:gsl_sf_bessel_J1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_J1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_J1(const double x)`
"""
function gsl_sf_bessel_J1(x)
    ccall((:gsl_sf_bessel_J1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_Jn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Jn_e(int n, double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Jn_e(n, x, result)
    ccall((:gsl_sf_bessel_Jn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_Jn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Jn(const int n, const double x)`
"""
function gsl_sf_bessel_Jn(n, x)
    ccall((:gsl_sf_bessel_Jn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_Jn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Jn_array(int nmin, int nmax, double x, double * result_array)`
"""
function gsl_sf_bessel_Jn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Jn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_Y0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_Y0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Y0_e(x, result)
    ccall((:gsl_sf_bessel_Y0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_Y0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_Y0(const double x)`
"""
function gsl_sf_bessel_Y0(x)
    ccall((:gsl_sf_bessel_Y0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_Y1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_Y1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Y1_e(x, result)
    ccall((:gsl_sf_bessel_Y1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_Y1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_Y1(const double x)`
"""
function gsl_sf_bessel_Y1(x)
    ccall((:gsl_sf_bessel_Y1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_Yn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Yn_e(int n,const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Yn_e(n, x, result)
    ccall((:gsl_sf_bessel_Yn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_Yn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Yn(const int n,const double x)`
"""
function gsl_sf_bessel_Yn(n, x)
    ccall((:gsl_sf_bessel_Yn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_Yn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Yn_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_Yn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Yn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_I0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_I0_e(x, result)
    ccall((:gsl_sf_bessel_I0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_I0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I0(const double x)`
"""
function gsl_sf_bessel_I0(x)
    ccall((:gsl_sf_bessel_I0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_I1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_I1_e(x, result)
    ccall((:gsl_sf_bessel_I1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_I1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I1(const double x)`
"""
function gsl_sf_bessel_I1(x)
    ccall((:gsl_sf_bessel_I1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_In_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_In_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_In_e(n, x, result)
    ccall((:gsl_sf_bessel_In_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_In(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_In(const int n, const double x)`
"""
function gsl_sf_bessel_In(n, x)
    ccall((:gsl_sf_bessel_In, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_In_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_In_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_In_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_In_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_I0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I0_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_I0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_I0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_I0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I0_scaled(const double x)`
"""
function gsl_sf_bessel_I0_scaled(x)
    ccall((:gsl_sf_bessel_I0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_I1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I1_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_I1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_I1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_I1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I1_scaled(const double x)`
"""
function gsl_sf_bessel_I1_scaled(x)
    ccall((:gsl_sf_bessel_I1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_In_scaled_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_In_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_In_scaled_e(n, x, result)
    ccall((:gsl_sf_bessel_In_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_In_scaled(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_In_scaled(const int n, const double x)`
"""
function gsl_sf_bessel_In_scaled(n, x)
    ccall((:gsl_sf_bessel_In_scaled, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_In_scaled_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_In_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_In_scaled_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_In_scaled_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_K0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_K0_e(x, result)
    ccall((:gsl_sf_bessel_K0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_K0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K0(const double x)`
"""
function gsl_sf_bessel_K0(x)
    ccall((:gsl_sf_bessel_K0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_K1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_K1_e(x, result)
    ccall((:gsl_sf_bessel_K1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_K1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K1(const double x)`
"""
function gsl_sf_bessel_K1(x)
    ccall((:gsl_sf_bessel_K1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_Kn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Kn_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Kn_e(n, x, result)
    ccall((:gsl_sf_bessel_Kn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_Kn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Kn(const int n, const double x)`
"""
function gsl_sf_bessel_Kn(n, x)
    ccall((:gsl_sf_bessel_Kn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_Kn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Kn_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_Kn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Kn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_K0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K0_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_K0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_K0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_K0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K0_scaled(const double x)`
"""
function gsl_sf_bessel_K0_scaled(x)
    ccall((:gsl_sf_bessel_K0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_K1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K1_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_K1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_K1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_K1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K1_scaled(const double x)`
"""
function gsl_sf_bessel_K1_scaled(x)
    ccall((:gsl_sf_bessel_K1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_Kn_scaled_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Kn_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Kn_scaled_e(n, x, result)
    ccall((:gsl_sf_bessel_Kn_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

"""
    gsl_sf_bessel_Kn_scaled(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Kn_scaled(const int n, const double x)`
"""
function gsl_sf_bessel_Kn_scaled(n, x)
    ccall((:gsl_sf_bessel_Kn_scaled, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

"""
    gsl_sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Kn_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Kn_scaled_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

"""
    gsl_sf_bessel_j0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_j0_e(x, result)
    ccall((:gsl_sf_bessel_j0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_j0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j0(const double x)`
"""
function gsl_sf_bessel_j0(x)
    ccall((:gsl_sf_bessel_j0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_j1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_j1_e(x, result)
    ccall((:gsl_sf_bessel_j1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_j1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j1(const double x)`
"""
function gsl_sf_bessel_j1(x)
    ccall((:gsl_sf_bessel_j1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_j2_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j2_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_j2_e(x, result)
    ccall((:gsl_sf_bessel_j2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_j2(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j2(const double x)`
"""
function gsl_sf_bessel_j2(x)
    ccall((:gsl_sf_bessel_j2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_jl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_jl_e(const int l, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_jl_e(l, x, result)
    ccall((:gsl_sf_bessel_jl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_bessel_jl(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_jl(const int l, const double x)`
"""
function gsl_sf_bessel_jl(l, x)
    ccall((:gsl_sf_bessel_jl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_bessel_jl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_jl_array(const int lmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_jl_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_jl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

"""
    gsl_sf_bessel_jl_steed_array(lmax, x, jl_x_array) -> Cint

C signature:
`int gsl_sf_bessel_jl_steed_array(const int lmax, const double x, double * jl_x_array)`
"""
function gsl_sf_bessel_jl_steed_array(lmax, x, jl_x_array)
    ccall((:gsl_sf_bessel_jl_steed_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, jl_x_array)
end

"""
    gsl_sf_bessel_y0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_y0_e(x, result)
    ccall((:gsl_sf_bessel_y0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_y0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y0(const double x)`
"""
function gsl_sf_bessel_y0(x)
    ccall((:gsl_sf_bessel_y0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_y1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_y1_e(x, result)
    ccall((:gsl_sf_bessel_y1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_y1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y1(const double x)`
"""
function gsl_sf_bessel_y1(x)
    ccall((:gsl_sf_bessel_y1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_y2_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y2_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_y2_e(x, result)
    ccall((:gsl_sf_bessel_y2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_y2(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y2(const double x)`
"""
function gsl_sf_bessel_y2(x)
    ccall((:gsl_sf_bessel_y2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_yl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_yl_e(int l, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_yl_e(l, x, result)
    ccall((:gsl_sf_bessel_yl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_bessel_yl(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_yl(const int l, const double x)`
"""
function gsl_sf_bessel_yl(l, x)
    ccall((:gsl_sf_bessel_yl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_bessel_yl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_yl_array(const int lmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_yl_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_yl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

"""
    gsl_sf_bessel_i0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i0_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_i0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_i0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i0_scaled(const double x)`
"""
function gsl_sf_bessel_i0_scaled(x)
    ccall((:gsl_sf_bessel_i0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_i1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i1_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_i1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_i1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i1_scaled(const double x)`
"""
function gsl_sf_bessel_i1_scaled(x)
    ccall((:gsl_sf_bessel_i1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_i2_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i2_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_i2_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i2_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_i2_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i2_scaled(const double x)`
"""
function gsl_sf_bessel_i2_scaled(x)
    ccall((:gsl_sf_bessel_i2_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_il_scaled_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_il_scaled_e(const int l, double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_il_scaled_e(l, x, result)
    ccall((:gsl_sf_bessel_il_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_bessel_il_scaled(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_il_scaled(const int l, const double x)`
"""
function gsl_sf_bessel_il_scaled(l, x)
    ccall((:gsl_sf_bessel_il_scaled, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_bessel_il_scaled_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_il_scaled_array(const int lmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_il_scaled_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_il_scaled_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

"""
    gsl_sf_bessel_k0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k0_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_k0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_k0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k0_scaled(const double x)`
"""
function gsl_sf_bessel_k0_scaled(x)
    ccall((:gsl_sf_bessel_k0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_k1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k1_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_k1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_k1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k1_scaled(const double x)`
"""
function gsl_sf_bessel_k1_scaled(x)
    ccall((:gsl_sf_bessel_k1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_k2_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k2_scaled_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_k2_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k2_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_bessel_k2_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k2_scaled(const double x)`
"""
function gsl_sf_bessel_k2_scaled(x)
    ccall((:gsl_sf_bessel_k2_scaled, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_bessel_kl_scaled_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_kl_scaled_e(int l, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_kl_scaled_e(l, x, result)
    ccall((:gsl_sf_bessel_kl_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_bessel_kl_scaled(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_kl_scaled(const int l, const double x)`
"""
function gsl_sf_bessel_kl_scaled(l, x)
    ccall((:gsl_sf_bessel_kl_scaled, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_bessel_kl_scaled_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_kl_scaled_array(const int lmax, const double x, double * result_array)`
"""
function gsl_sf_bessel_kl_scaled_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_kl_scaled_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

"""
    gsl_sf_bessel_Jnu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Jnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Jnu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Jnu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Jnu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Jnu(const double nu, const double x)`
"""
function gsl_sf_bessel_Jnu(nu, x)
    ccall((:gsl_sf_bessel_Jnu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_Ynu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Ynu_e(double nu, double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Ynu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Ynu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Ynu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Ynu(const double nu, const double x)`
"""
function gsl_sf_bessel_Ynu(nu, x)
    ccall((:gsl_sf_bessel_Ynu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_sequence_Jnu_e(nu, mode, size, v) -> Cint

C signature:
`int gsl_sf_bessel_sequence_Jnu_e(double nu, gsl_mode_t mode, size_t size, double * v)`
"""
function gsl_sf_bessel_sequence_Jnu_e(nu, mode, size, v)
    ccall((:gsl_sf_bessel_sequence_Jnu_e, libgsl), Cint, (Cdouble, gsl_mode_t, Csize_t, Ref{Cdouble}), nu, mode, size, v)
end

"""
    gsl_sf_bessel_Inu_scaled_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Inu_scaled_e(double nu, double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Inu_scaled_e(nu, x, result)
    ccall((:gsl_sf_bessel_Inu_scaled_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Inu_scaled(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Inu_scaled(double nu, double x)`
"""
function gsl_sf_bessel_Inu_scaled(nu, x)
    ccall((:gsl_sf_bessel_Inu_scaled, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_Inu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Inu_e(double nu, double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Inu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Inu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Inu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Inu(double nu, double x)`
"""
function gsl_sf_bessel_Inu(nu, x)
    ccall((:gsl_sf_bessel_Inu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_Knu_scaled_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_scaled_e(const double nu, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Knu_scaled_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_scaled_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Knu_scaled(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Knu_scaled(const double nu, const double x)`
"""
function gsl_sf_bessel_Knu_scaled(nu, x)
    ccall((:gsl_sf_bessel_Knu_scaled, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_Knu_scaled_e10_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_scaled_e10_e(const double nu, const double x, gsl_sf_result_e10 * result)`
"""
function gsl_sf_bessel_Knu_scaled_e10_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_scaled_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), nu, x, result)
end

"""
    gsl_sf_bessel_Knu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_Knu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_Knu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Knu(const double nu, const double x)`
"""
function gsl_sf_bessel_Knu(nu, x)
    ccall((:gsl_sf_bessel_Knu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_lnKnu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_lnKnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function gsl_sf_bessel_lnKnu_e(nu, x, result)
    ccall((:gsl_sf_bessel_lnKnu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

"""
    gsl_sf_bessel_lnKnu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_lnKnu(const double nu, const double x)`
"""
function gsl_sf_bessel_lnKnu(nu, x)
    ccall((:gsl_sf_bessel_lnKnu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

"""
    gsl_sf_bessel_zero_J0_e(s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_J0_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_bessel_zero_J0_e(s, result)
    ccall((:gsl_sf_bessel_zero_J0_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_bessel_zero_J0(s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_J0(unsigned int s)`
"""
function gsl_sf_bessel_zero_J0(s)
    ccall((:gsl_sf_bessel_zero_J0, libgsl), Cdouble, (Cuint,), s)
end

"""
    gsl_sf_bessel_zero_J1_e(s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_J1_e(unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_bessel_zero_J1_e(s, result)
    ccall((:gsl_sf_bessel_zero_J1_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

"""
    gsl_sf_bessel_zero_J1(s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_J1(unsigned int s)`
"""
function gsl_sf_bessel_zero_J1(s)
    ccall((:gsl_sf_bessel_zero_J1, libgsl), Cdouble, (Cuint,), s)
end

"""
    gsl_sf_bessel_zero_Jnu_e(nu, s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_Jnu_e(double nu, unsigned int s, gsl_sf_result * result)`
"""
function gsl_sf_bessel_zero_Jnu_e(nu, s, result)
    ccall((:gsl_sf_bessel_zero_Jnu_e, libgsl), Cint, (Cdouble, Cuint, Ref{gsl_sf_result}), nu, s, result)
end

"""
    gsl_sf_bessel_zero_Jnu(nu, s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_Jnu(double nu, unsigned int s)`
"""
function gsl_sf_bessel_zero_Jnu(nu, s)
    ccall((:gsl_sf_bessel_zero_Jnu, libgsl), Cdouble, (Cdouble, Cuint), nu, s)
end

