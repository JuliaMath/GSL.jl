#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_elljac.h ##########################################################


"""
    gsl_sf_elljac_e(u, m, sn, cn, dn) -> Cint

C signature:
`int gsl_sf_elljac_e(double u, double m, double * sn, double * cn, double * dn)`
"""
function gsl_sf_elljac_e(u, m, sn, cn, dn)
    ccall((:gsl_sf_elljac_e, libgsl), Cint, (Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), u, m, sn, cn, dn)
end

