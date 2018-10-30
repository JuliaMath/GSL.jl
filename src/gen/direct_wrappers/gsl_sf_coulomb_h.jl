#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_coulomb.h #########################################################


"""
    gsl_sf_hydrogenicR_1_e(Z, r, result) -> Cint

C signature:
`int gsl_sf_hydrogenicR_1_e(const double Z, const double r, gsl_sf_result * result)`
"""
function gsl_sf_hydrogenicR_1_e(Z, r, result)
    ccall((:gsl_sf_hydrogenicR_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), Z, r, result)
end

"""
    gsl_sf_hydrogenicR_1(Z, r) -> Cdouble

C signature:
`double gsl_sf_hydrogenicR_1(const double Z, const double r)`
"""
function gsl_sf_hydrogenicR_1(Z, r)
    ccall((:gsl_sf_hydrogenicR_1, libgsl), Cdouble, (Cdouble, Cdouble), Z, r)
end

"""
    gsl_sf_hydrogenicR_e(n, l, Z, r, result) -> Cint

C signature:
`int gsl_sf_hydrogenicR_e(const int n, const int l, const double Z, const double r, gsl_sf_result * result)`
"""
function gsl_sf_hydrogenicR_e(n, l, Z, r, result)
    ccall((:gsl_sf_hydrogenicR_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), n, l, Z, r, result)
end

"""
    gsl_sf_hydrogenicR(n, l, Z, r) -> Cdouble

C signature:
`double gsl_sf_hydrogenicR(const int n, const int l, const double Z, const double r)`
"""
function gsl_sf_hydrogenicR(n, l, Z, r)
    ccall((:gsl_sf_hydrogenicR, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), n, l, Z, r)
end

"""
    gsl_sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FG_e(const double eta, const double x, const double lam_F, const int k_lam_G, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`
"""
function gsl_sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
    ccall((:gsl_sf_coulomb_wave_FG_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cint, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{Cdouble}, Ref{Cdouble}), eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
end

"""
    gsl_sf_coulomb_wave_F_array(lam_min, kmax, eta, x, fc_array, F_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_F_array( double lam_min, int kmax, double eta, double x, double * fc_array, double * F_exponent )`
"""
function gsl_sf_coulomb_wave_F_array(lam_min, kmax, eta, x, fc_array, F_exponent)
    ccall((:gsl_sf_coulomb_wave_F_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, F_exponent)
end

"""
    gsl_sf_coulomb_wave_FG_array(lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FG_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * gc_array, double * F_exponent, double * G_exponent )`
"""
function gsl_sf_coulomb_wave_FG_array(lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent)
    ccall((:gsl_sf_coulomb_wave_FG_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent)
end

"""
    gsl_sf_coulomb_wave_FGp_array(lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FGp_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * fcp_array, double * gc_array, double * gcp_array, double * F_exponent, double * G_exponent )`
"""
function gsl_sf_coulomb_wave_FGp_array(lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent)
    ccall((:gsl_sf_coulomb_wave_FGp_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent)
end

"""
    gsl_sf_coulomb_wave_sphF_array(lam_min, kmax, eta, x, fc_array, F_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_sphF_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * F_exponent )`
"""
function gsl_sf_coulomb_wave_sphF_array(lam_min, kmax, eta, x, fc_array, F_exponent)
    ccall((:gsl_sf_coulomb_wave_sphF_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, F_exponent)
end

"""
    gsl_sf_coulomb_CL_e(L, eta, result) -> Cint

C signature:
`int gsl_sf_coulomb_CL_e(double L, double eta, gsl_sf_result * result)`
"""
function gsl_sf_coulomb_CL_e(L, eta, result)
    ccall((:gsl_sf_coulomb_CL_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), L, eta, result)
end

"""
    gsl_sf_coulomb_CL_array(Lmin, kmax, eta, cl) -> Cint

C signature:
`int gsl_sf_coulomb_CL_array(double Lmin, int kmax, double eta, double * cl)`
"""
function gsl_sf_coulomb_CL_array(Lmin, kmax, eta, cl)
    ccall((:gsl_sf_coulomb_CL_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Ref{Cdouble}), Lmin, kmax, eta, cl)
end

