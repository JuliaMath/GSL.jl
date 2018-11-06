#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_elljac.h ##########################################################


@doc md"""
    sf_elljac_e(u, m, sn, cn, dn) -> Cint

C signature:
`int gsl_sf_elljac_e(double u, double m, double * sn, double * cn, double * dn)`

GSL documentation:

### `int gsl_sf_elljac_e (double u, double m, double * sn, double * cn, double * dn)`

> This function computes the Jacobian elliptic functions $sn(u|m)$,
> $cn(u|m)$, $dn(u|m)$ by descending Landen transformations.

"""
function sf_elljac_e(u, m, sn, cn, dn)
    ccall((:gsl_sf_elljac_e, libgsl), Cint, (Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), u, m, sn, cn, dn)
end

