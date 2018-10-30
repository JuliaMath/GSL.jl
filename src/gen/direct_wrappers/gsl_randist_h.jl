#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_randist.h ############################################################


"""
    gsl_ran_bernoulli(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_bernoulli (const gsl_rng * r, double p)`
"""
function gsl_ran_bernoulli(r, p)
    ccall((:gsl_ran_bernoulli, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

"""
    gsl_ran_bernoulli_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_bernoulli_pdf (const unsigned int k, double p)`
"""
function gsl_ran_bernoulli_pdf(k, p)
    ccall((:gsl_ran_bernoulli_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

"""
    gsl_ran_beta(r, a, b) -> Cdouble

C signature:
`double gsl_ran_beta (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_beta(r, a, b)
    ccall((:gsl_ran_beta, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_beta_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_beta_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_beta_pdf(x, a, b)
    ccall((:gsl_ran_beta_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_binomial(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_binomial(r, p, n)
    ccall((:gsl_ran_binomial, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

"""
    gsl_ran_binomial_knuth(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial_knuth (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_binomial_knuth(r, p, n)
    ccall((:gsl_ran_binomial_knuth, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

"""
    gsl_ran_binomial_tpe(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial_tpe (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_binomial_tpe(r, p, n)
    ccall((:gsl_ran_binomial_tpe, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

"""
    gsl_ran_binomial_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_binomial_pdf (const unsigned int k, const double p, const unsigned int n)`
"""
function gsl_ran_binomial_pdf(k, p, n)
    ccall((:gsl_ran_binomial_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_ran_exponential(r, mu) -> Cdouble

C signature:
`double gsl_ran_exponential (const gsl_rng * r, const double mu)`
"""
function gsl_ran_exponential(r, mu)
    ccall((:gsl_ran_exponential, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, mu)
end

"""
    gsl_ran_exponential_pdf(x, mu) -> Cdouble

C signature:
`double gsl_ran_exponential_pdf (const double x, const double mu)`
"""
function gsl_ran_exponential_pdf(x, mu)
    ccall((:gsl_ran_exponential_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

"""
    gsl_ran_exppow(r, a, b) -> Cdouble

C signature:
`double gsl_ran_exppow (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_exppow(r, a, b)
    ccall((:gsl_ran_exppow, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_exppow_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_exppow_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_exppow_pdf(x, a, b)
    ccall((:gsl_ran_exppow_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_cauchy(r, a) -> Cdouble

C signature:
`double gsl_ran_cauchy (const gsl_rng * r, const double a)`
"""
function gsl_ran_cauchy(r, a)
    ccall((:gsl_ran_cauchy, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

"""
    gsl_ran_cauchy_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_cauchy_pdf (const double x, const double a)`
"""
function gsl_ran_cauchy_pdf(x, a)
    ccall((:gsl_ran_cauchy_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_ran_chisq(r, nu) -> Cdouble

C signature:
`double gsl_ran_chisq (const gsl_rng * r, const double nu)`
"""
function gsl_ran_chisq(r, nu)
    ccall((:gsl_ran_chisq, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, nu)
end

"""
    gsl_ran_chisq_pdf(x, nu) -> Cdouble

C signature:
`double gsl_ran_chisq_pdf (const double x, const double nu)`
"""
function gsl_ran_chisq_pdf(x, nu)
    ccall((:gsl_ran_chisq_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_ran_dirichlet(r, K, alpha, theta) -> Cvoid

C signature:
`void gsl_ran_dirichlet (const gsl_rng * r, const size_t K, const double alpha[], double theta[])`
"""
function gsl_ran_dirichlet(r, K, alpha, theta)
    ccall((:gsl_ran_dirichlet, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), r, K, alpha, theta)
end

"""
    gsl_ran_dirichlet_pdf(K, alpha, theta) -> Cdouble

C signature:
`double gsl_ran_dirichlet_pdf (const size_t K, const double alpha[], const double theta[])`
"""
function gsl_ran_dirichlet_pdf(K, alpha, theta)
    ccall((:gsl_ran_dirichlet_pdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cdouble}), K, alpha, theta)
end

"""
    gsl_ran_dirichlet_lnpdf(K, alpha, theta) -> Cdouble

C signature:
`double gsl_ran_dirichlet_lnpdf (const size_t K, const double alpha[], const double theta[])`
"""
function gsl_ran_dirichlet_lnpdf(K, alpha, theta)
    ccall((:gsl_ran_dirichlet_lnpdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cdouble}), K, alpha, theta)
end

"""
    gsl_ran_erlang(r, a, n) -> Cdouble

C signature:
`double gsl_ran_erlang (const gsl_rng * r, const double a, const double n)`
"""
function gsl_ran_erlang(r, a, n)
    ccall((:gsl_ran_erlang, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, n)
end

"""
    gsl_ran_erlang_pdf(x, a, n) -> Cdouble

C signature:
`double gsl_ran_erlang_pdf (const double x, const double a, const double n)`
"""
function gsl_ran_erlang_pdf(x, a, n)
    ccall((:gsl_ran_erlang_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, n)
end

"""
    gsl_ran_fdist(r, nu1, nu2) -> Cdouble

C signature:
`double gsl_ran_fdist (const gsl_rng * r, const double nu1, const double nu2)`
"""
function gsl_ran_fdist(r, nu1, nu2)
    ccall((:gsl_ran_fdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, nu1, nu2)
end

"""
    gsl_ran_fdist_pdf(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_ran_fdist_pdf (const double x, const double nu1, const double nu2)`
"""
function gsl_ran_fdist_pdf(x, nu1, nu2)
    ccall((:gsl_ran_fdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

"""
    gsl_ran_flat(r, a, b) -> Cdouble

C signature:
`double gsl_ran_flat (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_flat(r, a, b)
    ccall((:gsl_ran_flat, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_flat_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_flat_pdf (double x, const double a, const double b)`
"""
function gsl_ran_flat_pdf(x, a, b)
    ccall((:gsl_ran_flat_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_gamma(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gamma(r, a, b)
    ccall((:gsl_ran_gamma, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_gamma_int(r, a) -> Cdouble

C signature:
`double gsl_ran_gamma_int (const gsl_rng * r, const unsigned int a)`
"""
function gsl_ran_gamma_int(r, a)
    ccall((:gsl_ran_gamma_int, libgsl), Cdouble, (Ref{gsl_rng}, Cuint), r, a)
end

"""
    gsl_ran_gamma_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_gamma_pdf(x, a, b)
    ccall((:gsl_ran_gamma_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_gamma_mt(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_mt (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gamma_mt(r, a, b)
    ccall((:gsl_ran_gamma_mt, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_gamma_knuth(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_knuth (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gamma_knuth(r, a, b)
    ccall((:gsl_ran_gamma_knuth, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_gaussian(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian (const gsl_rng * r, const double sigma)`
"""
function gsl_ran_gaussian(r, sigma)
    ccall((:gsl_ran_gaussian, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

"""
    gsl_ran_gaussian_ratio_method(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_ratio_method (const gsl_rng * r, const double sigma)`
"""
function gsl_ran_gaussian_ratio_method(r, sigma)
    ccall((:gsl_ran_gaussian_ratio_method, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

"""
    gsl_ran_gaussian_ziggurat(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_ziggurat (const gsl_rng * r, const double sigma)`
"""
function gsl_ran_gaussian_ziggurat(r, sigma)
    ccall((:gsl_ran_gaussian_ziggurat, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

"""
    gsl_ran_gaussian_pdf(x, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_pdf (const double x, const double sigma)`
"""
function gsl_ran_gaussian_pdf(x, sigma)
    ccall((:gsl_ran_gaussian_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_ran_ugaussian(r) -> Cdouble

C signature:
`double gsl_ran_ugaussian (const gsl_rng * r)`
"""
function gsl_ran_ugaussian(r)
    ccall((:gsl_ran_ugaussian, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

"""
    gsl_ran_ugaussian_ratio_method(r) -> Cdouble

C signature:
`double gsl_ran_ugaussian_ratio_method (const gsl_rng * r)`
"""
function gsl_ran_ugaussian_ratio_method(r)
    ccall((:gsl_ran_ugaussian_ratio_method, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

"""
    gsl_ran_ugaussian_pdf(x) -> Cdouble

C signature:
`double gsl_ran_ugaussian_pdf (const double x)`
"""
function gsl_ran_ugaussian_pdf(x)
    ccall((:gsl_ran_ugaussian_pdf, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_ran_gaussian_tail(r, a, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_tail (const gsl_rng * r, const double a, const double sigma)`
"""
function gsl_ran_gaussian_tail(r, a, sigma)
    ccall((:gsl_ran_gaussian_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, sigma)
end

"""
    gsl_ran_gaussian_tail_pdf(x, a, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_tail_pdf (const double x, const double a, const double sigma)`
"""
function gsl_ran_gaussian_tail_pdf(x, a, sigma)
    ccall((:gsl_ran_gaussian_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, sigma)
end

"""
    gsl_ran_ugaussian_tail(r, a) -> Cdouble

C signature:
`double gsl_ran_ugaussian_tail (const gsl_rng * r, const double a)`
"""
function gsl_ran_ugaussian_tail(r, a)
    ccall((:gsl_ran_ugaussian_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

"""
    gsl_ran_ugaussian_tail_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_ugaussian_tail_pdf (const double x, const double a)`
"""
function gsl_ran_ugaussian_tail_pdf(x, a)
    ccall((:gsl_ran_ugaussian_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_ran_bivariate_gaussian(r, sigma_x, sigma_y, rho, x, y) -> Cvoid

C signature:
`void gsl_ran_bivariate_gaussian (const gsl_rng * r, double sigma_x, double sigma_y, double rho, double *x, double *y)`
"""
function gsl_ran_bivariate_gaussian(r, sigma_x, sigma_y, rho, x, y)
    ccall((:gsl_ran_bivariate_gaussian, libgsl), Cvoid, (Ref{gsl_rng}, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), r, sigma_x, sigma_y, rho, x, y)
end

"""
    gsl_ran_bivariate_gaussian_pdf(x, y, sigma_x, sigma_y, rho) -> Cdouble

C signature:
`double gsl_ran_bivariate_gaussian_pdf (const double x, const double y, const double sigma_x, const double sigma_y, const double rho)`
"""
function gsl_ran_bivariate_gaussian_pdf(x, y, sigma_x, sigma_y, rho)
    ccall((:gsl_ran_bivariate_gaussian_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), x, y, sigma_x, sigma_y, rho)
end

"""
    gsl_ran_multivariate_gaussian(r, mu, L, result) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian (const gsl_rng * r, const gsl_vector * mu, const gsl_matrix * L, gsl_vector * result)`
"""
function gsl_ran_multivariate_gaussian(r, mu, L, result)
    ccall((:gsl_ran_multivariate_gaussian, libgsl), Cint, (Ref{gsl_rng}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), r, mu, L, result)
end

"""
    gsl_ran_multivariate_gaussian_log_pdf(x, mu, L, result, work) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_log_pdf (const gsl_vector * x, const gsl_vector * mu, const gsl_matrix * L, double * result, gsl_vector * work)`
"""
function gsl_ran_multivariate_gaussian_log_pdf(x, mu, L, result, work)
    ccall((:gsl_ran_multivariate_gaussian_log_pdf, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_vector}), x, mu, L, result, work)
end

"""
    gsl_ran_multivariate_gaussian_pdf(x, mu, L, result, work) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_pdf (const gsl_vector * x, const gsl_vector * mu, const gsl_matrix * L, double * result, gsl_vector * work)`
"""
function gsl_ran_multivariate_gaussian_pdf(x, mu, L, result, work)
    ccall((:gsl_ran_multivariate_gaussian_pdf, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_vector}), x, mu, L, result, work)
end

"""
    gsl_ran_multivariate_gaussian_mean(X, mu_hat) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_mean (const gsl_matrix * X, gsl_vector * mu_hat)`
"""
function gsl_ran_multivariate_gaussian_mean(X, mu_hat)
    ccall((:gsl_ran_multivariate_gaussian_mean, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), X, mu_hat)
end

"""
    gsl_ran_multivariate_gaussian_vcov(X, sigma_hat) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_vcov (const gsl_matrix * X, gsl_matrix * sigma_hat)`
"""
function gsl_ran_multivariate_gaussian_vcov(X, sigma_hat)
    ccall((:gsl_ran_multivariate_gaussian_vcov, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), X, sigma_hat)
end

"""
    gsl_ran_wishart(r, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart (const gsl_rng * r, const double df, const gsl_matrix * L, gsl_matrix * result, gsl_matrix * work)`
"""
function gsl_ran_wishart(r, df, L, result, work)
    ccall((:gsl_ran_wishart, libgsl), Cint, (Ref{gsl_rng}, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}, Ref{gsl_matrix}), r, df, L, result, work)
end

"""
    gsl_ran_wishart_log_pdf(X, L_X, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart_log_pdf (const gsl_matrix * X, const gsl_matrix * L_X, const double df, const gsl_matrix * L, double * result, gsl_matrix * work)`
"""
function gsl_ran_wishart_log_pdf(X, L_X, df, L, result, work)
    ccall((:gsl_ran_wishart_log_pdf, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_matrix}), X, L_X, df, L, result, work)
end

"""
    gsl_ran_wishart_pdf(X, L_X, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart_pdf (const gsl_matrix * X, const gsl_matrix * L_X, const double df, const gsl_matrix * L, double * result, gsl_matrix * work)`
"""
function gsl_ran_wishart_pdf(X, L_X, df, L, result, work)
    ccall((:gsl_ran_wishart_pdf, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_matrix}), X, L_X, df, L, result, work)
end

"""
    gsl_ran_landau(r) -> Cdouble

C signature:
`double gsl_ran_landau (const gsl_rng * r)`
"""
function gsl_ran_landau(r)
    ccall((:gsl_ran_landau, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

"""
    gsl_ran_landau_pdf(x) -> Cdouble

C signature:
`double gsl_ran_landau_pdf (const double x)`
"""
function gsl_ran_landau_pdf(x)
    ccall((:gsl_ran_landau_pdf, libgsl), Cdouble, (Cdouble,), x)
end

"""
    gsl_ran_geometric(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_geometric (const gsl_rng * r, const double p)`
"""
function gsl_ran_geometric(r, p)
    ccall((:gsl_ran_geometric, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

"""
    gsl_ran_geometric_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_geometric_pdf (const unsigned int k, const double p)`
"""
function gsl_ran_geometric_pdf(k, p)
    ccall((:gsl_ran_geometric_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

"""
    gsl_ran_hypergeometric(r, n1, n2, t) -> Cuint

C signature:
`unsigned int gsl_ran_hypergeometric (const gsl_rng * r, unsigned int n1, unsigned int n2, unsigned int t)`
"""
function gsl_ran_hypergeometric(r, n1, n2, t)
    ccall((:gsl_ran_hypergeometric, libgsl), Cuint, (Ref{gsl_rng}, Cuint, Cuint, Cuint), r, n1, n2, t)
end

"""
    gsl_ran_hypergeometric_pdf(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_ran_hypergeometric_pdf (const unsigned int k, const unsigned int n1, const unsigned int n2, unsigned int t)`
"""
function gsl_ran_hypergeometric_pdf(k, n1, n2, t)
    ccall((:gsl_ran_hypergeometric_pdf, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

"""
    gsl_ran_gumbel1(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel1 (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gumbel1(r, a, b)
    ccall((:gsl_ran_gumbel1, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_gumbel1_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel1_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_gumbel1_pdf(x, a, b)
    ccall((:gsl_ran_gumbel1_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_gumbel2(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel2 (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gumbel2(r, a, b)
    ccall((:gsl_ran_gumbel2, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_gumbel2_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel2_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_gumbel2_pdf(x, a, b)
    ccall((:gsl_ran_gumbel2_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_logistic(r, a) -> Cdouble

C signature:
`double gsl_ran_logistic (const gsl_rng * r, const double a)`
"""
function gsl_ran_logistic(r, a)
    ccall((:gsl_ran_logistic, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

"""
    gsl_ran_logistic_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_logistic_pdf (const double x, const double a)`
"""
function gsl_ran_logistic_pdf(x, a)
    ccall((:gsl_ran_logistic_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_ran_lognormal(r, zeta, sigma) -> Cdouble

C signature:
`double gsl_ran_lognormal (const gsl_rng * r, const double zeta, const double sigma)`
"""
function gsl_ran_lognormal(r, zeta, sigma)
    ccall((:gsl_ran_lognormal, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, zeta, sigma)
end

"""
    gsl_ran_lognormal_pdf(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_ran_lognormal_pdf (const double x, const double zeta, const double sigma)`
"""
function gsl_ran_lognormal_pdf(x, zeta, sigma)
    ccall((:gsl_ran_lognormal_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

"""
    gsl_ran_logarithmic(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_logarithmic (const gsl_rng * r, const double p)`
"""
function gsl_ran_logarithmic(r, p)
    ccall((:gsl_ran_logarithmic, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

"""
    gsl_ran_logarithmic_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_logarithmic_pdf (const unsigned int k, const double p)`
"""
function gsl_ran_logarithmic_pdf(k, p)
    ccall((:gsl_ran_logarithmic_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

"""
    gsl_ran_multinomial(r, K, N, p, n) -> Cvoid

C signature:
`void gsl_ran_multinomial (const gsl_rng * r, const size_t K, const unsigned int N, const double p[], unsigned int n[] )`
"""
function gsl_ran_multinomial(r, K, N, p, n)
    ccall((:gsl_ran_multinomial, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Cuint, Ref{Cdouble}, Ref{Cuint}), r, K, N, p, n)
end

"""
    gsl_ran_multinomial_pdf(K, p, n) -> Cdouble

C signature:
`double gsl_ran_multinomial_pdf (const size_t K, const double p[], const unsigned int n[] )`
"""
function gsl_ran_multinomial_pdf(K, p, n)
    ccall((:gsl_ran_multinomial_pdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cuint}), K, p, n)
end

"""
    gsl_ran_multinomial_lnpdf(K, p, n) -> Cdouble

C signature:
`double gsl_ran_multinomial_lnpdf (const size_t K, const double p[], const unsigned int n[] )`
"""
function gsl_ran_multinomial_lnpdf(K, p, n)
    ccall((:gsl_ran_multinomial_lnpdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cuint}), K, p, n)
end

"""
    gsl_ran_negative_binomial(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_negative_binomial (const gsl_rng * r, double p, double n)`
"""
function gsl_ran_negative_binomial(r, p, n)
    ccall((:gsl_ran_negative_binomial, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cdouble), r, p, n)
end

"""
    gsl_ran_negative_binomial_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_negative_binomial_pdf (const unsigned int k, const double p, double n)`
"""
function gsl_ran_negative_binomial_pdf(k, p, n)
    ccall((:gsl_ran_negative_binomial_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

"""
    gsl_ran_pascal(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_pascal (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_pascal(r, p, n)
    ccall((:gsl_ran_pascal, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

"""
    gsl_ran_pascal_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_pascal_pdf (const unsigned int k, const double p, unsigned int n)`
"""
function gsl_ran_pascal_pdf(k, p, n)
    ccall((:gsl_ran_pascal_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

"""
    gsl_ran_pareto(r, a, b) -> Cdouble

C signature:
`double gsl_ran_pareto (const gsl_rng * r, double a, const double b)`
"""
function gsl_ran_pareto(r, a, b)
    ccall((:gsl_ran_pareto, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_pareto_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_pareto_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_pareto_pdf(x, a, b)
    ccall((:gsl_ran_pareto_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_poisson(r, mu) -> Cuint

C signature:
`unsigned int gsl_ran_poisson (const gsl_rng * r, double mu)`
"""
function gsl_ran_poisson(r, mu)
    ccall((:gsl_ran_poisson, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, mu)
end

"""
    gsl_ran_poisson_array(r, n, array, mu) -> Cvoid

C signature:
`void gsl_ran_poisson_array (const gsl_rng * r, size_t n, unsigned int array[], double mu)`
"""
function gsl_ran_poisson_array(r, n, array, mu)
    ccall((:gsl_ran_poisson_array, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cuint}, Cdouble), r, n, array, mu)
end

"""
    gsl_ran_poisson_pdf(k, mu) -> Cdouble

C signature:
`double gsl_ran_poisson_pdf (const unsigned int k, const double mu)`
"""
function gsl_ran_poisson_pdf(k, mu)
    ccall((:gsl_ran_poisson_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

"""
    gsl_ran_rayleigh(r, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh (const gsl_rng * r, const double sigma)`
"""
function gsl_ran_rayleigh(r, sigma)
    ccall((:gsl_ran_rayleigh, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

"""
    gsl_ran_rayleigh_pdf(x, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_pdf (const double x, const double sigma)`
"""
function gsl_ran_rayleigh_pdf(x, sigma)
    ccall((:gsl_ran_rayleigh_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

"""
    gsl_ran_rayleigh_tail(r, a, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_tail (const gsl_rng * r, const double a, const double sigma)`
"""
function gsl_ran_rayleigh_tail(r, a, sigma)
    ccall((:gsl_ran_rayleigh_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, sigma)
end

"""
    gsl_ran_rayleigh_tail_pdf(x, a, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_tail_pdf (const double x, const double a, const double sigma)`
"""
function gsl_ran_rayleigh_tail_pdf(x, a, sigma)
    ccall((:gsl_ran_rayleigh_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, sigma)
end

"""
    gsl_ran_tdist(r, nu) -> Cdouble

C signature:
`double gsl_ran_tdist (const gsl_rng * r, const double nu)`
"""
function gsl_ran_tdist(r, nu)
    ccall((:gsl_ran_tdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, nu)
end

"""
    gsl_ran_tdist_pdf(x, nu) -> Cdouble

C signature:
`double gsl_ran_tdist_pdf (const double x, const double nu)`
"""
function gsl_ran_tdist_pdf(x, nu)
    ccall((:gsl_ran_tdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

"""
    gsl_ran_laplace(r, a) -> Cdouble

C signature:
`double gsl_ran_laplace (const gsl_rng * r, const double a)`
"""
function gsl_ran_laplace(r, a)
    ccall((:gsl_ran_laplace, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

"""
    gsl_ran_laplace_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_laplace_pdf (const double x, const double a)`
"""
function gsl_ran_laplace_pdf(x, a)
    ccall((:gsl_ran_laplace_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

"""
    gsl_ran_levy(r, c, alpha) -> Cdouble

C signature:
`double gsl_ran_levy (const gsl_rng * r, const double c, const double alpha)`
"""
function gsl_ran_levy(r, c, alpha)
    ccall((:gsl_ran_levy, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, c, alpha)
end

"""
    gsl_ran_levy_skew(r, c, alpha, beta) -> Cdouble

C signature:
`double gsl_ran_levy_skew (const gsl_rng * r, const double c, const double alpha, const double beta)`
"""
function gsl_ran_levy_skew(r, c, alpha, beta)
    ccall((:gsl_ran_levy_skew, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble, Cdouble), r, c, alpha, beta)
end

"""
    gsl_ran_weibull(r, a, b) -> Cdouble

C signature:
`double gsl_ran_weibull (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_weibull(r, a, b)
    ccall((:gsl_ran_weibull, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

"""
    gsl_ran_weibull_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_weibull_pdf (const double x, const double a, const double b)`
"""
function gsl_ran_weibull_pdf(x, a, b)
    ccall((:gsl_ran_weibull_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

"""
    gsl_ran_dir_2d(r, x, y) -> Cvoid

C signature:
`void gsl_ran_dir_2d (const gsl_rng * r, double * x, double * y)`
"""
function gsl_ran_dir_2d(r, x, y)
    ccall((:gsl_ran_dir_2d, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}), r, x, y)
end

"""
    gsl_ran_dir_2d_trig_method(r, x, y) -> Cvoid

C signature:
`void gsl_ran_dir_2d_trig_method (const gsl_rng * r, double * x, double * y)`
"""
function gsl_ran_dir_2d_trig_method(r, x, y)
    ccall((:gsl_ran_dir_2d_trig_method, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}), r, x, y)
end

"""
    gsl_ran_dir_3d(r, x, y, z) -> Cvoid

C signature:
`void gsl_ran_dir_3d (const gsl_rng * r, double * x, double * y, double * z)`
"""
function gsl_ran_dir_3d(r, x, y, z)
    ccall((:gsl_ran_dir_3d, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), r, x, y, z)
end

"""
    gsl_ran_dir_nd(r, n, x) -> Cvoid

C signature:
`void gsl_ran_dir_nd (const gsl_rng * r, size_t n, double * x)`
"""
function gsl_ran_dir_nd(r, n, x)
    ccall((:gsl_ran_dir_nd, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cdouble}), r, n, x)
end

"""
    gsl_ran_shuffle(r, base, nmembm, size) -> Cvoid

C signature:
`void gsl_ran_shuffle (const gsl_rng * r, void * base, size_t nmembm, size_t size)`
"""
function gsl_ran_shuffle(r, base, nmembm, size)
    ccall((:gsl_ran_shuffle, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Csize_t), r, base, nmembm, size)
end

"""
    gsl_ran_choose(r, dest, k, src, n, size) -> Cint

C signature:
`int gsl_ran_choose (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`
"""
function gsl_ran_choose(r, dest, k, src, n, size)
    ccall((:gsl_ran_choose, libgsl), Cint, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Ptr{Cvoid}, Csize_t, Csize_t), r, dest, k, src, n, size)
end

"""
    gsl_ran_sample(r, dest, k, src, n, size) -> Cvoid

C signature:
`void gsl_ran_sample (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`
"""
function gsl_ran_sample(r, dest, k, src, n, size)
    ccall((:gsl_ran_sample, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Ptr{Cvoid}, Csize_t, Csize_t), r, dest, k, src, n, size)
end

"""
    gsl_ran_discrete_preproc(K, P) -> Ptr{gsl_ran_discrete_t}

C signature:
`gsl_ran_discrete_t * gsl_ran_discrete_preproc (size_t K, const double *P)`
"""
function gsl_ran_discrete_preproc(K, P)
    ccall((:gsl_ran_discrete_preproc, libgsl), Ptr{gsl_ran_discrete_t}, (Csize_t, Ref{Cdouble}), K, P)
end

"""
    gsl_ran_discrete_free(g) -> Cvoid

C signature:
`void gsl_ran_discrete_free(gsl_ran_discrete_t *g)`
"""
function gsl_ran_discrete_free(g)
    ccall((:gsl_ran_discrete_free, libgsl), Cvoid, (Ptr{gsl_ran_discrete_t},), g)
end

"""
    gsl_ran_discrete(r, g) -> Csize_t

C signature:
`size_t gsl_ran_discrete (const gsl_rng *r, const gsl_ran_discrete_t *g)`
"""
function gsl_ran_discrete(r, g)
    ccall((:gsl_ran_discrete, libgsl), Csize_t, (Ref{gsl_rng}, Ref{gsl_ran_discrete_t}), r, g)
end

"""
    gsl_ran_discrete_pdf(k, g) -> Cdouble

C signature:
`double gsl_ran_discrete_pdf (size_t k, const gsl_ran_discrete_t *g)`
"""
function gsl_ran_discrete_pdf(k, g)
    ccall((:gsl_ran_discrete_pdf, libgsl), Cdouble, (Csize_t, Ref{gsl_ran_discrete_t}), k, g)
end

