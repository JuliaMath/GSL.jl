#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_coulomb.h #########################################################


@doc md"""
    sf_hydrogenicR_1_e(Z, r, result) -> Cint

C signature:
`int gsl_sf_hydrogenicR_1_e(const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_1_e(Z, r, result)
    ccall((:gsl_sf_hydrogenicR_1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), Z, r, result)
end

@doc md"""
    sf_hydrogenicR_1(Z, r) -> Cdouble

C signature:
`double gsl_sf_hydrogenicR_1(const double Z, const double r)`

GSL documentation:

### `double gsl_sf_hydrogenicR_1 (double Z, double r)`

> int gsl\_sf\_hydrogenicR\_1\_e (double Z, double r, gsl\_sf\_result \*
> result)

> These routines compute the lowest-order normalized hydrogenic bound
> state radial wavefunction $R_1 := 2Z \sqrt{Z} \exp(-Z r)$.

"""
function sf_hydrogenicR_1(Z, r)
    ccall((:gsl_sf_hydrogenicR_1, libgsl), Cdouble, (Cdouble, Cdouble), Z, r)
end

@doc md"""
    sf_hydrogenicR_e(n, l, Z, r, result) -> Cint

C signature:
`int gsl_sf_hydrogenicR_e(const int n, const int l, const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_e(n, l, Z, r, result)
    ccall((:gsl_sf_hydrogenicR_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), n, l, Z, r, result)
end

@doc md"""
    sf_hydrogenicR(n, l, Z, r) -> Cdouble

C signature:
`double gsl_sf_hydrogenicR(const int n, const int l, const double Z, const double r)`

GSL documentation:

### `double gsl_sf_hydrogenicR (int n, int l, double Z, double r)`

> int gsl\_sf\_hydrogenicR\_e (int n, int l, double Z, double r,
> gsl\_sf\_result \* result)

> These routines compute the `n`-th normalized hydrogenic bound state
> radial wavefunction,
>
> not texinfo
>
> $$R_n := {2 Z^{3/2} \over n^2}  \left({2Z r \over n}\right)^l  \sqrt{(n-l-1)! \over (n+l)!} \exp(-Z r/n) L^{2l+1}_{n-l-1}(2Z r / n).$$
>
> texinfo
>
> R\_n := 2 (Z^{3/2}/n^2) sqrt{(n-l-1)!/(n+l)!} exp(-Z r/n) (2Zr/n)^l  
>           L^{2l+1}\_{n-l-1}(2Zr/n).
>
> where $L^a_b(x)$ is the
> `generalized Laguerre polynomial <laguerre-functions>`. The
> normalization is chosen such that the wavefunction $\psi$ is given by
> $\psi(n,l,r) = R_n Y_{lm}$.

"""
function sf_hydrogenicR(n, l, Z, r)
    ccall((:gsl_sf_hydrogenicR, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), n, l, Z, r)
end

@doc md"""
    sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FG_e(const double eta, const double x, const double lam_F, const int k_lam_G, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`

GSL documentation:

### `int gsl_sf_coulomb_wave_FG_e (double eta, double x, double L_F, int k, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`

> This function computes the Coulomb wave functions $F_L(\eta,x)$,
> $G_{L-k}(\eta,x)$ and their derivatives $F'_L(\eta,x)$,
> $G'_{L-k}(\eta,x)$ with respect to $x$. The parameters are restricted
> to $L, L-k > -1/2$, $x > 0$ and integer $k$. Note that $L$ itself is
> not restricted to being an integer. The results are stored in the
> parameters F, G for the function values and `Fp`, `Gp` for the
> derivative values. If an overflow occurs, `GSL_EOVRFLW` is returned
> and scaling exponents are stored in the modifiable parameters `exp_F`,
> `exp_G`.

"""
function sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
    ccall((:gsl_sf_coulomb_wave_FG_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cint, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{gsl_sf_result}, Ref{Cdouble}, Ref{Cdouble}), eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
end

@doc md"""
    sf_coulomb_wave_F_array(lam_min, kmax, eta, x, fc_array, F_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_F_array( double lam_min, int kmax, double eta, double x, double * fc_array, double * F_exponent )`

GSL documentation:

### `int gsl_sf_coulomb_wave_F_array (double L_min, int kmax, double eta, double x, double fc_array[], double * F_exponent)`

> This function computes the Coulomb wave function $F_L(\eta,x)$ for
> $L = Lmin \dots Lmin + kmax$, storing the results in `fc_array`. In
> the case of overflow the exponent is stored in `F_exponent`.

"""
function sf_coulomb_wave_F_array(lam_min, kmax, eta, x, fc_array, F_exponent)
    ccall((:gsl_sf_coulomb_wave_F_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, F_exponent)
end

@doc md"""
    sf_coulomb_wave_FG_array(lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FG_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * gc_array, double * F_exponent, double * G_exponent )`

GSL documentation:

### `int gsl_sf_coulomb_wave_FG_array (double L_min, int kmax, double eta, double x, double fc_array[], double gc_array[], double * F_exponent, double * G_exponent)`

> This function computes the functions $F_L(\eta,x)$, $G_L(\eta,x)$ for
> $L = Lmin \dots Lmin + kmax$ storing the results in `fc_array` and
> `gc_array`. In the case of overflow the exponents are stored in
> `F_exponent` and `G_exponent`.

"""
function sf_coulomb_wave_FG_array(lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent)
    ccall((:gsl_sf_coulomb_wave_FG_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent)
end

@doc md"""
    sf_coulomb_wave_FGp_array(lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_FGp_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * fcp_array, double * gc_array, double * gcp_array, double * F_exponent, double * G_exponent )`

GSL documentation:

### `int gsl_sf_coulomb_wave_FGp_array (double L_min, int kmax, double eta, double x, double fc_array[], double fcp_array[], double gc_array[], double gcp_array[], double * F_exponent, double * G_exponent)`

> This function computes the functions $F_L(\eta,x)$, $G_L(\eta,x)$ and
> their derivatives $F'_L(\eta,x)$, $G'_L(\eta,x)$ for
> $L = Lmin \dots Lmin + kmax$ storing the results in `fc_array`,
> `gc_array`, `fcp_array` and `gcp_array`. In the case of overflow the
> exponents are stored in `F_exponent` and `G_exponent`.

"""
function sf_coulomb_wave_FGp_array(lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent)
    ccall((:gsl_sf_coulomb_wave_FGp_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent)
end

@doc md"""
    sf_coulomb_wave_sphF_array(lam_min, kmax, eta, x, fc_array, F_exponent) -> Cint

C signature:
`int gsl_sf_coulomb_wave_sphF_array(double lam_min, int kmax, double eta, double x, double * fc_array, double * F_exponent )`

GSL documentation:

### `int gsl_sf_coulomb_wave_sphF_array (double L_min, int kmax, double eta, double x, double fc_array[], double F_exponent[])`

> This function computes the Coulomb wave function divided by the
> argument $F_L(\eta, x)/x$ for $L = Lmin \dots Lmin + kmax$, storing
> the results in `fc_array`. In the case of overflow the exponent is
> stored in `F_exponent`. This function reduces to spherical Bessel
> functions in the limit $\eta \to 0$.

"""
function sf_coulomb_wave_sphF_array(lam_min, kmax, eta, x, fc_array, F_exponent)
    ccall((:gsl_sf_coulomb_wave_sphF_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), lam_min, kmax, eta, x, fc_array, F_exponent)
end

@doc md"""
    sf_coulomb_CL_e(L, eta, result) -> Cint

C signature:
`int gsl_sf_coulomb_CL_e(double L, double eta, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_coulomb_CL_e (double L, double eta, gsl_sf_result * result)`

> This function computes the Coulomb wave function normalization
> constant $C_L(\eta)$ for $L > -1$.

"""
function sf_coulomb_CL_e(L, eta, result)
    ccall((:gsl_sf_coulomb_CL_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), L, eta, result)
end

@doc md"""
    sf_coulomb_CL_array(Lmin, kmax, eta, cl) -> Cint

C signature:
`int gsl_sf_coulomb_CL_array(double Lmin, int kmax, double eta, double * cl)`

GSL documentation:

### `int gsl_sf_coulomb_CL_array (double Lmin, int kmax, double eta, double cl[])`

> This function computes the Coulomb wave function normalization
> constant

"""
function sf_coulomb_CL_array(Lmin, kmax, eta, cl)
    ccall((:gsl_sf_coulomb_CL_array, libgsl), Cint, (Cdouble, Cint, Cdouble, Ref{Cdouble}), Lmin, kmax, eta, cl)
end

