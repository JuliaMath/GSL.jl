#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_ellint.h ##########################################################


@doc md"""
    sf_ellint_Kcomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Kcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Kcomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Kcomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

@doc md"""
    sf_ellint_Kcomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Kcomp(double k, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_Kcomp (double k, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_Kcomp\_e (double k, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the complete elliptic integral $K(k)$ to the
> accuracy specified by the mode variable `mode`. Note that Abramowitz &
> Stegun define this function in terms of the parameter $m = k^2$.

"""
function sf_ellint_Kcomp(k, mode)
    ccall((:gsl_sf_ellint_Kcomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

@doc md"""
    sf_ellint_Ecomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Ecomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Ecomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Ecomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

@doc md"""
    sf_ellint_Ecomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Ecomp(double k, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_Ecomp (double k, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_Ecomp\_e (double k, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the complete elliptic integral $E(k)$ to the
> accuracy specified by the mode variable `mode`. Note that Abramowitz &
> Stegun define this function in terms of the parameter $m = k^2$.

"""
function sf_ellint_Ecomp(k, mode)
    ccall((:gsl_sf_ellint_Ecomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

@doc md"""
    sf_ellint_Pcomp_e(k, n, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Pcomp_e(double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Pcomp_e(k, n, mode, result)
    ccall((:gsl_sf_ellint_Pcomp_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, n, mode, result)
end

@doc md"""
    sf_ellint_Pcomp(k, n, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Pcomp(double k, double n, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_Pcomp (double k, double n, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_Pcomp\_e (double k, double n, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the complete elliptic integral $\Pi(k,n)$ to
> the accuracy specified by the mode variable `mode`. Note that
> Abramowitz & Stegun define this function in terms of the parameters
> $m = k^2$ and $\sin^2(\alpha) = k^2$, with the change of sign
> $n \to -n$.

"""
function sf_ellint_Pcomp(k, n, mode)
    ccall((:gsl_sf_ellint_Pcomp, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), k, n, mode)
end

@doc md"""
    sf_ellint_Dcomp_e(k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_Dcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Dcomp_e(k, mode, result)
    ccall((:gsl_sf_ellint_Dcomp_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, mode, result)
end

@doc md"""
    sf_ellint_Dcomp(k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_Dcomp(double k, gsl_mode_t mode)`
"""
function sf_ellint_Dcomp(k, mode)
    ccall((:gsl_sf_ellint_Dcomp, libgsl), Cdouble, (Cdouble, gsl_mode_t), k, mode)
end

@doc md"""
    sf_ellint_F_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_F_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_F_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_F_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

@doc md"""
    sf_ellint_F(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_F(double phi, double k, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_F (double phi, double k, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_F\_e (double phi, double k, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $F(\phi,k)$ to
> the accuracy specified by the mode variable `mode`. Note that
> Abramowitz & Stegun define this function in terms of the parameter
> $m = k^2$.

"""
function sf_ellint_F(phi, k, mode)
    ccall((:gsl_sf_ellint_F, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

@doc md"""
    sf_ellint_E_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_E_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_E_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_E_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

@doc md"""
    sf_ellint_E(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_E(double phi, double k, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_E (double phi, double k, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_E\_e (double phi, double k, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $E(\phi,k)$ to
> the accuracy specified by the mode variable `mode`. Note that
> Abramowitz & Stegun define this function in terms of the parameter
> $m = k^2$.

"""
function sf_ellint_E(phi, k, mode)
    ccall((:gsl_sf_ellint_E, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

@doc md"""
    sf_ellint_P_e(phi, k, n, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_P_e(double phi, double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_P_e(phi, k, n, mode, result)
    ccall((:gsl_sf_ellint_P_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, n, mode, result)
end

@doc md"""
    sf_ellint_P(phi, k, n, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_P(double phi, double k, double n, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_P (double phi, double k, double n, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_P\_e (double phi, double k, double n,
> gsl\_mode\_t mode, gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral
> $\Pi(\phi,k,n)$ to the accuracy specified by the mode variable `mode`.
> Note that Abramowitz & Stegun define this function in terms of the
> parameters $m = k^2$ and $\sin^2(\alpha) = k^2$, with the change of
> sign $n \to -n$.

"""
function sf_ellint_P(phi, k, n, mode)
    ccall((:gsl_sf_ellint_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), phi, k, n, mode)
end

@doc md"""
    sf_ellint_D_e(phi, k, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_D_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_D_e(phi, k, mode, result)
    ccall((:gsl_sf_ellint_D_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), phi, k, mode, result)
end

@doc md"""
    sf_ellint_D(phi, k, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_D(double phi, double k, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_D (double phi, double k, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_D\_e (double phi, double k, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These functions compute the incomplete elliptic integral $D(\phi,k)$
> which is defined through the Carlson form $RD(x,y,z)$ by the following
> relation,
>
> not texinfo
>
> $$D(\phi,k) = {1 \over 3} (\sin \phi)^3 RD (1-\sin^2(\phi), 1-k^2 \sin^2(\phi), 1)$$
>
> texinfo
>
>     D(\phi,k) = (1/3)(\sin(\phi))^3 RD (1-\sin^2(\phi), 1-k^2 \sin^2(\phi), 1).

"""
function sf_ellint_D(phi, k, mode)
    ccall((:gsl_sf_ellint_D, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), phi, k, mode)
end

@doc md"""
    sf_ellint_RC_e(x, y, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RC_e(double x, double y, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RC_e(x, y, mode, result)
    ccall((:gsl_sf_ellint_RC_e, libgsl), Cint, (Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, mode, result)
end

@doc md"""
    sf_ellint_RC(x, y, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RC(double x, double y, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_RC (double x, double y, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_RC\_e (double x, double y, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $RC(x,y)$ to
> the accuracy specified by the mode variable `mode`.

"""
function sf_ellint_RC(x, y, mode)
    ccall((:gsl_sf_ellint_RC, libgsl), Cdouble, (Cdouble, Cdouble, gsl_mode_t), x, y, mode)
end

@doc md"""
    sf_ellint_RD_e(x, y, z, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RD_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RD_e(x, y, z, mode, result)
    ccall((:gsl_sf_ellint_RD_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, mode, result)
end

@doc md"""
    sf_ellint_RD(x, y, z, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RD(double x, double y, double z, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_RD (double x, double y, double z, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_RD\_e (double x, double y, double z, gsl\_mode\_t
> mode, gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $RD(x,y,z)$ to
> the accuracy specified by the mode variable `mode`.

"""
function sf_ellint_RD(x, y, z, mode)
    ccall((:gsl_sf_ellint_RD, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, mode)
end

@doc md"""
    sf_ellint_RF_e(x, y, z, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RF_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RF_e(x, y, z, mode, result)
    ccall((:gsl_sf_ellint_RF_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, mode, result)
end

@doc md"""
    sf_ellint_RF(x, y, z, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RF(double x, double y, double z, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_RF (double x, double y, double z, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_RF\_e (double x, double y, double z, gsl\_mode\_t
> mode, gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $RF(x,y,z)$ to
> the accuracy specified by the mode variable `mode`.

"""
function sf_ellint_RF(x, y, z, mode)
    ccall((:gsl_sf_ellint_RF, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, mode)
end

@doc md"""
    sf_ellint_RJ_e(x, y, z, p, mode, result) -> Cint

C signature:
`int gsl_sf_ellint_RJ_e(double x, double y, double z, double p, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RJ_e(x, y, z, p, mode, result)
    ccall((:gsl_sf_ellint_RJ_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, y, z, p, mode, result)
end

@doc md"""
    sf_ellint_RJ(x, y, z, p, mode) -> Cdouble

C signature:
`double gsl_sf_ellint_RJ(double x, double y, double z, double p, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_ellint_RJ (double x, double y, double z, double p, gsl_mode_t mode)`

> int gsl\_sf\_ellint\_RJ\_e (double x, double y, double z, double p,
> gsl\_mode\_t mode, gsl\_sf\_result \* result)

> These routines compute the incomplete elliptic integral $RJ(x,y,z,p)$
> to the accuracy specified by the mode variable `mode`.

"""
function sf_ellint_RJ(x, y, z, p, mode)
    ccall((:gsl_sf_ellint_RJ, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble, gsl_mode_t), x, y, z, p, mode)
end

