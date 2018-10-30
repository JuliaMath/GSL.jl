#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_cdf.h ################################################################


"""
    gsl_cdf_ugaussian_P(x) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_P (const double x)`
"""
function gsl_cdf_ugaussian_P(x)
    ccall((:gsl_cdf_ugaussian_P, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_cdf_ugaussian_Q(x) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Q (const double x)`
"""
function gsl_cdf_ugaussian_Q(x)
    ccall((:gsl_cdf_ugaussian_Q, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_cdf_ugaussian_Pinv(P) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Pinv (const double P)`
"""
function gsl_cdf_ugaussian_Pinv(P)
    ccall((:gsl_cdf_ugaussian_Pinv, libgsl), Cdouble, (Cdouble,), P)
end

"""
    gsl_cdf_ugaussian_Qinv(Q) -> Cdouble

C signature:
`double gsl_cdf_ugaussian_Qinv (const double Q)`
"""
function gsl_cdf_ugaussian_Qinv(Q)
    ccall((:gsl_cdf_ugaussian_Qinv, libgsl), Cdouble, (Cdouble,), Q)
end

"""
    gsl_cdf_gaussian_P(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_P (const double x, const double sigma)`
"""
function gsl_cdf_gaussian_P(x, sigma)
    ccall((:gsl_cdf_gaussian_P, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_cdf_gaussian_Q(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Q (const double x, const double sigma)`
"""
function gsl_cdf_gaussian_Q(x, sigma)
    ccall((:gsl_cdf_gaussian_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_cdf_gaussian_Pinv(P, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Pinv (const double P, const double sigma)`
"""
function gsl_cdf_gaussian_Pinv(P, sigma)
    ccall((:gsl_cdf_gaussian_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, sigma)
end

"""
    gsl_cdf_gaussian_Qinv(Q, sigma) -> Cdouble

C signature:
`double gsl_cdf_gaussian_Qinv (const double Q, const double sigma)`
"""
function gsl_cdf_gaussian_Qinv(Q, sigma)
    ccall((:gsl_cdf_gaussian_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, sigma)
end

"""
    gsl_cdf_gamma_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_P (const double x, const double a, const double b)`
"""
function gsl_cdf_gamma_P(x, a, b)
    ccall((:gsl_cdf_gamma_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gamma_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_gamma_Q(x, a, b)
    ccall((:gsl_cdf_gamma_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gamma_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_gamma_Pinv(P, a, b)
    ccall((:gsl_cdf_gamma_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_gamma_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gamma_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_gamma_Qinv(Q, a, b)
    ccall((:gsl_cdf_gamma_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_cauchy_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_P (const double x, const double a)`
"""
function gsl_cdf_cauchy_P(x, a)
    ccall((:gsl_cdf_cauchy_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_cauchy_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Q (const double x, const double a)`
"""
function gsl_cdf_cauchy_Q(x, a)
    ccall((:gsl_cdf_cauchy_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_cauchy_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Pinv (const double P, const double a)`
"""
function gsl_cdf_cauchy_Pinv(P, a)
    ccall((:gsl_cdf_cauchy_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

"""
    gsl_cdf_cauchy_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_cauchy_Qinv (const double Q, const double a)`
"""
function gsl_cdf_cauchy_Qinv(Q, a)
    ccall((:gsl_cdf_cauchy_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

"""
    gsl_cdf_laplace_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_P (const double x, const double a)`
"""
function gsl_cdf_laplace_P(x, a)
    ccall((:gsl_cdf_laplace_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_laplace_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Q (const double x, const double a)`
"""
function gsl_cdf_laplace_Q(x, a)
    ccall((:gsl_cdf_laplace_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_laplace_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Pinv (const double P, const double a)`
"""
function gsl_cdf_laplace_Pinv(P, a)
    ccall((:gsl_cdf_laplace_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

"""
    gsl_cdf_laplace_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_laplace_Qinv (const double Q, const double a)`
"""
function gsl_cdf_laplace_Qinv(Q, a)
    ccall((:gsl_cdf_laplace_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

"""
    gsl_cdf_rayleigh_P(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_P (const double x, const double sigma)`
"""
function gsl_cdf_rayleigh_P(x, sigma)
    ccall((:gsl_cdf_rayleigh_P, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_cdf_rayleigh_Q(x, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Q (const double x, const double sigma)`
"""
function gsl_cdf_rayleigh_Q(x, sigma)
    ccall((:gsl_cdf_rayleigh_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_cdf_rayleigh_Pinv(P, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Pinv (const double P, const double sigma)`
"""
function gsl_cdf_rayleigh_Pinv(P, sigma)
    ccall((:gsl_cdf_rayleigh_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, sigma)
end

"""
    gsl_cdf_rayleigh_Qinv(Q, sigma) -> Cdouble

C signature:
`double gsl_cdf_rayleigh_Qinv (const double Q, const double sigma)`
"""
function gsl_cdf_rayleigh_Qinv(Q, sigma)
    ccall((:gsl_cdf_rayleigh_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, sigma)
end

"""
    gsl_cdf_chisq_P(x, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_P (const double x, const double nu)`
"""
function gsl_cdf_chisq_P(x, nu)
    ccall((:gsl_cdf_chisq_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_cdf_chisq_Q(x, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Q (const double x, const double nu)`
"""
function gsl_cdf_chisq_Q(x, nu)
    ccall((:gsl_cdf_chisq_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_cdf_chisq_Pinv(P, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Pinv (const double P, const double nu)`
"""
function gsl_cdf_chisq_Pinv(P, nu)
    ccall((:gsl_cdf_chisq_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, nu)
end

"""
    gsl_cdf_chisq_Qinv(Q, nu) -> Cdouble

C signature:
`double gsl_cdf_chisq_Qinv (const double Q, const double nu)`
"""
function gsl_cdf_chisq_Qinv(Q, nu)
    ccall((:gsl_cdf_chisq_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, nu)
end

"""
    gsl_cdf_exponential_P(x, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_P (const double x, const double mu)`
"""
function gsl_cdf_exponential_P(x, mu)
    ccall((:gsl_cdf_exponential_P, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

"""
    gsl_cdf_exponential_Q(x, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Q (const double x, const double mu)`
"""
function gsl_cdf_exponential_Q(x, mu)
    ccall((:gsl_cdf_exponential_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

"""
    gsl_cdf_exponential_Pinv(P, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Pinv (const double P, const double mu)`
"""
function gsl_cdf_exponential_Pinv(P, mu)
    ccall((:gsl_cdf_exponential_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, mu)
end

"""
    gsl_cdf_exponential_Qinv(Q, mu) -> Cdouble

C signature:
`double gsl_cdf_exponential_Qinv (const double Q, const double mu)`
"""
function gsl_cdf_exponential_Qinv(Q, mu)
    ccall((:gsl_cdf_exponential_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, mu)
end

"""
    gsl_cdf_exppow_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_exppow_P (const double x, const double a, const double b)`
"""
function gsl_cdf_exppow_P(x, a, b)
    ccall((:gsl_cdf_exppow_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_exppow_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_exppow_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_exppow_Q(x, a, b)
    ccall((:gsl_cdf_exppow_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_tdist_P(x, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_P (const double x, const double nu)`
"""
function gsl_cdf_tdist_P(x, nu)
    ccall((:gsl_cdf_tdist_P, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_cdf_tdist_Q(x, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Q (const double x, const double nu)`
"""
function gsl_cdf_tdist_Q(x, nu)
    ccall((:gsl_cdf_tdist_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_cdf_tdist_Pinv(P, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Pinv (const double P, const double nu)`
"""
function gsl_cdf_tdist_Pinv(P, nu)
    ccall((:gsl_cdf_tdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, nu)
end

"""
    gsl_cdf_tdist_Qinv(Q, nu) -> Cdouble

C signature:
`double gsl_cdf_tdist_Qinv (const double Q, const double nu)`
"""
function gsl_cdf_tdist_Qinv(Q, nu)
    ccall((:gsl_cdf_tdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, nu)
end

"""
    gsl_cdf_fdist_P(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_P (const double x, const double nu1, const double nu2)`
"""
function gsl_cdf_fdist_P(x, nu1, nu2)
    ccall((:gsl_cdf_fdist_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

"""
    gsl_cdf_fdist_Q(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Q (const double x, const double nu1, const double nu2)`
"""
function gsl_cdf_fdist_Q(x, nu1, nu2)
    ccall((:gsl_cdf_fdist_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

"""
    gsl_cdf_fdist_Pinv(P, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Pinv (const double P, const double nu1, const double nu2)`
"""
function gsl_cdf_fdist_Pinv(P, nu1, nu2)
    ccall((:gsl_cdf_fdist_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, nu1, nu2)
end

"""
    gsl_cdf_fdist_Qinv(Q, nu1, nu2) -> Cdouble

C signature:
`double gsl_cdf_fdist_Qinv (const double Q, const double nu1, const double nu2)`
"""
function gsl_cdf_fdist_Qinv(Q, nu1, nu2)
    ccall((:gsl_cdf_fdist_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, nu1, nu2)
end

"""
    gsl_cdf_beta_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_P (const double x, const double a, const double b)`
"""
function gsl_cdf_beta_P(x, a, b)
    ccall((:gsl_cdf_beta_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_beta_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_beta_Q(x, a, b)
    ccall((:gsl_cdf_beta_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_beta_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_beta_Pinv(P, a, b)
    ccall((:gsl_cdf_beta_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_beta_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_beta_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_beta_Qinv(Q, a, b)
    ccall((:gsl_cdf_beta_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_flat_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_P (const double x, const double a, const double b)`
"""
function gsl_cdf_flat_P(x, a, b)
    ccall((:gsl_cdf_flat_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_flat_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_flat_Q(x, a, b)
    ccall((:gsl_cdf_flat_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_flat_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_flat_Pinv(P, a, b)
    ccall((:gsl_cdf_flat_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_flat_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_flat_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_flat_Qinv(Q, a, b)
    ccall((:gsl_cdf_flat_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_lognormal_P(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_P (const double x, const double zeta, const double sigma)`
"""
function gsl_cdf_lognormal_P(x, zeta, sigma)
    ccall((:gsl_cdf_lognormal_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

"""
    gsl_cdf_lognormal_Q(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Q (const double x, const double zeta, const double sigma)`
"""
function gsl_cdf_lognormal_Q(x, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

"""
    gsl_cdf_lognormal_Pinv(P, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Pinv (const double P, const double zeta, const double sigma)`
"""
function gsl_cdf_lognormal_Pinv(P, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, zeta, sigma)
end

"""
    gsl_cdf_lognormal_Qinv(Q, zeta, sigma) -> Cdouble

C signature:
`double gsl_cdf_lognormal_Qinv (const double Q, const double zeta, const double sigma)`
"""
function gsl_cdf_lognormal_Qinv(Q, zeta, sigma)
    ccall((:gsl_cdf_lognormal_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, zeta, sigma)
end

"""
    gsl_cdf_gumbel1_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_P (const double x, const double a, const double b)`
"""
function gsl_cdf_gumbel1_P(x, a, b)
    ccall((:gsl_cdf_gumbel1_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gumbel1_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_gumbel1_Q(x, a, b)
    ccall((:gsl_cdf_gumbel1_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gumbel1_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_gumbel1_Pinv(P, a, b)
    ccall((:gsl_cdf_gumbel1_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_gumbel1_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel1_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_gumbel1_Qinv(Q, a, b)
    ccall((:gsl_cdf_gumbel1_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_gumbel2_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_P (const double x, const double a, const double b)`
"""
function gsl_cdf_gumbel2_P(x, a, b)
    ccall((:gsl_cdf_gumbel2_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gumbel2_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_gumbel2_Q(x, a, b)
    ccall((:gsl_cdf_gumbel2_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_gumbel2_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_gumbel2_Pinv(P, a, b)
    ccall((:gsl_cdf_gumbel2_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_gumbel2_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_gumbel2_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_gumbel2_Qinv(Q, a, b)
    ccall((:gsl_cdf_gumbel2_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_weibull_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_P (const double x, const double a, const double b)`
"""
function gsl_cdf_weibull_P(x, a, b)
    ccall((:gsl_cdf_weibull_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_weibull_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_weibull_Q(x, a, b)
    ccall((:gsl_cdf_weibull_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_weibull_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_weibull_Pinv(P, a, b)
    ccall((:gsl_cdf_weibull_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_weibull_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_weibull_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_weibull_Qinv(Q, a, b)
    ccall((:gsl_cdf_weibull_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_pareto_P(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_P (const double x, const double a, const double b)`
"""
function gsl_cdf_pareto_P(x, a, b)
    ccall((:gsl_cdf_pareto_P, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_pareto_Q(x, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Q (const double x, const double a, const double b)`
"""
function gsl_cdf_pareto_Q(x, a, b)
    ccall((:gsl_cdf_pareto_Q, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_cdf_pareto_Pinv(P, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Pinv (const double P, const double a, const double b)`
"""
function gsl_cdf_pareto_Pinv(P, a, b)
    ccall((:gsl_cdf_pareto_Pinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), P, a, b)
end

"""
    gsl_cdf_pareto_Qinv(Q, a, b) -> Cdouble

C signature:
`double gsl_cdf_pareto_Qinv (const double Q, const double a, const double b)`
"""
function gsl_cdf_pareto_Qinv(Q, a, b)
    ccall((:gsl_cdf_pareto_Qinv, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), Q, a, b)
end

"""
    gsl_cdf_logistic_P(x, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_P (const double x, const double a)`
"""
function gsl_cdf_logistic_P(x, a)
    ccall((:gsl_cdf_logistic_P, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_logistic_Q(x, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Q (const double x, const double a)`
"""
function gsl_cdf_logistic_Q(x, a)
    ccall((:gsl_cdf_logistic_Q, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_cdf_logistic_Pinv(P, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Pinv (const double P, const double a)`
"""
function gsl_cdf_logistic_Pinv(P, a)
    ccall((:gsl_cdf_logistic_Pinv, libgsl), Cdouble, (Cdouble, Cdouble), P, a)
end

"""
    gsl_cdf_logistic_Qinv(Q, a) -> Cdouble

C signature:
`double gsl_cdf_logistic_Qinv (const double Q, const double a)`
"""
function gsl_cdf_logistic_Qinv(Q, a)
    ccall((:gsl_cdf_logistic_Qinv, libgsl), Cdouble, (Cdouble, Cdouble), Q, a)
end

"""
    gsl_cdf_binomial_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_binomial_P (const unsigned int k, const double p, const unsigned int n)`
"""
function gsl_cdf_binomial_P(k, p, n)
    ccall((:gsl_cdf_binomial_P, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_cdf_binomial_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_binomial_Q (const unsigned int k, const double p, const unsigned int n)`
"""
function gsl_cdf_binomial_Q(k, p, n)
    ccall((:gsl_cdf_binomial_Q, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_cdf_poisson_P(k, mu) -> Cdouble

C signature:
`double gsl_cdf_poisson_P (const unsigned int k, const double mu)`
"""
function gsl_cdf_poisson_P(k, mu)
    ccall((:gsl_cdf_poisson_P, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

"""
    gsl_cdf_poisson_Q(k, mu) -> Cdouble

C signature:
`double gsl_cdf_poisson_Q (const unsigned int k, const double mu)`
"""
function gsl_cdf_poisson_Q(k, mu)
    ccall((:gsl_cdf_poisson_Q, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

"""
    gsl_cdf_geometric_P(k, p) -> Cdouble

C signature:
`double gsl_cdf_geometric_P (const unsigned int k, const double p)`
"""
function gsl_cdf_geometric_P(k, p)
    ccall((:gsl_cdf_geometric_P, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

"""
    gsl_cdf_geometric_Q(k, p) -> Cdouble

C signature:
`double gsl_cdf_geometric_Q (const unsigned int k, const double p)`
"""
function gsl_cdf_geometric_Q(k, p)
    ccall((:gsl_cdf_geometric_Q, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

"""
    gsl_cdf_negative_binomial_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_negative_binomial_P (const unsigned int k, const double p, const double n)`
"""
function gsl_cdf_negative_binomial_P(k, p, n)
    ccall((:gsl_cdf_negative_binomial_P, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

"""
    gsl_cdf_negative_binomial_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_negative_binomial_Q (const unsigned int k, const double p, const double n)`
"""
function gsl_cdf_negative_binomial_Q(k, p, n)
    ccall((:gsl_cdf_negative_binomial_Q, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

"""
    gsl_cdf_pascal_P(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_pascal_P (const unsigned int k, const double p, const unsigned int n)`
"""
function gsl_cdf_pascal_P(k, p, n)
    ccall((:gsl_cdf_pascal_P, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_cdf_pascal_Q(k, p, n) -> Cdouble

C signature:
`double gsl_cdf_pascal_Q (const unsigned int k, const double p, const unsigned int n)`
"""
function gsl_cdf_pascal_Q(k, p, n)
    ccall((:gsl_cdf_pascal_Q, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_cdf_hypergeometric_P(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_cdf_hypergeometric_P (const unsigned int k, const unsigned int n1, const unsigned int n2, const unsigned int t)`
"""
function gsl_cdf_hypergeometric_P(k, n1, n2, t)
    ccall((:gsl_cdf_hypergeometric_P, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

"""
    gsl_cdf_hypergeometric_Q(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_cdf_hypergeometric_Q (const unsigned int k, const unsigned int n1, const unsigned int n2, const unsigned int t)`
"""
function gsl_cdf_hypergeometric_Q(k, n1, n2, t)
    ccall((:gsl_cdf_hypergeometric_Q, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

