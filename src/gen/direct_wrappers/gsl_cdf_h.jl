#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_cdf.h ################################################################


@doc md"""
    cdf_ugaussian_P(x) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_P (const double x)`

GSL documentation:

### `double gsl_cdf_ugaussian_P (double x)`

> double gsl\_cdf\_ugaussian\_Q (double x) double
> gsl\_cdf\_ugaussian\_Pinv (double P) double gsl\_cdf\_ugaussian\_Qinv
> (double Q)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the unit Gaussian distribution.

"""
function cdf_ugaussian_P(x)
    ccall((:gsl_cdf_ugaussian_P, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    cdf_ugaussian_Q(x) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Q (const double x)`
"""
function cdf_ugaussian_Q(x)
    ccall((:gsl_cdf_ugaussian_Q, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    cdf_ugaussian_Pinv(P) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Pinv (const double P)`
"""
function cdf_ugaussian_Pinv(P)
    ccall((:gsl_cdf_ugaussian_Pinv, libgsl), Cdouble, (Cdouble,), P)
end

@doc md"""
    cdf_ugaussian_Qinv(Q) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Qinv (const double Q)`
"""
function cdf_ugaussian_Qinv(Q)
    ccall((:gsl_cdf_ugaussian_Qinv, libgsl), Cdouble, (Cdouble,), Q)
end

@doc md"""
    cdf_gaussian_P(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_P (const double x, const double sigma)`

GSL documentation:

### `double gsl_cdf_gaussian_P (double x, double sigma)`

> double gsl\_cdf\_gaussian\_Q (double x, double sigma) double
> gsl\_cdf\_gaussian\_Pinv (double P, double sigma) double
> gsl\_cdf\_gaussian\_Qinv (double Q, double sigma)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Gaussian distribution with standard
> deviation `sigma`.

"""
function cdf_gaussian_P(x, sigma)
    ccall((:gsl_cdf_gaussian_P, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    cdf_gaussian_Q(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Q (const double x, const double sigma)`
"""
function cdf_gaussian_Q(x, sigma)
    ccall((:gsl_cdf_gaussian_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    cdf_gaussian_Pinv(P, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Pinv (const double P, const double sigma)`
"""
function cdf_gaussian_Pinv(P, sigma)
    ccall((:gsl_cdf_gaussian_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, sigma)
end

@doc md"""
    cdf_gaussian_Qinv(Q, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Qinv (const double Q, const double sigma)`
"""
function cdf_gaussian_Qinv(Q, sigma)
    ccall((:gsl_cdf_gaussian_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, sigma)
end

@doc md"""
    cdf_gamma_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_gamma_P (double x, double a, double b)`

> double gsl\_cdf\_gamma\_Q (double x, double a, double b) double
> gsl\_cdf\_gamma\_Pinv (double P, double a, double b) double
> gsl\_cdf\_gamma\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the gamma distribution with parameters
> `a` and `b`.

"""
function cdf_gamma_P(x, a, b)
    ccall((:gsl_cdf_gamma_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gamma_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Q (const double x, const double a, const double b)`
"""
function cdf_gamma_Q(x, a, b)
    ccall((:gsl_cdf_gamma_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gamma_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Pinv (const double P, const double a, const double b)`
"""
function cdf_gamma_Pinv(P, a, b)
    ccall((:gsl_cdf_gamma_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_gamma_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Qinv (const double Q, const double a, const double b)`
"""
function cdf_gamma_Qinv(Q, a, b)
    ccall((:gsl_cdf_gamma_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_cauchy_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_P (const double x, const double a)`

GSL documentation:

### `double gsl_cdf_cauchy_P (double x, double a)`

> double gsl\_cdf\_cauchy\_Q (double x, double a) double
> gsl\_cdf\_cauchy\_Pinv (double P, double a) double
> gsl\_cdf\_cauchy\_Qinv (double Q, double a)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Cauchy distribution with scale
> parameter `a`.

"""
function cdf_cauchy_P(x, a)
    ccall((:gsl_cdf_cauchy_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_cauchy_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Q (const double x, const double a)`
"""
function cdf_cauchy_Q(x, a)
    ccall((:gsl_cdf_cauchy_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_cauchy_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Pinv (const double P, const double a)`
"""
function cdf_cauchy_Pinv(P, a)
    ccall((:gsl_cdf_cauchy_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

@doc md"""
    cdf_cauchy_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Qinv (const double Q, const double a)`
"""
function cdf_cauchy_Qinv(Q, a)
    ccall((:gsl_cdf_cauchy_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

@doc md"""
    cdf_laplace_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_P (const double x, const double a)`

GSL documentation:

### `double gsl_cdf_laplace_P (double x, double a)`

> double gsl\_cdf\_laplace\_Q (double x, double a) double
> gsl\_cdf\_laplace\_Pinv (double P, double a) double
> gsl\_cdf\_laplace\_Qinv (double Q, double a)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Laplace distribution with width `a`.

"""
function cdf_laplace_P(x, a)
    ccall((:gsl_cdf_laplace_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_laplace_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Q (const double x, const double a)`
"""
function cdf_laplace_Q(x, a)
    ccall((:gsl_cdf_laplace_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_laplace_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Pinv (const double P, const double a)`
"""
function cdf_laplace_Pinv(P, a)
    ccall((:gsl_cdf_laplace_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

@doc md"""
    cdf_laplace_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Qinv (const double Q, const double a)`
"""
function cdf_laplace_Qinv(Q, a)
    ccall((:gsl_cdf_laplace_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

@doc md"""
    cdf_rayleigh_P(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_P (const double x, const double sigma)`

GSL documentation:

### `double gsl_cdf_rayleigh_P (double x, double sigma)`

> double gsl\_cdf\_rayleigh\_Q (double x, double sigma) double
> gsl\_cdf\_rayleigh\_Pinv (double P, double sigma) double
> gsl\_cdf\_rayleigh\_Qinv (double Q, double sigma)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Rayleigh distribution with scale
> parameter `sigma`.

"""
function cdf_rayleigh_P(x, sigma)
    ccall((:gsl_cdf_rayleigh_P, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    cdf_rayleigh_Q(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Q (const double x, const double sigma)`
"""
function cdf_rayleigh_Q(x, sigma)
    ccall((:gsl_cdf_rayleigh_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    cdf_rayleigh_Pinv(P, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Pinv (const double P, const double sigma)`
"""
function cdf_rayleigh_Pinv(P, sigma)
    ccall((:gsl_cdf_rayleigh_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, sigma)
end

@doc md"""
    cdf_rayleigh_Qinv(Q, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Qinv (const double Q, const double sigma)`
"""
function cdf_rayleigh_Qinv(Q, sigma)
    ccall((:gsl_cdf_rayleigh_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, sigma)
end

@doc md"""
    cdf_chisq_P(x, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_P (const double x, const double nu)`

GSL documentation:

### `double gsl_cdf_chisq_P (double x, double nu)`

> double gsl\_cdf\_chisq\_Q (double x, double nu) double
> gsl\_cdf\_chisq\_Pinv (double P, double nu) double
> gsl\_cdf\_chisq\_Qinv (double Q, double nu)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the chi-squared distribution with `nu`
> degrees of freedom.

"""
function cdf_chisq_P(x, nu)
    ccall((:gsl_cdf_chisq_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    cdf_chisq_Q(x, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Q (const double x, const double nu)`
"""
function cdf_chisq_Q(x, nu)
    ccall((:gsl_cdf_chisq_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    cdf_chisq_Pinv(P, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Pinv (const double P, const double nu)`
"""
function cdf_chisq_Pinv(P, nu)
    ccall((:gsl_cdf_chisq_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, nu)
end

@doc md"""
    cdf_chisq_Qinv(Q, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Qinv (const double Q, const double nu)`
"""
function cdf_chisq_Qinv(Q, nu)
    ccall((:gsl_cdf_chisq_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, nu)
end

@doc md"""
    cdf_exponential_P(x, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_P (const double x, const double mu)`

GSL documentation:

### `double gsl_cdf_exponential_P (double x, double mu)`

> double gsl\_cdf\_exponential\_Q (double x, double mu) double
> gsl\_cdf\_exponential\_Pinv (double P, double mu) double
> gsl\_cdf\_exponential\_Qinv (double Q, double mu)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the exponential distribution with mean
> `mu`.

"""
function cdf_exponential_P(x, mu)
    ccall((:gsl_cdf_exponential_P, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

@doc md"""
    cdf_exponential_Q(x, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Q (const double x, const double mu)`
"""
function cdf_exponential_Q(x, mu)
    ccall((:gsl_cdf_exponential_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

@doc md"""
    cdf_exponential_Pinv(P, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Pinv (const double P, const double mu)`
"""
function cdf_exponential_Pinv(P, mu)
    ccall((:gsl_cdf_exponential_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, mu)
end

@doc md"""
    cdf_exponential_Qinv(Q, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Qinv (const double Q, const double mu)`
"""
function cdf_exponential_Qinv(Q, mu)
    ccall((:gsl_cdf_exponential_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, mu)
end

@doc md"""
    cdf_exppow_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_exppow_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_exppow_P (double x, double a, double b)`

> double gsl\_cdf\_exppow\_Q (double x, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ for the exponential power distribution with parameters `a` and
> `b`.

"""
function cdf_exppow_P(x, a, b)
    ccall((:gsl_cdf_exppow_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_exppow_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_exppow_Q (const double x, const double a, const double b)`
"""
function cdf_exppow_Q(x, a, b)
    ccall((:gsl_cdf_exppow_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_tdist_P(x, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_P (const double x, const double nu)`

GSL documentation:

### `double gsl_cdf_tdist_P (double x, double nu)`

> double gsl\_cdf\_tdist\_Q (double x, double nu) double
> gsl\_cdf\_tdist\_Pinv (double P, double nu) double
> gsl\_cdf\_tdist\_Qinv (double Q, double nu)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the t-distribution with `nu` degrees of
> freedom.

"""
function cdf_tdist_P(x, nu)
    ccall((:gsl_cdf_tdist_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    cdf_tdist_Q(x, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Q (const double x, const double nu)`
"""
function cdf_tdist_Q(x, nu)
    ccall((:gsl_cdf_tdist_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    cdf_tdist_Pinv(P, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Pinv (const double P, const double nu)`
"""
function cdf_tdist_Pinv(P, nu)
    ccall((:gsl_cdf_tdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, nu)
end

@doc md"""
    cdf_tdist_Qinv(Q, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Qinv (const double Q, const double nu)`
"""
function cdf_tdist_Qinv(Q, nu)
    ccall((:gsl_cdf_tdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, nu)
end

@doc md"""
    cdf_fdist_P(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_P (const double x, const double nu1, const double nu2)`

GSL documentation:

### `double gsl_cdf_fdist_P (double x, double nu1, double nu2)`

> double gsl\_cdf\_fdist\_Q (double x, double nu1, double nu2) double
> gsl\_cdf\_fdist\_Pinv (double P, double nu1, double nu2) double
> gsl\_cdf\_fdist\_Qinv (double Q, double nu1, double nu2)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the F-distribution with `nu1` and `nu2`
> degrees of freedom.

"""
function cdf_fdist_P(x, nu1, nu2)
    ccall((:gsl_cdf_fdist_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

@doc md"""
    cdf_fdist_Q(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Q (const double x, const double nu1, const double nu2)`
"""
function cdf_fdist_Q(x, nu1, nu2)
    ccall((:gsl_cdf_fdist_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

@doc md"""
    cdf_fdist_Pinv(P, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Pinv (const double P, const double nu1, const double nu2)`
"""
function cdf_fdist_Pinv(P, nu1, nu2)
    ccall((:gsl_cdf_fdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, nu1, nu2)
end

@doc md"""
    cdf_fdist_Qinv(Q, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Qinv (const double Q, const double nu1, const double nu2)`
"""
function cdf_fdist_Qinv(Q, nu1, nu2)
    ccall((:gsl_cdf_fdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, nu1, nu2)
end

@doc md"""
    cdf_beta_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_beta_P (double x, double a, double b)`

> double gsl\_cdf\_beta\_Q (double x, double a, double b) double
> gsl\_cdf\_beta\_Pinv (double P, double a, double b) double
> gsl\_cdf\_beta\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the beta distribution with parameters
> `a` and `b`.

"""
function cdf_beta_P(x, a, b)
    ccall((:gsl_cdf_beta_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_beta_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Q (const double x, const double a, const double b)`
"""
function cdf_beta_Q(x, a, b)
    ccall((:gsl_cdf_beta_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_beta_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Pinv (const double P, const double a, const double b)`
"""
function cdf_beta_Pinv(P, a, b)
    ccall((:gsl_cdf_beta_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_beta_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Qinv (const double Q, const double a, const double b)`
"""
function cdf_beta_Qinv(Q, a, b)
    ccall((:gsl_cdf_beta_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_flat_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_flat_P (double x, double a, double b)`

> double gsl\_cdf\_flat\_Q (double x, double a, double b) double
> gsl\_cdf\_flat\_Pinv (double P, double a, double b) double
> gsl\_cdf\_flat\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for a uniform distribution from `a` to `b`.

"""
function cdf_flat_P(x, a, b)
    ccall((:gsl_cdf_flat_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_flat_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Q (const double x, const double a, const double b)`
"""
function cdf_flat_Q(x, a, b)
    ccall((:gsl_cdf_flat_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_flat_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Pinv (const double P, const double a, const double b)`
"""
function cdf_flat_Pinv(P, a, b)
    ccall((:gsl_cdf_flat_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_flat_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Qinv (const double Q, const double a, const double b)`
"""
function cdf_flat_Qinv(Q, a, b)
    ccall((:gsl_cdf_flat_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_lognormal_P(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_P (const double x, const double zeta, const double sigma)`

GSL documentation:

### `double gsl_cdf_lognormal_P (double x, double zeta, double sigma)`

> double gsl\_cdf\_lognormal\_Q (double x, double zeta, double sigma)
> double gsl\_cdf\_lognormal\_Pinv (double P, double zeta, double sigma)
> double gsl\_cdf\_lognormal\_Qinv (double Q, double zeta, double sigma)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the lognormal distribution with
> parameters `zeta` and `sigma`.

"""
function cdf_lognormal_P(x, zeta, sigma)
    ccall((:gsl_cdf_lognormal_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

@doc md"""
    cdf_lognormal_Q(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Q (const double x, const double zeta, const double sigma)`
"""
function cdf_lognormal_Q(x, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

@doc md"""
    cdf_lognormal_Pinv(P, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Pinv (const double P, const double zeta, const double sigma)`
"""
function cdf_lognormal_Pinv(P, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, zeta, sigma)
end

@doc md"""
    cdf_lognormal_Qinv(Q, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Qinv (const double Q, const double zeta, const double sigma)`
"""
function cdf_lognormal_Qinv(Q, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, zeta, sigma)
end

@doc md"""
    cdf_gumbel1_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_gumbel1_P (double x, double a, double b)`

> double gsl\_cdf\_gumbel1\_Q (double x, double a, double b) double
> gsl\_cdf\_gumbel1\_Pinv (double P, double a, double b) double
> gsl\_cdf\_gumbel1\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Type-1 Gumbel distribution with
> parameters `a` and `b`.

"""
function cdf_gumbel1_P(x, a, b)
    ccall((:gsl_cdf_gumbel1_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gumbel1_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Q (const double x, const double a, const double b)`
"""
function cdf_gumbel1_Q(x, a, b)
    ccall((:gsl_cdf_gumbel1_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gumbel1_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Pinv (const double P, const double a, const double b)`
"""
function cdf_gumbel1_Pinv(P, a, b)
    ccall((:gsl_cdf_gumbel1_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_gumbel1_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Qinv (const double Q, const double a, const double b)`
"""
function cdf_gumbel1_Qinv(Q, a, b)
    ccall((:gsl_cdf_gumbel1_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_gumbel2_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_gumbel2_P (double x, double a, double b)`

> double gsl\_cdf\_gumbel2\_Q (double x, double a, double b) double
> gsl\_cdf\_gumbel2\_Pinv (double P, double a, double b) double
> gsl\_cdf\_gumbel2\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Type-2 Gumbel distribution with
> parameters `a` and `b`.

"""
function cdf_gumbel2_P(x, a, b)
    ccall((:gsl_cdf_gumbel2_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gumbel2_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Q (const double x, const double a, const double b)`
"""
function cdf_gumbel2_Q(x, a, b)
    ccall((:gsl_cdf_gumbel2_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_gumbel2_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Pinv (const double P, const double a, const double b)`
"""
function cdf_gumbel2_Pinv(P, a, b)
    ccall((:gsl_cdf_gumbel2_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_gumbel2_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Qinv (const double Q, const double a, const double b)`
"""
function cdf_gumbel2_Qinv(Q, a, b)
    ccall((:gsl_cdf_gumbel2_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_weibull_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_weibull_P (double x, double a, double b)`

> double gsl\_cdf\_weibull\_Q (double x, double a, double b) double
> gsl\_cdf\_weibull\_Pinv (double P, double a, double b) double
> gsl\_cdf\_weibull\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Weibull distribution with scale `a`
> and exponent `b`.

"""
function cdf_weibull_P(x, a, b)
    ccall((:gsl_cdf_weibull_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_weibull_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Q (const double x, const double a, const double b)`
"""
function cdf_weibull_Q(x, a, b)
    ccall((:gsl_cdf_weibull_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_weibull_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Pinv (const double P, const double a, const double b)`
"""
function cdf_weibull_Pinv(P, a, b)
    ccall((:gsl_cdf_weibull_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_weibull_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Qinv (const double Q, const double a, const double b)`
"""
function cdf_weibull_Qinv(Q, a, b)
    ccall((:gsl_cdf_weibull_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_pareto_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_P (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_cdf_pareto_P (double x, double a, double b)`

> double gsl\_cdf\_pareto\_Q (double x, double a, double b) double
> gsl\_cdf\_pareto\_Pinv (double P, double a, double b) double
> gsl\_cdf\_pareto\_Qinv (double Q, double a, double b)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the Pareto distribution with exponent
> `a` and scale `b`.

"""
function cdf_pareto_P(x, a, b)
    ccall((:gsl_cdf_pareto_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_pareto_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Q (const double x, const double a, const double b)`
"""
function cdf_pareto_Q(x, a, b)
    ccall((:gsl_cdf_pareto_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    cdf_pareto_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Pinv (const double P, const double a, const double b)`
"""
function cdf_pareto_Pinv(P, a, b)
    ccall((:gsl_cdf_pareto_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

@doc md"""
    cdf_pareto_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Qinv (const double Q, const double a, const double b)`
"""
function cdf_pareto_Qinv(Q, a, b)
    ccall((:gsl_cdf_pareto_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

@doc md"""
    cdf_logistic_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_P (const double x, const double a)`

GSL documentation:

### `double gsl_cdf_logistic_P (double x, double a)`

> double gsl\_cdf\_logistic\_Q (double x, double a) double
> gsl\_cdf\_logistic\_Pinv (double P, double a) double
> gsl\_cdf\_logistic\_Qinv (double Q, double a)

> These functions compute the cumulative distribution functions $P(x)$,
> $Q(x)$ and their inverses for the logistic distribution with scale
> parameter `a`.

"""
function cdf_logistic_P(x, a)
    ccall((:gsl_cdf_logistic_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_logistic_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Q (const double x, const double a)`
"""
function cdf_logistic_Q(x, a)
    ccall((:gsl_cdf_logistic_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    cdf_logistic_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Pinv (const double P, const double a)`
"""
function cdf_logistic_Pinv(P, a)
    ccall((:gsl_cdf_logistic_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

@doc md"""
    cdf_logistic_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Qinv (const double Q, const double a)`
"""
function cdf_logistic_Qinv(Q, a)
    ccall((:gsl_cdf_logistic_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

@doc md"""
    cdf_binomial_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_binomial_P (const unsigned int k, const double p, const unsigned int n)`

GSL documentation:

### `double gsl_cdf_binomial_P (unsigned int k, double p, unsigned int n)`

> double gsl\_cdf\_binomial\_Q (unsigned int k, double p, unsigned int
> n)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the binomial distribution with parameters `p` and `n`.

"""
function cdf_binomial_P(k, p, n)
    ccall((:gsl_cdf_binomial_P, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    cdf_binomial_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_binomial_Q (const unsigned int k, const double p, const unsigned int n)`
"""
function cdf_binomial_Q(k, p, n)
    ccall((:gsl_cdf_binomial_Q, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    cdf_poisson_P(k, mu) -> Cdouble

C signature:
`double gsl_cdf_poisson_P (const unsigned int k, const double mu)`

GSL documentation:

### `double gsl_cdf_poisson_P (unsigned int k, double mu)`

> double gsl\_cdf\_poisson\_Q (unsigned int k, double mu)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the Poisson distribution with parameter `mu`.

"""
function cdf_poisson_P(k, mu)
    ccall((:gsl_cdf_poisson_P, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

@doc md"""
    cdf_poisson_Q(k, mu) -> Cdouble

C signature:
`double gsl_cdf_poisson_Q (const unsigned int k, const double mu)`
"""
function cdf_poisson_Q(k, mu)
    ccall((:gsl_cdf_poisson_Q, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

@doc md"""
    cdf_geometric_P(k, p) -> Cdouble

C signature:
`double gsl_cdf_geometric_P (const unsigned int k, const double p)`

GSL documentation:

### `double gsl_cdf_geometric_P (unsigned int k, double p)`

> double gsl\_cdf\_geometric\_Q (unsigned int k, double p)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the geometric distribution with parameter `p`.

"""
function cdf_geometric_P(k, p)
    ccall((:gsl_cdf_geometric_P, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

@doc md"""
    cdf_geometric_Q(k, p) -> Cdouble

C signature:
`double gsl_cdf_geometric_Q (const unsigned int k, const double p)`
"""
function cdf_geometric_Q(k, p)
    ccall((:gsl_cdf_geometric_Q, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

@doc md"""
    cdf_negative_binomial_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_negative_binomial_P (const unsigned int k, const double p, const double n)`

GSL documentation:

### `double gsl_cdf_negative_binomial_P (unsigned int k, double p, double n)`

> double gsl\_cdf\_negative\_binomial\_Q (unsigned int k, double p,
> double n)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the negative binomial distribution with parameters `p` and
> `n`.

"""
function cdf_negative_binomial_P(k, p, n)
    ccall((:gsl_cdf_negative_binomial_P, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

@doc md"""
    cdf_negative_binomial_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_negative_binomial_Q (const unsigned int k, const double p, const double n)`
"""
function cdf_negative_binomial_Q(k, p, n)
    ccall((:gsl_cdf_negative_binomial_Q, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

@doc md"""
    cdf_pascal_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_pascal_P (const unsigned int k, const double p, const unsigned int n)`

GSL documentation:

### `double gsl_cdf_pascal_P (unsigned int k, double p, unsigned int n)`

> double gsl\_cdf\_pascal\_Q (unsigned int k, double p, unsigned int n)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the Pascal distribution with parameters `p` and `n`.

"""
function cdf_pascal_P(k, p, n)
    ccall((:gsl_cdf_pascal_P, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    cdf_pascal_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_pascal_Q (const unsigned int k, const double p, const unsigned int n)`
"""
function cdf_pascal_Q(k, p, n)
    ccall((:gsl_cdf_pascal_Q, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    cdf_hypergeometric_P(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_cdf_hypergeometric_P (const unsigned int k, const unsigned int n1, const unsigned int n2, const unsigned int t)`

GSL documentation:

### `double gsl_cdf_hypergeometric_P (unsigned int k, unsigned int n1, unsigned int n2, unsigned int t)`

> double gsl\_cdf\_hypergeometric\_Q (unsigned int k, unsigned int n1,
> unsigned int n2, unsigned int t)

> These functions compute the cumulative distribution functions $P(k)$,
> $Q(k)$ for the hypergeometric distribution with parameters `n1`, `n2`
> and `t`.

"""
function cdf_hypergeometric_P(k, n1, n2, t)
    ccall((:gsl_cdf_hypergeometric_P, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

@doc md"""
    cdf_hypergeometric_Q(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_cdf_hypergeometric_Q (const unsigned int k, const unsigned int n1, const unsigned int n2, const unsigned int t)`
"""
function cdf_hypergeometric_Q(k, n1, n2, t)
    ccall((:gsl_cdf_hypergeometric_Q, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

