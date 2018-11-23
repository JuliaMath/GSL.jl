#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_legendre.h ########################################################


@doc md"""
    sf_legendre_Pl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Pl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Pl_e(l, x, result)
    ccall((:gsl_sf_legendre_Pl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_legendre_Pl(l, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Pl(const int l, const double x)`

GSL documentation:

### `double gsl_sf_legendre_Pl (int l, double x)`

> int gsl\_sf\_legendre\_Pl\_e (int l, double x, gsl\_sf\_result \*
> result)

> These functions evaluate the Legendre polynomial $P_l(x)$ for a
> specific value of `l`, `x` subject to $l \ge 0$ and $|x| \le 1$.

"""
function sf_legendre_Pl(l, x)
    ccall((:gsl_sf_legendre_Pl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_legendre_Pl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_Pl_array( const int lmax, const double x, double * result_array )`

GSL documentation:

### `int gsl_sf_legendre_Pl_array (int lmax, double x, double result_array[])`

> int gsl\_sf\_legendre\_Pl\_deriv\_array (int lmax, double x, double
> result\_array\[\], double result\_deriv\_array\[\])

> These functions compute arrays of Legendre polynomials $P_l(x)$ and
> derivatives $dP_l(x)/dx$ for $l = 0, \dots, lmax$ and $|x| \le 1$.

"""
function sf_legendre_Pl_array(lmax, x, result_array)
    ccall((:gsl_sf_legendre_Pl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

@doc md"""
    sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_Pl_deriv_array( const int lmax, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_Pl_deriv_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, x, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_P1_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P1_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P1_e(x, result)
    ccall((:gsl_sf_legendre_P1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_legendre_P2_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P2_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P2_e(x, result)
    ccall((:gsl_sf_legendre_P2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_legendre_P3_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_P3_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P3_e(x, result)
    ccall((:gsl_sf_legendre_P3_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_legendre_P1(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P1(const double x)`

GSL documentation:

### `double gsl_sf_legendre_P1 (double x)`

> double gsl\_sf\_legendre\_P2 (double x) double gsl\_sf\_legendre\_P3
> (double x) int gsl\_sf\_legendre\_P1\_e (double x, gsl\_sf\_result \*
> result) int gsl\_sf\_legendre\_P2\_e (double x, gsl\_sf\_result \*
> result) int gsl\_sf\_legendre\_P3\_e (double x, gsl\_sf\_result \*
> result)

> These functions evaluate the Legendre polynomials $P_l(x)$ using
> explicit representations for $l = 1, 2, 3$.

"""
function sf_legendre_P1(x)
    ccall((:gsl_sf_legendre_P1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_legendre_P2(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P2(const double x)`
"""
function sf_legendre_P2(x)
    ccall((:gsl_sf_legendre_P2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_legendre_P3(x) -> Cdouble

C signature:
`double gsl_sf_legendre_P3(const double x)`
"""
function sf_legendre_P3(x)
    ccall((:gsl_sf_legendre_P3, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_legendre_Q0_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_Q0_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q0_e(x, result)
    ccall((:gsl_sf_legendre_Q0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_legendre_Q0(x) -> Cdouble

C signature:
`double gsl_sf_legendre_Q0(const double x)`

GSL documentation:

### `double gsl_sf_legendre_Q0 (double x)`

> int gsl\_sf\_legendre\_Q0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Legendre function $Q_0(x)$ for $x > -1$ and
> $x \ne 1$.

"""
function sf_legendre_Q0(x)
    ccall((:gsl_sf_legendre_Q0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_legendre_Q1_e(x, result) -> Cint

C signature:
`int gsl_sf_legendre_Q1_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q1_e(x, result)
    ccall((:gsl_sf_legendre_Q1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_legendre_Q1(x) -> Cdouble

C signature:
`double gsl_sf_legendre_Q1(const double x)`

GSL documentation:

### `double gsl_sf_legendre_Q1 (double x)`

> int gsl\_sf\_legendre\_Q1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Legendre function $Q_1(x)$ for $x > -1$ and
> $x \ne 1$.

"""
function sf_legendre_Q1(x)
    ccall((:gsl_sf_legendre_Q1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_legendre_Ql_e(l, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Ql_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Ql_e(l, x, result)
    ccall((:gsl_sf_legendre_Ql_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_legendre_Ql(l, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Ql(const int l, const double x)`

GSL documentation:

### `double gsl_sf_legendre_Ql (int l, double x)`

> int gsl\_sf\_legendre\_Ql\_e (int l, double x, gsl\_sf\_result \*
> result)

> These routines compute the Legendre function $Q_l(x)$ for $x > -1$,
> $x \ne 1$ and $l \ge 0$.

"""
function sf_legendre_Ql(l, x)
    ccall((:gsl_sf_legendre_Ql, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_legendre_Plm_e(l, m, x, result) -> Cint

C signature:
`int gsl_sf_legendre_Plm_e(const int l, const int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Plm_e(l, m, x, result)
    ccall((:gsl_sf_legendre_Plm_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), l, m, x, result)
end

@doc md"""
    sf_legendre_Plm(l, m, x) -> Cdouble

C signature:
`double gsl_sf_legendre_Plm(const int l, const int m, const double x)`

GSL documentation:

### `double gsl_sf_legendre_Plm (int l, int m, double x)`

> int gsl\_sf\_legendre\_Plm\_e (int l, int m, double x, gsl\_sf\_result
> \* result)

> These routines compute the associated Legendre polynomial $P_l^m(x)$
> for $m \ge 0$, $l \ge m$, and $|x| \le 1$.

"""
function sf_legendre_Plm(l, m, x)
    ccall((:gsl_sf_legendre_Plm, libgsl), Cdouble, (Cint, Cint, Cdouble), l, m, x)
end

@doc md"""
    sf_legendre_sphPlm_e(l, m, x, result) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_e(const int l, int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_sphPlm_e(l, m, x, result)
    ccall((:gsl_sf_legendre_sphPlm_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), l, m, x, result)
end

@doc md"""
    sf_legendre_sphPlm(l, m, x) -> Cdouble

C signature:
`double gsl_sf_legendre_sphPlm(const int l, const int m, const double x)`

GSL documentation:

### `double gsl_sf_legendre_sphPlm (int l, int m, double x)`

> int gsl\_sf\_legendre\_sphPlm\_e (int l, int m, double x,
> gsl\_sf\_result \* result)

> These routines compute the normalized associated Legendre polynomial
> $\sqrt{(2l+1)/(4\pi)} \sqrt{(l-m)!/(l+m)!} P_l^m(x)$ suitable for use
> in spherical harmonics. The parameters must satisfy $m \ge 0$,
> $l \ge m$, and $|x| \le 1$. These routines avoid the overflows that
> occur for the standard normalization of $P_l^m(x)$.

"""
function sf_legendre_sphPlm(l, m, x)
    ccall((:gsl_sf_legendre_sphPlm, libgsl), Cdouble, (Cint, Cint, Cdouble), l, m, x)
end

@doc md"""
    sf_legendre_sphPlm_array(lmax, m, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_array( const int lmax, int m, const double x, double * result_array )`

GSL documentation:

### `int gsl_sf_legendre_sphPlm_array (int lmax, int m, double x, double result_array[])`

> int gsl\_sf\_legendre\_sphPlm\_deriv\_array (int lmax, int m, double
> x, double result\_array\[\], double result\_deriv\_array\[\])

> These functions are now deprecated and will be removed in a future
> release; see `gsl_sf_legendre_array` and
> `gsl_sf_legendre_deriv_array`.

"""
function sf_legendre_sphPlm_array(lmax, m, x, result_array)
    ccall((:gsl_sf_legendre_sphPlm_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), lmax, m, x, result_array)
end

@doc md"""
    sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_sphPlm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_sphPlm_deriv_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lmax, m, x, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_array_size(lmax, m) -> Cint

C signature:
`int gsl_sf_legendre_array_size(const int lmax, const int m)`

GSL documentation:

### `int gsl_sf_legendre_array_size (const int lmax, const int m)`

> This function is now deprecated and will be removed in a future
> release.

"""
function sf_legendre_array_size(lmax, m)
    ccall((:gsl_sf_legendre_array_size, libgsl), Cint, (Cint, Cint), lmax, m)
end

@doc md"""
    sf_conicalP_half_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_half_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_half_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_half_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

@doc md"""
    sf_conicalP_half(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_half(const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_half (double lambda, double x)`

> int gsl\_sf\_conicalP\_half\_e (double lambda, double x,
> gsl\_sf\_result \* result)

> These routines compute the irregular Spherical Conical Function
> $P^{1/2}_{-1/2 + i \lambda}(x)$ for $x > -1$.

"""
function sf_conicalP_half(lambda, x)
    ccall((:gsl_sf_conicalP_half, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

@doc md"""
    sf_conicalP_mhalf_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_mhalf_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_mhalf_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_mhalf_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

@doc md"""
    sf_conicalP_mhalf(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_mhalf(const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_mhalf (double lambda, double x)`

> int gsl\_sf\_conicalP\_mhalf\_e (double lambda, double x,
> gsl\_sf\_result \* result)

> These routines compute the regular Spherical Conical Function
> $P^{-1/2}_{-1/2 + i \lambda}(x)$ for $x > -1$.

"""
function sf_conicalP_mhalf(lambda, x)
    ccall((:gsl_sf_conicalP_mhalf, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

@doc md"""
    sf_conicalP_0_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_0_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_0_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

@doc md"""
    sf_conicalP_0(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_0(const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_0 (double lambda, double x)`

> int gsl\_sf\_conicalP\_0\_e (double lambda, double x, gsl\_sf\_result
> \* result)

> These routines compute the conical function
> $P^0_{-1/2 + i \lambda}(x)$ for $x > -1$.

"""
function sf_conicalP_0(lambda, x)
    ccall((:gsl_sf_conicalP_0, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

@doc md"""
    sf_conicalP_1_e(lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_1_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_1_e(lambda, x, result)
    ccall((:gsl_sf_conicalP_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, x, result)
end

@doc md"""
    sf_conicalP_1(lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_1(const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_1 (double lambda, double x)`

> int gsl\_sf\_conicalP\_1\_e (double lambda, double x, gsl\_sf\_result
> \* result)

> These routines compute the conical function
> $P^1_{-1/2 + i \lambda}(x)$ for $x > -1$.

"""
function sf_conicalP_1(lambda, x)
    ccall((:gsl_sf_conicalP_1, libgsl), Cdouble, (Cdouble, Cdouble), lambda, x)
end

@doc md"""
    sf_conicalP_sph_reg_e(l, lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_sph_reg_e(const int l, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_sph_reg_e(l, lambda, x, result)
    ccall((:gsl_sf_conicalP_sph_reg_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), l, lambda, x, result)
end

@doc md"""
    sf_conicalP_sph_reg(l, lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_sph_reg(const int l, const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_sph_reg (int l, double lambda, double x)`

> int gsl\_sf\_conicalP\_sph\_reg\_e (int l, double lambda, double x,
> gsl\_sf\_result \* result)

> These routines compute the Regular Spherical Conical Function
> $P^{-1/2-l}_{-1/2 + i \lambda}(x)$ for $x > -1$ and $l \ge -1$.

"""
function sf_conicalP_sph_reg(l, lambda, x)
    ccall((:gsl_sf_conicalP_sph_reg, libgsl), Cdouble, (Cint, Cdouble, Cdouble), l, lambda, x)
end

@doc md"""
    sf_conicalP_cyl_reg_e(m, lambda, x, result) -> Cint

C signature:
`int gsl_sf_conicalP_cyl_reg_e(const int m, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_cyl_reg_e(m, lambda, x, result)
    ccall((:gsl_sf_conicalP_cyl_reg_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), m, lambda, x, result)
end

@doc md"""
    sf_conicalP_cyl_reg(m, lambda, x) -> Cdouble

C signature:
`double gsl_sf_conicalP_cyl_reg(const int m, const double lambda, const double x)`

GSL documentation:

### `double gsl_sf_conicalP_cyl_reg (int m, double lambda, double x)`

> int gsl\_sf\_conicalP\_cyl\_reg\_e (int m, double lambda, double x,
> gsl\_sf\_result \* result)

> These routines compute the Regular Cylindrical Conical Function
> $P^{-m}_{-1/2 + i \lambda}(x)$ for $x > -1$ and $m \ge -1$.

"""
function sf_conicalP_cyl_reg(m, lambda, x)
    ccall((:gsl_sf_conicalP_cyl_reg, libgsl), Cdouble, (Cint, Cdouble, Cdouble), m, lambda, x)
end

@doc md"""
    sf_legendre_H3d_0_e(lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_0_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_0_e(lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, eta, result)
end

@doc md"""
    sf_legendre_H3d_0(lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d_0(const double lambda, const double eta)`

GSL documentation:

### `double gsl_sf_legendre_H3d_0 (double lambda, double eta)`

> int gsl\_sf\_legendre\_H3d\_0\_e (double lambda, double eta,
> gsl\_sf\_result \* result)

> These routines compute the zeroth radial eigenfunction of the
> Laplacian on the 3-dimensional hyperbolic space,
>
> $$L^{H3d}_0(\lambda,\eta) := {\sin(\lambda\eta) \over \lambda\sinh(\eta)}$$
>
> for $\eta \ge 0$. In the flat limit this takes the form
> $L^{H3d}_0(\lambda,\eta) = j_0(\lambda\eta)$.

"""
function sf_legendre_H3d_0(lambda, eta)
    ccall((:gsl_sf_legendre_H3d_0, libgsl), Cdouble, (Cdouble, Cdouble), lambda, eta)
end

@doc md"""
    sf_legendre_H3d_1_e(lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_1_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_1_e(lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), lambda, eta, result)
end

@doc md"""
    sf_legendre_H3d_1(lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d_1(const double lambda, const double eta)`

GSL documentation:

### `double gsl_sf_legendre_H3d_1 (double lambda, double eta)`

> int gsl\_sf\_legendre\_H3d\_1\_e (double lambda, double eta,
> gsl\_sf\_result \* result)

> These routines compute the first radial eigenfunction of the Laplacian
> on the 3-dimensional hyperbolic space,
>
> $$L^{H3d}_1(\lambda,\eta) := {1\over\sqrt{\lambda^2 + 1}} {\left(\sin(\lambda \eta)\over \lambda \sinh(\eta)\right)} \left(\coth(\eta) - \lambda \cot(\lambda\eta)\right)$$
>
> for $\eta \ge 0$ In the flat limit this takes the form
> $L^{H3d}_1(\lambda,\eta) = j_1(\lambda\eta)$.

"""
function sf_legendre_H3d_1(lambda, eta)
    ccall((:gsl_sf_legendre_H3d_1, libgsl), Cdouble, (Cdouble, Cdouble), lambda, eta)
end

@doc md"""
    sf_legendre_H3d_e(l, lambda, eta, result) -> Cint

C signature:
`int gsl_sf_legendre_H3d_e(const int l, const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_e(l, lambda, eta, result)
    ccall((:gsl_sf_legendre_H3d_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), l, lambda, eta, result)
end

@doc md"""
    sf_legendre_H3d(l, lambda, eta) -> Cdouble

C signature:
`double gsl_sf_legendre_H3d(const int l, const double lambda, const double eta)`

GSL documentation:

### `double gsl_sf_legendre_H3d (int l, double lambda, double eta)`

> int gsl\_sf\_legendre\_H3d\_e (int l, double lambda, double eta,
> gsl\_sf\_result \* result)

> These routines compute the `l`-th radial eigenfunction of the
> Laplacian on the 3-dimensional hyperbolic space $\eta \ge 0$ and
> $l \ge 0$. In the flat limit this takes the form
> $L^{H3d}_l(\lambda,\eta) = j_l(\lambda\eta)$.

"""
function sf_legendre_H3d(l, lambda, eta)
    ccall((:gsl_sf_legendre_H3d, libgsl), Cdouble, (Cint, Cdouble, Cdouble), l, lambda, eta)
end

@doc md"""
    sf_legendre_H3d_array(lmax, lambda, eta, result_array) -> Cint

C signature:
`int gsl_sf_legendre_H3d_array(const int lmax, const double lambda, const double eta, double * result_array)`

GSL documentation:

### `int gsl_sf_legendre_H3d_array (int lmax, double lambda, double eta, double result_array[])`

> This function computes an array of radial eigenfunctions
> $L^{H3d}_l( \lambda, \eta)$ for $0 \le l \le lmax$.

"""
function sf_legendre_H3d_array(lmax, lambda, eta, result_array)
    ccall((:gsl_sf_legendre_H3d_array, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), lmax, lambda, eta, result_array)
end

@doc md"""
    sf_legendre_array(norm, lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_legendre_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`

GSL documentation:

### `int gsl_sf_legendre_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`

> int gsl\_sf\_legendre\_array\_e (const gsl\_sf\_legendre\_t norm,
> const size\_t lmax, const double x, const double csphase, double
> result\_array\[\])

> These functions calculate all normalized associated Legendre
> polynomials for $0 \le l \le lmax$ and $0 \le m \le l$ for
> $|x| \le 1$. The `norm` parameter specifies which normalization is
> used. The normalized $P_l^m(x)$ values are stored in `result_array`,
> whose minimum size can be obtained from calling
> `gsl_sf_legendre_array_n`. The array index of $P_l^m(x)$ is obtained
> from calling `gsl_sf_legendre_array_index(l, m)`. To include or
> exclude the Condon-Shortley phase factor of $(-1)^m$, set the
> parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_array(norm, lmax, x, result_array)
    ccall((:gsl_sf_legendre_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}), norm, lmax, x, result_array)
end

@doc md"""
    sf_legendre_array_e(norm, lmax, x, csphase, result_array) -> Cint

C signature:
`int gsl_sf_legendre_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[])`
"""
function sf_legendre_array_e(norm, lmax, x, csphase, result_array)
    ccall((:gsl_sf_legendre_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}), norm, lmax, x, csphase, result_array)
end

@doc md"""
    sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

> int gsl\_sf\_legendre\_deriv\_array\_e (const gsl\_sf\_legendre\_t
> norm, const size\_t lmax, const double x, const double csphase, double
> result\_array\[\], double result\_deriv\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their first derivatives up to degree `lmax` for $|x| < 1$. The
> parameter `norm` specifies the normalization used. The normalized
> $P_l^m(x)$ values and their derivatives $dP_l^m(x)/dx$ are stored in
> `result_array` and `result_deriv_array` respectively. To include or
> exclude the Condon-Shortley phase factor of $(-1)^m$, set the
> parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv_alt_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

> int gsl\_sf\_legendre\_deriv\_alt\_array\_e (const
> gsl\_sf\_legendre\_t norm, const size\_t lmax, const double x, const
> double csphase, double result\_array\[\], double
> result\_deriv\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their (alternate) first derivatives up to degree `lmax` for
> $|x| < 1$. The normalized $P_l^m(x)$ values and their derivatives
> $dP_l^m(\cos{\theta})/d\theta$ are stored in `result_array` and
> `result_deriv_array` respectively. To include or exclude the
> Condon-Shortley phase factor of $(-1)^m$, set the parameter `csphase`
> to either $-1$ or $1$ respectively in the `_e` function. This factor
> is excluded by default.

"""
function sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_alt_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    ccall((:gsl_sf_legendre_deriv_alt_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array)
end

@doc md"""
    sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv2_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

> int gsl\_sf\_legendre\_deriv2\_array\_e (const gsl\_sf\_legendre\_t
> norm, const size\_t lmax, const double x, const double csphase, double
> result\_array\[\], double result\_deriv\_array\[\], double
> result\_deriv2\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their first and second derivatives up to degree `lmax` for
> $|x| < 1$. The parameter `norm` specifies the normalization used. The
> normalized $P_l^m(x)$, their first derivatives $dP_l^m(x)/dx$, and
> their second derivatives $d^2 P_l^m(x)/dx^2$ are stored in
> `result_array`, `result_deriv_array`, and `result_deriv2_array`
> respectively. To include or exclude the Condon-Shortley phase factor
> of $(-1)^m$, set the parameter `csphase` to either $-1$ or $1$
> respectively in the `_e` function. This factor is excluded by default.

"""
function sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
end

@doc md"""
    sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
end

@doc md"""
    sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv2_alt_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

> int gsl\_sf\_legendre\_deriv2\_alt\_array\_e (const
> gsl\_sf\_legendre\_t norm, const size\_t lmax, const double x, const
> double csphase, double result\_array\[\], double
> result\_deriv\_array\[\], double result\_deriv2\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their (alternate) first and second derivatives up to degree `lmax`
> for $|x| < 1$. The parameter `norm` specifies the normalization used.
> The normalized $P_l^m(x)$, their first derivatives
> $dP_l^m(\cos{\theta})/d\theta$, and their second derivatives
> $d^2 P_l^m(\cos{\theta})/d\theta^2$ are stored in `result_array`,
> `result_deriv_array`, and `result_deriv2_array` respectively. To
> include or exclude the Condon-Shortley phase factor of $(-1)^m$, set
> the parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_alt_array, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
end

@doc md"""
    sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array) -> Cint

C signature:
`int gsl_sf_legendre_deriv2_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    ccall((:gsl_sf_legendre_deriv2_alt_array_e, libgsl), Cint, (gsl_sf_legendre_t, Csize_t, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
end

@doc md"""
    sf_legendre_array_n(lmax) -> Csize_t

C signature:
`size_t gsl_sf_legendre_array_n(const size_t lmax)`

GSL documentation:

### `size_t gsl_sf_legendre_array_n (const size_t lmax)`

> This function returns the minimum array size for maximum degree `lmax`
> needed for the array versions of the associated Legendre functions.
> Size is calculated as the total number of $P_l^m(x)$ functions, plus
> extra space for precomputing multiplicative factors used in the
> recurrence relations.

"""
function sf_legendre_array_n(lmax)
    ccall((:gsl_sf_legendre_array_n, libgsl), Csize_t, (Csize_t,), lmax)
end

@doc md"""
    sf_legendre_array_index(l, m) -> Csize_t

C signature:
`size_t gsl_sf_legendre_array_index(const size_t l, const size_t m)`

GSL documentation:

### `size_t gsl_sf_legendre_array_index (const size_t l, const size_t m)`

> This function returns the index into `result_array`,
> `result_deriv_array`, or `result_deriv2_array` corresponding to
> $P_l^m(x)$, $P_l^{'m}(x)$, or $P_l^{''m}(x)$. The index is given by
> $l(l+1)/2 + m$.

"""
function sf_legendre_array_index(l, m)
    ccall((:gsl_sf_legendre_array_index, libgsl), Csize_t, (Csize_t, Csize_t), l, m)
end

@doc md"""
    sf_legendre_nlm(lmax) -> Csize_t

C signature:
`size_t gsl_sf_legendre_nlm(const size_t lmax)`
"""
function sf_legendre_nlm(lmax)
    ccall((:gsl_sf_legendre_nlm, libgsl), Csize_t, (Csize_t,), lmax)
end

