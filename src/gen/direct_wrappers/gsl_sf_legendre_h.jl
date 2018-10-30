#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_legendre.h ########################################################


"""
    gsl_sf_legendre_Pl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Pl_e(const int l, const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_Pl_e(l, x, result)
    ccall((:gsl_sf_legendre_Pl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_legendre_Pl(l, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Pl(const int l, const double x)`
"""
function gsl_sf_legendre_Pl(l, x)
    ccall((:gsl_sf_legendre_Pl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_legendre_Pl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_Pl_array( const int lmax, const double x, double * result_array )`
"""
function gsl_sf_legendre_Pl_array(lmax, x, result_array)
    ccall((:gsl_sf_legendre_Pl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

"""
    gsl_sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_Pl_deriv_array( const int lmax, const double x, double * result_array, double * result_deriv_array )`
"""
function gsl_sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_Pl_deriv_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, x, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_P1_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P1_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_P1_e(x, result)
    ccall((:gsl_sf_legendre_P1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_legendre_P2_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P2_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_P2_e(x, result)
    ccall((:gsl_sf_legendre_P2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_legendre_P3_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P3_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_P3_e(x, result)
    ccall((:gsl_sf_legendre_P3_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_legendre_P1(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P1(const double x)`
"""
function gsl_sf_legendre_P1(x)
    ccall((:gsl_sf_legendre_P1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_legendre_P2(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P2(const double x)`
"""
function gsl_sf_legendre_P2(x)
    ccall((:gsl_sf_legendre_P2, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_legendre_P3(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P3(const double x)`
"""
function gsl_sf_legendre_P3(x)
    ccall((:gsl_sf_legendre_P3, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_legendre_Q0_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_Q0_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_Q0_e(x, result)
    ccall((:gsl_sf_legendre_Q0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_legendre_Q0(x) -> Cdouble

C signature:
`double gsl_sf_legendre_Q0(const double x)`
"""
function gsl_sf_legendre_Q0(x)
    ccall((:gsl_sf_legendre_Q0, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_legendre_Q1_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_Q1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_Q1_e(x, result)
    ccall((:gsl_sf_legendre_Q1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

"""
    gsl_sf_legendre_Q1(x) -> Cdouble

C signature:
`double gsl_sf_legendre_Q1(const double x)`
"""
function gsl_sf_legendre_Q1(x)
    ccall((:gsl_sf_legendre_Q1, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_sf_legendre_Ql_e(l, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Ql_e(const int l, const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_Ql_e(l, x, result)
    ccall((:gsl_sf_legendre_Ql_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

"""
    gsl_sf_legendre_Ql(l, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Ql(const int l, const double x)`
"""
function gsl_sf_legendre_Ql(l, x)
    ccall((:gsl_sf_legendre_Ql, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

"""
    gsl_sf_legendre_Plm_e(l, m, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Plm_e(const int l, const int m, const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_Plm_e(l, m, x, result)
    ccall((:gsl_sf_legendre_Plm_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), l, m, x, result)
end

"""
    gsl_sf_legendre_Plm(l, m, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Plm(const int l, const int m, const double x)`
"""
function gsl_sf_legendre_Plm(l, m, x)
    ccall((:gsl_sf_legendre_Plm, libgsl), Cdouble, (Cint, Cint, Cdouble), l, m, x)
end

"""
    gsl_sf_legendre_Plm_array(lmax, m, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_Plm_array( const int lmax, const int m, const double x, double * result_array )`
"""
function gsl_sf_legendre_Plm_array(lmax, m, x, result_array)
    ccall((:gsl_sf_legendre_Plm_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), lmax, m, x, result_array)
end

"""
    gsl_sf_legendre_Plm_deriv_array(lmax, m, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_Plm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function gsl_sf_legendre_Plm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_Plm_deriv_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, m, x, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_sphPlm_e(l, m, x, result) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_e(const int l, int m, const double x, gsl_sf_result * result)`
"""
function gsl_sf_legendre_sphPlm_e(l, m, x, result)
    ccall((:gsl_sf_legendre_sphPlm_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), l, m, x, result)
end

"""
    gsl_sf_legendre_sphPlm(l, m, x) -> Cdouble

C signature:
`double gsl_sf_legendre_sphPlm(const int l, const int m, const double x)`
"""
function gsl_sf_legendre_sphPlm(l, m, x)
    ccall((:gsl_sf_legendre_sphPlm, libgsl), Cdouble, (Cint, Cint, Cdouble), l, m, x)
end

"""
    gsl_sf_legendre_sphPlm_array(lmax, m, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_array( const int lmax, int m, const double x, double * result_array )`
"""
function gsl_sf_legendre_sphPlm_array(lmax, m, x, result_array)
    ccall((:gsl_sf_legendre_sphPlm_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), lmax, m, x, result_array)
end

"""
    gsl_sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function gsl_sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_sphPlm_deriv_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, m, x, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_array_size(lmax, m) -> Cint

C signature:
`int gsl_sf_legendre_array_size(const int lmax, const int m)`
"""
function gsl_sf_legendre_array_size(lmax, m)
    ccall((:gsl_sf_legendre_array_size, libgsl), Cint, (Cint, Cint), lmax, m)
end

"""
    gsl_sf_conicalP_half_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_half_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_half_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_half_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_conicalP_half(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_half(const double lambda, const double x)`
"""
function gsl_sf_conicalP_half(lambda, x)
    ccall((:gsl_sf_conicalP_half, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_conicalP_mhalf_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_mhalf_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_mhalf_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_mhalf_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_conicalP_mhalf(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_mhalf(const double lambda, const double x)`
"""
function gsl_sf_conicalP_mhalf(lambda, x)
    ccall((:gsl_sf_conicalP_mhalf, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_conicalP_0_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_0_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_0_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_conicalP_0(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_0(const double lambda, const double x)`
"""
function gsl_sf_conicalP_0(lambda, x)
    ccall((:gsl_sf_conicalP_0, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_conicalP_1_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_1_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_1_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

"""
    gsl_sf_conicalP_1(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_1(const double lambda, const double x)`
"""
function gsl_sf_conicalP_1(lambda, x)
    ccall((:gsl_sf_conicalP_1, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

"""
    gsl_sf_conicalP_sph_reg_e(l, lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_sph_reg_e(const int l, const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_sph_reg_e(l, lambda, x, result)
    ccall((:gsl_sf_conicalP_sph_reg_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), l, lambda, x, result)
end

"""
    gsl_sf_conicalP_sph_reg(l, lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_sph_reg(const int l, const double lambda, const double x)`
"""
function gsl_sf_conicalP_sph_reg(l, lambda, x)
    ccall((:gsl_sf_conicalP_sph_reg, libgsl), Cdouble, (Cint, Cdouble, Cdouble), l, lambda, x)
end

"""
    gsl_sf_conicalP_cyl_reg_e(m, lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_cyl_reg_e(const int m, const double lambda, const double x, gsl_sf_result * result)`
"""
function gsl_sf_conicalP_cyl_reg_e(m, lambda, x, result)
    ccall((:gsl_sf_conicalP_cyl_reg_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), m, lambda, x, result)
end

"""
    gsl_sf_conicalP_cyl_reg(m, lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_cyl_reg(const int m, const double lambda, const double x)`
"""
function gsl_sf_conicalP_cyl_reg(m, lambda, x)
    ccall((:gsl_sf_conicalP_cyl_reg, libgsl), Cdouble, (Cint, Cdouble, Cdouble), m, lambda, x)
end

"""
    gsl_sf_legendre_H3d_0_e(lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_0_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function gsl_sf_legendre_H3d_0_e(lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, eta, result)
end

"""
    gsl_sf_legendre_H3d_0(lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d_0(const double lambda, const double eta)`
"""
function gsl_sf_legendre_H3d_0(lambda, eta)
    ccall((:gsl_sf_legendre_H3d_0, libgsl), Cdouble, (Cdouble, Cdouble), lambda, eta)
end

"""
    gsl_sf_legendre_H3d_1_e(lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_1_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function gsl_sf_legendre_H3d_1_e(lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, eta, result)
end

"""
    gsl_sf_legendre_H3d_1(lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d_1(const double lambda, const double eta)`
"""
function gsl_sf_legendre_H3d_1(lambda, eta)
    ccall((:gsl_sf_legendre_H3d_1, libgsl), Cdouble, (Cdouble, Cdouble), lambda, eta)
end

"""
    gsl_sf_legendre_H3d_e(l, lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_e(const int l, const double lambda, const double eta, gsl_sf_result * result)`
"""
function gsl_sf_legendre_H3d_e(l, lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), l, lambda, eta, result)
end

"""
    gsl_sf_legendre_H3d(l, lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d(const int l, const double lambda, const double eta)`
"""
function gsl_sf_legendre_H3d(l, lambda, eta)
    ccall((:gsl_sf_legendre_H3d, libgsl), Cdouble, (Cint, Cdouble, Cdouble), l, lambda, eta)
end

"""
    gsl_sf_legendre_H3d_array(lmax, lambda, eta, result_array) -> Cint

C signature:
`int gsl_sf_legendre_H3d_array(const int lmax, const double lambda, const double eta, double * result_array)`
"""
function gsl_sf_legendre_H3d_array(lmax, lambda, eta, result_array)
    ccall((:gsl_sf_legendre_H3d_array, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), lmax, lambda, eta, result_array)
end

"""
    gsl_sf_legendre_array(norm, lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`
"""
function gsl_sf_legendre_array(norm, lmax, x, result_array)
    ccall((:gsl_sf_legendre_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}), norm, lmax, x, result_array)
end

"""
    gsl_sf_legendre_array_e(norm, lmax, x, csphase, result_array) -> Cint

C signature:
`int gsl_sf_legendre_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[])`
"""
function gsl_sf_legendre_array_e(norm, lmax, x, csphase, result_array)
    ccall((:gsl_sf_legendre_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}), norm, lmax, x, csphase, result_array)
end

"""
    gsl_sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`
"""
function gsl_sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function gsl_sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`
"""
function gsl_sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_alt_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function gsl_sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_alt_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array)
end

"""
    gsl_sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function gsl_sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
end

"""
    gsl_sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function gsl_sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
end

"""
    gsl_sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function gsl_sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_alt_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
end

"""
    gsl_sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function gsl_sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_alt_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
end

"""
    gsl_sf_legendre_array_n(lmax) -> Csize_t

C signature:
`size_t gsl_sf_legendre_array_n(const size_t lmax)`
"""
function gsl_sf_legendre_array_n(lmax)
    ccall((:gsl_sf_legendre_array_n, libgsl), Csize_t, (Csize_t,), lmax)
end

"""
    gsl_sf_legendre_array_index(l, m) -> Csize_t

C signature:
`size_t gsl_sf_legendre_array_index(const size_t l, const size_t m)`
"""
function gsl_sf_legendre_array_index(l, m)
    ccall((:gsl_sf_legendre_array_index, libgsl), Csize_t, (Csize_t, Csize_t), l, m)
end

"""
    gsl_sf_legendre_nlm(lmax) -> Csize_t

C signature:
`size_t gsl_sf_legendre_nlm(const size_t lmax)`
"""
function gsl_sf_legendre_nlm(lmax)
    ccall((:gsl_sf_legendre_nlm, libgsl), Csize_t, (Csize_t,), lmax)
end

