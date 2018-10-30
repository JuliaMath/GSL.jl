#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_ellint.h ##########################################################


"""
    gsl_sf_ellint_Kcomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Kcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_Kcomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Kcomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

"""
    gsl_sf_ellint_Kcomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Kcomp(double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_Kcomp(k, mode)
    ccall((:gsl_sf_ellint_Kcomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

"""
    gsl_sf_ellint_Ecomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Ecomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_Ecomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Ecomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

"""
    gsl_sf_ellint_Ecomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Ecomp(double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_Ecomp(k, mode)
    ccall((:gsl_sf_ellint_Ecomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

"""
    gsl_sf_ellint_Pcomp_e(k, n, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Pcomp_e(double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_Pcomp_e(k, n, mode, result)
    ccall((:gsl_sf_ellint_Pcomp_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, n, mode, result)
end

"""
    gsl_sf_ellint_Pcomp(k, n, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Pcomp(double k, double n, gsl_mode_t mode)`
"""
function gsl_sf_ellint_Pcomp(k, n, mode)
    ccall((:gsl_sf_ellint_Pcomp, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), k, n, mode)
end

"""
    gsl_sf_ellint_Dcomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Dcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_Dcomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Dcomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

"""
    gsl_sf_ellint_Dcomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Dcomp(double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_Dcomp(k, mode)
    ccall((:gsl_sf_ellint_Dcomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

"""
    gsl_sf_ellint_F_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_F_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_F_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_F_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

"""
    gsl_sf_ellint_F(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_F(double phi, double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_F(phi, k, mode)
    ccall((:gsl_sf_ellint_F, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

"""
    gsl_sf_ellint_E_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_E_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_E_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_E_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

"""
    gsl_sf_ellint_E(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_E(double phi, double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_E(phi, k, mode)
    ccall((:gsl_sf_ellint_E, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

"""
    gsl_sf_ellint_P_e(phi, k, n, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_P_e(double phi, double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_P_e(phi, k, n, mode, result)
    ccall((:gsl_sf_ellint_P_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, n, mode, result)
end

"""
    gsl_sf_ellint_P(phi, k, n, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_P(double phi, double k, double n, gsl_mode_t mode)`
"""
function gsl_sf_ellint_P(phi, k, n, mode)
    ccall((:gsl_sf_ellint_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), phi, k, n, mode)
end

"""
    gsl_sf_ellint_D_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_D_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_D_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_D_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

"""
    gsl_sf_ellint_D(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_D(double phi, double k, gsl_mode_t mode)`
"""
function gsl_sf_ellint_D(phi, k, mode)
    ccall((:gsl_sf_ellint_D, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

"""
    gsl_sf_ellint_RC_e(x, y, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RC_e(double x, double y, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_RC_e(x, y, mode, result)
    ccall((:gsl_sf_ellint_RC_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, mode, result)
end

"""
    gsl_sf_ellint_RC(x, y, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RC(double x, double y, gsl_mode_t mode)`
"""
function gsl_sf_ellint_RC(x, y, mode)
    ccall((:gsl_sf_ellint_RC, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), x, y, mode)
end

"""
    gsl_sf_ellint_RD_e(x, y, z, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RD_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_RD_e(x, y, z, mode, result)
    ccall((:gsl_sf_ellint_RD_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, mode, result)
end

"""
    gsl_sf_ellint_RD(x, y, z, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RD(double x, double y, double z, gsl_mode_t mode)`
"""
function gsl_sf_ellint_RD(x, y, z, mode)
    ccall((:gsl_sf_ellint_RD, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, mode)
end

"""
    gsl_sf_ellint_RF_e(x, y, z, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RF_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_RF_e(x, y, z, mode, result)
    ccall((:gsl_sf_ellint_RF_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, mode, result)
end

"""
    gsl_sf_ellint_RF(x, y, z, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RF(double x, double y, double z, gsl_mode_t mode)`
"""
function gsl_sf_ellint_RF(x, y, z, mode)
    ccall((:gsl_sf_ellint_RF, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, mode)
end

"""
    gsl_sf_ellint_RJ_e(x, y, z, p, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RJ_e(double x, double y, double z, double p, gsl_mode_t mode, gsl_sf_result * result)`
"""
function gsl_sf_ellint_RJ_e(x, y, z, p, mode, result)
    ccall((:gsl_sf_ellint_RJ_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, p, mode, result)
end

"""
    gsl_sf_ellint_RJ(x, y, z, p, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RJ(double x, double y, double z, double p, gsl_mode_t mode)`
"""
function gsl_sf_ellint_RJ(x, y, z, p, mode)
    ccall((:gsl_sf_ellint_RJ, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, p, mode)
end

