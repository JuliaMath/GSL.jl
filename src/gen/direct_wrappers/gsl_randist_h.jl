#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_randist.h ############################################################


@doc md"""
    gsl_ran_bernoulli(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_bernoulli (const gsl_rng * r, double p)`

GSL documentation:

### `unsigned int gsl_ran_bernoulli (const gsl_rng * r, double p)`

> This function returns either 0 or 1, the result of a Bernoulli trial
> with probability p. The probability distribution for a Bernoulli trial
> is,

"""
function gsl_ran_bernoulli(r, p)
    ccall((:gsl_ran_bernoulli, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

@doc md"""
    gsl_ran_bernoulli_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_bernoulli_pdf (const unsigned int k, double p)`

GSL documentation:

### `double gsl_ran_bernoulli_pdf (unsigned int k, double p)`

> This function computes the probability $p(k)$ of obtaining k from a
> Bernoulli distribution with probability parameter p, using the formula
> given above.
>
> ![image](/images/rand-bernoulli.png)

|newpage|

"""
function gsl_ran_bernoulli_pdf(k, p)
    ccall((:gsl_ran_bernoulli_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

@doc md"""
    gsl_ran_beta(r, a, b) -> Cdouble

C signature:
`double gsl_ran_beta (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_beta (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the beta distribution. The
> distribution function is,
>
> $$p(x) dx = {\Gamma(a+b) \over \Gamma(a) \Gamma(b)} x^{a-1} (1-x)^{b-1} dx$$
>
> for $0 \le x \le 1$.

"""
function gsl_ran_beta(r, a, b)
    ccall((:gsl_ran_beta, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_beta_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_beta_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_beta_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a beta
> distribution with parameters a and b, using the formula given above.
>
> ![image](/images/rand-beta.png)

"""
function gsl_ran_beta_pdf(x, a, b)
    ccall((:gsl_ran_beta_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_binomial(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial (const gsl_rng * r, double p, unsigned int n)`

GSL documentation:

### `unsigned int gsl_ran_binomial (const gsl_rng * r, double p, unsigned int n)`

> This function returns a random integer from the binomial distribution,
> the number of successes in n independent trials with probability p.
> The probability distribution for binomial variates is,
>
> $$p(k) = {n! \over k! (n-k)!} p^k (1-p)^{n-k}$$
>
> for $0 \le k \le n$.

"""
function gsl_ran_binomial(r, p, n)
    ccall((:gsl_ran_binomial, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

@doc md"""
    gsl_ran_binomial_knuth(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial_knuth (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_binomial_knuth(r, p, n)
    ccall((:gsl_ran_binomial_knuth, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

@doc md"""
    gsl_ran_binomial_tpe(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_binomial_tpe (const gsl_rng * r, double p, unsigned int n)`
"""
function gsl_ran_binomial_tpe(r, p, n)
    ccall((:gsl_ran_binomial_tpe, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

@doc md"""
    gsl_ran_binomial_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_binomial_pdf (const unsigned int k, const double p, const unsigned int n)`

GSL documentation:

### `double gsl_ran_binomial_pdf (unsigned int k, double p, unsigned int n)`

> This function computes the probability $p(k)$ of obtaining k from a
> binomial distribution with parameters p and n, using the formula given
> above.
>
> ![image](/images/rand-binomial.png)

"""
function gsl_ran_binomial_pdf(k, p, n)
    ccall((:gsl_ran_binomial_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    gsl_ran_exponential(r, mu) -> Cdouble

C signature:
`double gsl_ran_exponential (const gsl_rng * r, const double mu)`

GSL documentation:

### `double gsl_ran_exponential (const gsl_rng * r, double mu)`

> This function returns a random variate from the exponential
> distribution with mean mu. The distribution is,
>
> $$p(x) dx = {1 \over \mu} \exp(-x/\mu) dx$$
>
> for $x \ge 0$.

"""
function gsl_ran_exponential(r, mu)
    ccall((:gsl_ran_exponential, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, mu)
end

@doc md"""
    gsl_ran_exponential_pdf(x, mu) -> Cdouble

C signature:
`double gsl_ran_exponential_pdf (const double x, const double mu)`

GSL documentation:

### `double gsl_ran_exponential_pdf (double x, double mu)`

> This function computes the probability density $p(x)$ at x for an
> exponential distribution with mean mu, using the formula given above.
>
> ![image](/images/rand-exponential.png)

"""
function gsl_ran_exponential_pdf(x, mu)
    ccall((:gsl_ran_exponential_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, mu)
end

@doc md"""
    gsl_ran_exppow(r, a, b) -> Cdouble

C signature:
`double gsl_ran_exppow (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_exppow (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the exponential power
> distribution with scale parameter a and exponent b. The distribution
> is,
>
> $$p(x) dx = {1 \over 2 a \Gamma(1+1/b)} \exp(-|x/a|^b) dx$$
>
> for $x \ge 0$. For $b = 1$ this reduces to the Laplace distribution.
> For $b = 2$ it has the same form as a Gaussian distribution, but with
> $a = \sqrt{2} \sigma$.

"""
function gsl_ran_exppow(r, a, b)
    ccall((:gsl_ran_exppow, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_exppow_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_exppow_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_exppow_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for an
> exponential power distribution with scale parameter a and exponent b,
> using the formula given above.
>
> ![image](/images/rand-exppow.png)

"""
function gsl_ran_exppow_pdf(x, a, b)
    ccall((:gsl_ran_exppow_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_cauchy(r, a) -> Cdouble

C signature:
`double gsl_ran_cauchy (const gsl_rng * r, const double a)`

GSL documentation:

### `double gsl_ran_cauchy (const gsl_rng * r, double a)`

> This function returns a random variate from the Cauchy distribution
> with scale parameter a. The probability distribution for Cauchy random
> variates is,
>
> $$p(x) dx = {1 \over a\pi (1 + (x/a)^2) } dx$$
>
> for $x$ in the range $-\infty$ to $+\infty$. The Cauchy distribution
> is also known as the Lorentz distribution.

"""
function gsl_ran_cauchy(r, a)
    ccall((:gsl_ran_cauchy, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

@doc md"""
    gsl_ran_cauchy_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_cauchy_pdf (const double x, const double a)`

GSL documentation:

### `double gsl_ran_cauchy_pdf (double x, double a)`

> This function computes the probability density $p(x)$ at x for a
> Cauchy distribution with scale parameter a, using the formula given
> above.
>
> ![image](/images/rand-cauchy.png)

"""
function gsl_ran_cauchy_pdf(x, a)
    ccall((:gsl_ran_cauchy_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    gsl_ran_chisq(r, nu) -> Cdouble

C signature:
`double gsl_ran_chisq (const gsl_rng * r, const double nu)`

GSL documentation:

### `double gsl_ran_chisq (const gsl_rng * r, double nu)`

> This function returns a random variate from the chi-squared
> distribution with nu degrees of freedom. The distribution function is,
>
> $$p(x) dx = {1 \over 2 \Gamma(\nu/2) } (x/2)^{\nu/2 - 1} \exp(-x/2) dx$$
>
> for $x \ge 0$.

"""
function gsl_ran_chisq(r, nu)
    ccall((:gsl_ran_chisq, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, nu)
end

@doc md"""
    gsl_ran_chisq_pdf(x, nu) -> Cdouble

C signature:
`double gsl_ran_chisq_pdf (const double x, const double nu)`

GSL documentation:

### `double gsl_ran_chisq_pdf (double x, double nu)`

> This function computes the probability density $p(x)$ at x for a
> chi-squared distribution with nu degrees of freedom, using the formula
> given above.
>
> ![image](/images/rand-chisq.png)

"""
function gsl_ran_chisq_pdf(x, nu)
    ccall((:gsl_ran_chisq_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    gsl_ran_dirichlet(r, K, alpha, theta) -> Cvoid

C signature:
`void gsl_ran_dirichlet (const gsl_rng * r, const size_t K, const double alpha[], double theta[])`

GSL documentation:

### `void gsl_ran_dirichlet (const gsl_rng * r, size_t K, const double alpha[], double theta[])`

> This function returns an array of K random variates from a Dirichlet
> distribution of order K-1. The distribution function is
>
> for $\theta_i \ge 0$ and $\alpha_i > 0$. The delta function ensures
> that $\sum \theta_i = 1$. The normalization factor $Z$ is
>
> $$Z = {\prod_{i=1}^K \Gamma(\alpha_i) \over \Gamma( \sum_{i=1}^K \alpha_i)}$$
>
> The random variates are generated by sampling K values from gamma
> distributions with parameters $a=\alpha_i$, $b=1$, and renormalizing.
> See A.M. Law, W.D. Kelton, *Simulation Modeling and Analysis* (1991).

"""
function gsl_ran_dirichlet(r, K, alpha, theta)
    ccall((:gsl_ran_dirichlet, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), r, K, alpha, theta)
end

@doc md"""
    gsl_ran_dirichlet_pdf(K, alpha, theta) -> Cdouble

C signature:
`double gsl_ran_dirichlet_pdf (const size_t K, const double alpha[], const double theta[])`

GSL documentation:

### `double gsl_ran_dirichlet_pdf (size_t K, const double alpha[], const double theta[])`

> This function computes the probability density
> $p(\theta_1, \ldots , \theta_K)$ at `theta[K]`{.sourceCode} for a
> Dirichlet distribution with parameters `alpha[K]`{.sourceCode}, using
> the formula given above.

"""
function gsl_ran_dirichlet_pdf(K, alpha, theta)
    ccall((:gsl_ran_dirichlet_pdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cdouble}), K, alpha, theta)
end

@doc md"""
    gsl_ran_dirichlet_lnpdf(K, alpha, theta) -> Cdouble

C signature:
`double gsl_ran_dirichlet_lnpdf (const size_t K, const double alpha[], const double theta[])`

GSL documentation:

### `double gsl_ran_dirichlet_lnpdf (size_t K, const double alpha[], const double theta[])`

> This function computes the logarithm of the probability density
> $p(\theta_1, \ldots , \theta_K)$ for a Dirichlet distribution with
> parameters `alpha[K]`{.sourceCode}.

|newpage|

"""
function gsl_ran_dirichlet_lnpdf(K, alpha, theta)
    ccall((:gsl_ran_dirichlet_lnpdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cdouble}), K, alpha, theta)
end

@doc md"""
    gsl_ran_erlang(r, a, n) -> Cdouble

C signature:
`double gsl_ran_erlang (const gsl_rng * r, const double a, const double n)`
"""
function gsl_ran_erlang(r, a, n)
    ccall((:gsl_ran_erlang, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, n)
end

@doc md"""
    gsl_ran_erlang_pdf(x, a, n) -> Cdouble

C signature:
`double gsl_ran_erlang_pdf (const double x, const double a, const double n)`
"""
function gsl_ran_erlang_pdf(x, a, n)
    ccall((:gsl_ran_erlang_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, n)
end

@doc md"""
    gsl_ran_fdist(r, nu1, nu2) -> Cdouble

C signature:
`double gsl_ran_fdist (const gsl_rng * r, const double nu1, const double nu2)`

GSL documentation:

### `double gsl_ran_fdist (const gsl_rng * r, double nu1, double nu2)`

> This function returns a random variate from the F-distribution with
> degrees of freedom nu1 and nu2. The distribution function is,
>
> for $x \ge 0$.

"""
function gsl_ran_fdist(r, nu1, nu2)
    ccall((:gsl_ran_fdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, nu1, nu2)
end

@doc md"""
    gsl_ran_fdist_pdf(x, nu1, nu2) -> Cdouble

C signature:
`double gsl_ran_fdist_pdf (const double x, const double nu1, const double nu2)`

GSL documentation:

### `double gsl_ran_fdist_pdf (double x, double nu1, double nu2)`

> This function computes the probability density $p(x)$ at x for an
> F-distribution with nu1 and nu2 degrees of freedom, using the formula
> given above.
>
> ![image](/images/rand-fdist.png)

"""
function gsl_ran_fdist_pdf(x, nu1, nu2)
    ccall((:gsl_ran_fdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, nu1, nu2)
end

@doc md"""
    gsl_ran_flat(r, a, b) -> Cdouble

C signature:
`double gsl_ran_flat (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_flat (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the flat (uniform)
> distribution from a to b. The distribution is,
>
> $$p(x) dx = {1 \over (b-a)} dx$$
>
> if $a \le x < b$ and 0 otherwise.

"""
function gsl_ran_flat(r, a, b)
    ccall((:gsl_ran_flat, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_flat_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_flat_pdf (double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_flat_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a
> uniform distribution from a to b, using the formula given above.
>
> ![image](/images/rand-flat.png)

"""
function gsl_ran_flat_pdf(x, a, b)
    ccall((:gsl_ran_flat_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_gamma(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gamma (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the gamma distribution.
> The distribution function is,
>
> $$p(x) dx = {1 \over \Gamma(a) b^a} x^{a-1} e^{-x/b} dx$$
>
> for $x > 0$.
>
> The gamma distribution with an integer parameter a is known as the
> Erlang distribution.
>
> The variates are computed using the Marsaglia-Tsang fast gamma method.
> This function for this method was previously called
> gsl\_ran\_gamma\_mt and can still be accessed using this name.

"""
function gsl_ran_gamma(r, a, b)
    ccall((:gsl_ran_gamma, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_gamma_int(r, a) -> Cdouble

C signature:
`double gsl_ran_gamma_int (const gsl_rng * r, const unsigned int a)`
"""
function gsl_ran_gamma_int(r, a)
    ccall((:gsl_ran_gamma_int, libgsl), Cdouble, (Ref{gsl_rng}, Cuint), r, a)
end

@doc md"""
    gsl_ran_gamma_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gamma_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a gamma
> distribution with parameters a and b, using the formula given above.
>
> ![image](/images/rand-gamma.png)

"""
function gsl_ran_gamma_pdf(x, a, b)
    ccall((:gsl_ran_gamma_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_gamma_mt(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_mt (const gsl_rng * r, const double a, const double b)`
"""
function gsl_ran_gamma_mt(r, a, b)
    ccall((:gsl_ran_gamma_mt, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_gamma_knuth(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gamma_knuth (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gamma_knuth (const gsl_rng * r, double a, double b)`

> This function returns a gamma variate using the algorithms from Knuth
> (vol 2).

"""
function gsl_ran_gamma_knuth(r, a, b)
    ccall((:gsl_ran_gamma_knuth, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_gaussian(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian (const gsl_rng * r, const double sigma)`

GSL documentation:

### `double gsl_ran_gaussian (const gsl_rng * r, double sigma)`

> This function returns a Gaussian random variate, with mean zero and
> standard deviation sigma. The probability distribution for Gaussian
> random variates is,
>
> $$p(x) dx = {1 \over \sqrt{2 \pi \sigma^2}} \exp (-x^2 / 2\sigma^2) dx$$
>
> for $x$ in the range $-\infty$ to $+\infty$. Use the transformation
> $z = \mu + x$ on the numbers returned by gsl\_ran\_gaussian to obtain
> a Gaussian distribution with mean $\mu$. This function uses the
> Box-Muller algorithm which requires two calls to the random number
> generator r.

"""
function gsl_ran_gaussian(r, sigma)
    ccall((:gsl_ran_gaussian, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

@doc md"""
    gsl_ran_gaussian_ratio_method(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_ratio_method (const gsl_rng * r, const double sigma)`
"""
function gsl_ran_gaussian_ratio_method(r, sigma)
    ccall((:gsl_ran_gaussian_ratio_method, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

@doc md"""
    gsl_ran_gaussian_ziggurat(r, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_ziggurat (const gsl_rng * r, const double sigma)`

GSL documentation:

### `double gsl_ran_gaussian_ziggurat (const gsl_rng * r, double sigma)`

> double gsl\_ran\_gaussian\_ratio\_method (const gsl\_rng \* r, double
> sigma)

> This function computes a Gaussian random variate using the alternative
> Marsaglia-Tsang ziggurat and Kinderman-Monahan-Leva ratio methods. The
> Ziggurat algorithm is the fastest available algorithm in most cases.

"""
function gsl_ran_gaussian_ziggurat(r, sigma)
    ccall((:gsl_ran_gaussian_ziggurat, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

@doc md"""
    gsl_ran_gaussian_pdf(x, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_pdf (const double x, const double sigma)`

GSL documentation:

### `double gsl_ran_gaussian_pdf (double x, double sigma)`

> This function computes the probability density $p(x)$ at x for a
> Gaussian distribution with standard deviation sigma, using the formula
> given above.
>
> ![image](/images/rand-gaussian.png)

"""
function gsl_ran_gaussian_pdf(x, sigma)
    ccall((:gsl_ran_gaussian_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    gsl_ran_ugaussian(r) -> Cdouble

C signature:
`double gsl_ran_ugaussian (const gsl_rng * r)`

GSL documentation:

### `double gsl_ran_ugaussian (const gsl_rng * r)`

> double gsl\_ran\_ugaussian\_pdf (double x) double
> gsl\_ran\_ugaussian\_ratio\_method (const gsl\_rng \* r)

> These functions compute results for the unit Gaussian distribution.
> They are equivalent to the functions above with a standard deviation
> of one, sigma = 1.

"""
function gsl_ran_ugaussian(r)
    ccall((:gsl_ran_ugaussian, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

@doc md"""
    gsl_ran_ugaussian_ratio_method(r) -> Cdouble

C signature:
`double gsl_ran_ugaussian_ratio_method (const gsl_rng * r)`
"""
function gsl_ran_ugaussian_ratio_method(r)
    ccall((:gsl_ran_ugaussian_ratio_method, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

@doc md"""
    gsl_ran_ugaussian_pdf(x) -> Cdouble

C signature:
`double gsl_ran_ugaussian_pdf (const double x)`
"""
function gsl_ran_ugaussian_pdf(x)
    ccall((:gsl_ran_ugaussian_pdf, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_ran_gaussian_tail(r, a, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_tail (const gsl_rng * r, const double a, const double sigma)`

GSL documentation:

### `double gsl_ran_gaussian_tail (const gsl_rng * r, double a, double sigma)`

> This function provides random variates from the upper tail of a
> Gaussian distribution with standard deviation sigma. The values
> returned are larger than the lower limit a, which must be positive.
> The method is based on Marsaglia's famous rectangle-wedge-tail
> algorithm (Ann. Math. Stat. 32, 894--899 (1961)), with this aspect
> explained in Knuth, v2, 3rd ed, p139,586 (exercise 11).
>
> The probability distribution for Gaussian tail random variates is,
>
> $$p(x) dx = {1 \over N(a;\sigma) \sqrt{2 \pi \sigma^2}} \exp (- x^2 / 2\sigma^2) dx$$
>
> for $x > a$ where $N(a;\sigma)$ is the normalization constant,

"""
function gsl_ran_gaussian_tail(r, a, sigma)
    ccall((:gsl_ran_gaussian_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, sigma)
end

@doc md"""
    gsl_ran_gaussian_tail_pdf(x, a, sigma) -> Cdouble

C signature:
`double gsl_ran_gaussian_tail_pdf (const double x, const double a, const double sigma)`

GSL documentation:

### `double gsl_ran_gaussian_tail_pdf (double x, double a, double sigma)`

> This function computes the probability density $p(x)$ at x for a
> Gaussian tail distribution with standard deviation sigma and lower
> limit a, using the formula given above.
>
> ![image](/images/rand-gaussian-tail.png)

"""
function gsl_ran_gaussian_tail_pdf(x, a, sigma)
    ccall((:gsl_ran_gaussian_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, sigma)
end

@doc md"""
    gsl_ran_ugaussian_tail(r, a) -> Cdouble

C signature:
`double gsl_ran_ugaussian_tail (const gsl_rng * r, const double a)`

GSL documentation:

### `double gsl_ran_ugaussian_tail (const gsl_rng * r, double a)`

> double gsl\_ran\_ugaussian\_tail\_pdf (double x, double a)

> These functions compute results for the tail of a unit Gaussian
> distribution. They are equivalent to the functions above with a
> standard deviation of one, sigma = 1.

|newpage|

"""
function gsl_ran_ugaussian_tail(r, a)
    ccall((:gsl_ran_ugaussian_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

@doc md"""
    gsl_ran_ugaussian_tail_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_ugaussian_tail_pdf (const double x, const double a)`
"""
function gsl_ran_ugaussian_tail_pdf(x, a)
    ccall((:gsl_ran_ugaussian_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    gsl_ran_bivariate_gaussian(r, sigma_x, sigma_y, rho, x, y) -> Cvoid

C signature:
`void gsl_ran_bivariate_gaussian (const gsl_rng * r, double sigma_x, double sigma_y, double rho, double *x, double *y)`

GSL documentation:

### `void gsl_ran_bivariate_gaussian (const gsl_rng * r, double sigma_x, double sigma_y, double rho, double * x, double * y)`

> This function generates a pair of correlated Gaussian variates, with
> mean zero, correlation coefficient rho and standard deviations
> sigma\_x and sigma\_y in the $x$ and $y$ directions. The probability
> distribution for bivariate Gaussian random variates is,
>
> for $x,y$ in the range $-\infty$ to $+\infty$. The correlation
> coefficient rho should lie between $1$ and $-1$.

"""
function gsl_ran_bivariate_gaussian(r, sigma_x, sigma_y, rho, x, y)
    ccall((:gsl_ran_bivariate_gaussian, libgsl), Cvoid, (Ref{gsl_rng}, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), r, sigma_x, sigma_y, rho, x, y)
end

@doc md"""
    gsl_ran_bivariate_gaussian_pdf(x, y, sigma_x, sigma_y, rho) -> Cdouble

C signature:
`double gsl_ran_bivariate_gaussian_pdf (const double x, const double y, const double sigma_x, const double sigma_y, const double rho)`

GSL documentation:

### `double gsl_ran_bivariate_gaussian_pdf (double x, double y, double sigma_x, double sigma_y, double rho)`

> This function computes the probability density $p(x,y)$ at (x, y) for
> a bivariate Gaussian distribution with standard deviations sigma\_x,
> sigma\_y and correlation coefficient rho, using the formula given
> above.
>
> ![image](/images/rand-bivariate-gaussian.png)

|newpage|

"""
function gsl_ran_bivariate_gaussian_pdf(x, y, sigma_x, sigma_y, rho)
    ccall((:gsl_ran_bivariate_gaussian_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), x, y, sigma_x, sigma_y, rho)
end

@doc md"""
    gsl_ran_multivariate_gaussian(r, mu, L, result) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian (const gsl_rng * r, const gsl_vector * mu, const gsl_matrix * L, gsl_vector * result)`

GSL documentation:

### `int gsl_ran_multivariate_gaussian (const gsl_rng * r, const gsl_vector * mu, const gsl_matrix * L, gsl_vector * result)`

> This function generates a random vector satisfying the $k$-dimensional
> multivariate Gaussian distribution with mean $\mu$ and
> variance-covariance matrix $\Sigma$. On input, the $k$-vector $\mu$ is
> given in mu, and the Cholesky factor of the $k$-by-$k$ matrix
> $\Sigma = L L^T$ is given in the lower triangle of L, as output from
> gsl\_linalg\_cholesky\_decomp. The random vector is stored in result
> on output. The probability distribution for multivariate Gaussian
> random variates is

"""
function gsl_ran_multivariate_gaussian(r, mu, L, result)
    ccall((:gsl_ran_multivariate_gaussian, libgsl), Cint, (Ref{gsl_rng}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), r, mu, L, result)
end

@doc md"""
    gsl_ran_multivariate_gaussian_log_pdf(x, mu, L, result, work) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_log_pdf (const gsl_vector * x, const gsl_vector * mu, const gsl_matrix * L, double * result, gsl_vector * work)`
"""
function gsl_ran_multivariate_gaussian_log_pdf(x, mu, L, result, work)
    ccall((:gsl_ran_multivariate_gaussian_log_pdf, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_vector}), x, mu, L, result, work)
end

@doc md"""
    gsl_ran_multivariate_gaussian_pdf(x, mu, L, result, work) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_pdf (const gsl_vector * x, const gsl_vector * mu, const gsl_matrix * L, double * result, gsl_vector * work)`

GSL documentation:

### `int gsl_ran_multivariate_gaussian_pdf (const gsl_vector * x, const gsl_vector * mu, const gsl_matrix * L, double * result, gsl_vector * work)`

> int gsl\_ran\_multivariate\_gaussian\_log\_pdf (const gsl\_vector \*
> x, const gsl\_vector \* mu, const gsl\_matrix \* L, double \* result,
> gsl\_vector \* work)

> These functions compute $p(x)$ or $\log{p(x)}$ at the point x, using
> mean vector mu and variance-covariance matrix specified by its
> Cholesky factor L using the formula above. Additional workspace of
> length $k$ is required in work.

"""
function gsl_ran_multivariate_gaussian_pdf(x, mu, L, result, work)
    ccall((:gsl_ran_multivariate_gaussian_pdf, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_vector}), x, mu, L, result, work)
end

@doc md"""
    gsl_ran_multivariate_gaussian_mean(X, mu_hat) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_mean (const gsl_matrix * X, gsl_vector * mu_hat)`

GSL documentation:

### `int gsl_ran_multivariate_gaussian_mean (const gsl_matrix * X, gsl_vector * mu_hat)`

> Given a set of $n$ samples $X_j$ from a $k$-dimensional multivariate
> Gaussian distribution, this function computes the maximum likelihood
> estimate of the mean of the distribution, given by
>
> $$\Hat{\mu} = {1 \over n} \sum_{j=1}^n X_j$$
>
> The samples $X_1,X_2,\dots,X_n$ are given in the $n$-by-$k$ matrix X,
> and the maximum likelihood estimate of the mean is stored in mu\_hat
> on output.

"""
function gsl_ran_multivariate_gaussian_mean(X, mu_hat)
    ccall((:gsl_ran_multivariate_gaussian_mean, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), X, mu_hat)
end

@doc md"""
    gsl_ran_multivariate_gaussian_vcov(X, sigma_hat) -> Cint

C signature:
`int gsl_ran_multivariate_gaussian_vcov (const gsl_matrix * X, gsl_matrix * sigma_hat)`

GSL documentation:

### `int gsl_ran_multivariate_gaussian_vcov (const gsl_matrix * X, gsl_matrix * sigma_hat)`

> Given a set of $n$ samples $X_j$ from a $k$-dimensional multivariate
> Gaussian distribution, this function computes the maximum likelihood
> estimate of the variance-covariance matrix of the distribution, given
> by
>
> The samples $X_1,X_2,\dots,X_n$ are given in the $n$-by-$k$ matrix X
> and the maximum likelihood estimate of the variance-covariance matrix
> is stored in sigma\_hat on output.

|newpage|

"""
function gsl_ran_multivariate_gaussian_vcov(X, sigma_hat)
    ccall((:gsl_ran_multivariate_gaussian_vcov, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), X, sigma_hat)
end

@doc md"""
    gsl_ran_wishart(r, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart (const gsl_rng * r, const double df, const gsl_matrix * L, gsl_matrix * result, gsl_matrix * work)`

GSL documentation:

### `int gsl_ran_wishart (const gsl_rng * r, const double n, const gsl_matrix * L, gsl_matrix * result, gsl_matrix * work)`

> This function computes a random symmetric $p$-by-$p$ matrix from the
> Wishart distribution. The probability distribution for Wishart random
> variates is,
>
> Here, $n > p - 1$ is the number of degrees of freedom, $V$ is a
> symmetric positive definite $p$-by-$p$ scale matrix, whose Cholesky
> factor is specified by L, and work is $p$-by-$p$ workspace. The
> $p$-by-$p$ Wishart distributed matrix $X$ is stored in result on
> output.

"""
function gsl_ran_wishart(r, df, L, result, work)
    ccall((:gsl_ran_wishart, libgsl), Cint, (Ref{gsl_rng}, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}, Ref{gsl_matrix}), r, df, L, result, work)
end

@doc md"""
    gsl_ran_wishart_log_pdf(X, L_X, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart_log_pdf (const gsl_matrix * X, const gsl_matrix * L_X, const double df, const gsl_matrix * L, double * result, gsl_matrix * work)`
"""
function gsl_ran_wishart_log_pdf(X, L_X, df, L, result, work)
    ccall((:gsl_ran_wishart_log_pdf, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_matrix}), X, L_X, df, L, result, work)
end

@doc md"""
    gsl_ran_wishart_pdf(X, L_X, df, L, result, work) -> Cint

C signature:
`int gsl_ran_wishart_pdf (const gsl_matrix * X, const gsl_matrix * L_X, const double df, const gsl_matrix * L, double * result, gsl_matrix * work)`

GSL documentation:

### `int gsl_ran_wishart_pdf (const gsl_matrix * X, const gsl_matrix * L_X, const double n, const gsl_matrix * L, double * result, gsl_matrix * work)`

> int gsl\_ran\_wishart\_log\_pdf (const gsl\_matrix \* X, const
> gsl\_matrix \* L\_X, const double n, const gsl\_matrix \* L, double \*
> result, gsl\_matrix \* work)

> These functions compute $p(X)$ or $\log{p(X)}$ for the $p$-by-$p$
> matrix X, whose Cholesky factor is specified in L\_X. The degrees of
> freedom is given by n, the Cholesky factor of the scale matrix $V$ is
> specified in L, and work is $p$-by-$p$ workspace. The probably density
> value is returned in result.

|newpage|

"""
function gsl_ran_wishart_pdf(X, L_X, df, L, result, work)
    ccall((:gsl_ran_wishart_pdf, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_matrix}), X, L_X, df, L, result, work)
end

@doc md"""
    gsl_ran_landau(r) -> Cdouble

C signature:
`double gsl_ran_landau (const gsl_rng * r)`

GSL documentation:

### `double gsl_ran_landau (const gsl_rng * r)`

> This function returns a random variate from the Landau distribution.
> The probability distribution for Landau random variates is defined
> analytically by the complex integral,
>
> For numerical purposes it is more convenient to use the following
> equivalent form of the integral,
>
> $$p(x) = (1/\pi) \int_0^\infty dt \exp(-t \log(t) - x t) \sin(\pi t).$$

"""
function gsl_ran_landau(r)
    ccall((:gsl_ran_landau, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

@doc md"""
    gsl_ran_landau_pdf(x) -> Cdouble

C signature:
`double gsl_ran_landau_pdf (const double x)`

GSL documentation:

### `double gsl_ran_landau_pdf (double x)`

> This function computes the probability density $p(x)$ at x for the
> Landau distribution using an approximation to the formula given above.
>
> ![image](/images/rand-landau.png)

|newpage|

"""
function gsl_ran_landau_pdf(x)
    ccall((:gsl_ran_landau_pdf, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_ran_geometric(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_geometric (const gsl_rng * r, const double p)`

GSL documentation:

### `unsigned int gsl_ran_geometric (const gsl_rng * r, double p)`

> This function returns a random integer from the geometric
> distribution, the number of independent trials with probability p
> until the first success. The probability distribution for geometric
> variates is,
>
> $$p(k) = p (1-p)^{k-1}$$
>
> for $k \ge 1$. Note that the distribution begins with $k = 1$ with
> this definition. There is another convention in which the exponent
> $k - 1$ is replaced by $k$.

"""
function gsl_ran_geometric(r, p)
    ccall((:gsl_ran_geometric, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

@doc md"""
    gsl_ran_geometric_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_geometric_pdf (const unsigned int k, const double p)`

GSL documentation:

### `double gsl_ran_geometric_pdf (unsigned int k, double p)`

> This function computes the probability $p(k)$ of obtaining k from a
> geometric distribution with probability parameter p, using the formula
> given above.
>
> ![image](/images/rand-geometric.png)

"""
function gsl_ran_geometric_pdf(k, p)
    ccall((:gsl_ran_geometric_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

@doc md"""
    gsl_ran_hypergeometric(r, n1, n2, t) -> Cuint

C signature:
`unsigned int gsl_ran_hypergeometric (const gsl_rng * r, unsigned int n1, unsigned int n2, unsigned int t)`

GSL documentation:

### `unsigned int gsl_ran_hypergeometric (const gsl_rng * r, unsigned int n1, unsigned int n2, unsigned int t)`

> This function returns a random integer from the hypergeometric
> distribution. The probability distribution for hypergeometric random
> variates is,
>
> $$p(k) = C(n_1, k) C(n_2, t - k) / C(n_1 + n_2, t)$$
>
> where $C(a,b) = a!/(b!(a-b)!)$ and $t \leq n_1 + n_2$. The domain of
> $k$ is $\max(0, t - n_2), \ldots, \min(t, n_1)$
>
> If a population contains $n_1$ elements of "type 1" and $n_2$ elements
> of "type 2" then the hypergeometric distribution gives the probability
> of obtaining $k$ elements of "type 1" in $t$ samples from the
> population without replacement.

"""
function gsl_ran_hypergeometric(r, n1, n2, t)
    ccall((:gsl_ran_hypergeometric, libgsl), Cuint, (Ref{gsl_rng}, Cuint, Cuint, Cuint), r, n1, n2, t)
end

@doc md"""
    gsl_ran_hypergeometric_pdf(k, n1, n2, t) -> Cdouble

C signature:
`double gsl_ran_hypergeometric_pdf (const unsigned int k, const unsigned int n1, const unsigned int n2, unsigned int t)`

GSL documentation:

### `double gsl_ran_hypergeometric_pdf (unsigned int k, unsigned int n1, unsigned int n2, unsigned int t)`

> This function computes the probability $p(k)$ of obtaining k from a
> hypergeometric distribution with parameters n1, n2, t, using the
> formula given above.
>
> ![image](/images/rand-hypergeometric.png)

"""
function gsl_ran_hypergeometric_pdf(k, n1, n2, t)
    ccall((:gsl_ran_hypergeometric_pdf, libgsl), Cdouble, (Cuint, Cuint, Cuint, Cuint), k, n1, n2, t)
end

@doc md"""
    gsl_ran_gumbel1(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel1 (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gumbel1 (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the Type-1 Gumbel
> distribution. The Type-1 Gumbel distribution function is,
>
> $$p(x) dx = a b \exp(-(b \exp(-ax) + ax)) dx$$
>
> for $-\infty < x < \infty$.

"""
function gsl_ran_gumbel1(r, a, b)
    ccall((:gsl_ran_gumbel1, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_gumbel1_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel1_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gumbel1_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a
> Type-1 Gumbel distribution with parameters a and b, using the formula
> given above.
>
> ![image](/images/rand-gumbel1.png)

"""
function gsl_ran_gumbel1_pdf(x, a, b)
    ccall((:gsl_ran_gumbel1_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_gumbel2(r, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel2 (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gumbel2 (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the Type-2 Gumbel
> distribution. The Type-2 Gumbel distribution function is,
>
> $$p(x) dx = a b x^{-a-1} \exp(-b x^{-a}) dx$$
>
> for $0 < x < \infty$.

"""
function gsl_ran_gumbel2(r, a, b)
    ccall((:gsl_ran_gumbel2, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_gumbel2_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_gumbel2_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_gumbel2_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a
> Type-2 Gumbel distribution with parameters a and b, using the formula
> given above.
>
> ![image](/images/rand-gumbel2.png)

"""
function gsl_ran_gumbel2_pdf(x, a, b)
    ccall((:gsl_ran_gumbel2_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_logistic(r, a) -> Cdouble

C signature:
`double gsl_ran_logistic (const gsl_rng * r, const double a)`

GSL documentation:

### `double gsl_ran_logistic (const gsl_rng * r, double a)`

> This function returns a random variate from the logistic distribution.
> The distribution function is,
>
> $$p(x) dx = { \exp(-x/a) \over a (1 + \exp(-x/a))^2 } dx$$
>
> for $-\infty < x < +\infty$.

"""
function gsl_ran_logistic(r, a)
    ccall((:gsl_ran_logistic, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

@doc md"""
    gsl_ran_logistic_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_logistic_pdf (const double x, const double a)`

GSL documentation:

### `double gsl_ran_logistic_pdf (double x, double a)`

> This function computes the probability density $p(x)$ at x for a
> logistic distribution with scale parameter a, using the formula given
> above.
>
> ![image](/images/rand-logistic.png)

"""
function gsl_ran_logistic_pdf(x, a)
    ccall((:gsl_ran_logistic_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    gsl_ran_lognormal(r, zeta, sigma) -> Cdouble

C signature:
`double gsl_ran_lognormal (const gsl_rng * r, const double zeta, const double sigma)`

GSL documentation:

### `double gsl_ran_lognormal (const gsl_rng * r, double zeta, double sigma)`

> This function returns a random variate from the lognormal
> distribution. The distribution function is,
>
> $$p(x) dx = {1 \over x \sqrt{2 \pi \sigma^2}} \exp(-(\ln(x) - \zeta)^2/2 \sigma^2) dx$$
>
> for $x > 0$.

"""
function gsl_ran_lognormal(r, zeta, sigma)
    ccall((:gsl_ran_lognormal, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, zeta, sigma)
end

@doc md"""
    gsl_ran_lognormal_pdf(x, zeta, sigma) -> Cdouble

C signature:
`double gsl_ran_lognormal_pdf (const double x, const double zeta, const double sigma)`

GSL documentation:

### `double gsl_ran_lognormal_pdf (double x, double zeta, double sigma)`

> This function computes the probability density $p(x)$ at x for a
> lognormal distribution with parameters zeta and sigma, using the
> formula given above.
>
> ![image](/images/rand-lognormal.png)

"""
function gsl_ran_lognormal_pdf(x, zeta, sigma)
    ccall((:gsl_ran_lognormal_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, zeta, sigma)
end

@doc md"""
    gsl_ran_logarithmic(r, p) -> Cuint

C signature:
`unsigned int gsl_ran_logarithmic (const gsl_rng * r, const double p)`

GSL documentation:

### `unsigned int gsl_ran_logarithmic (const gsl_rng * r, double p)`

> This function returns a random integer from the logarithmic
> distribution. The probability distribution for logarithmic random
> variates is,

"""
function gsl_ran_logarithmic(r, p)
    ccall((:gsl_ran_logarithmic, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, p)
end

@doc md"""
    gsl_ran_logarithmic_pdf(k, p) -> Cdouble

C signature:
`double gsl_ran_logarithmic_pdf (const unsigned int k, const double p)`

GSL documentation:

### `double gsl_ran_logarithmic_pdf (unsigned int k, double p)`

> This function computes the probability $p(k)$ of obtaining k from a
> logarithmic distribution with probability parameter p, using the
> formula given above.
>
> ![image](/images/rand-logarithmic.png)

|newpage|

"""
function gsl_ran_logarithmic_pdf(k, p)
    ccall((:gsl_ran_logarithmic_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, p)
end

@doc md"""
    gsl_ran_multinomial(r, K, N, p, n) -> Cvoid

C signature:
`void gsl_ran_multinomial (const gsl_rng * r, const size_t K, const unsigned int N, const double p[], unsigned int n[] )`

GSL documentation:

### `void gsl_ran_multinomial (const gsl_rng * r, size_t K, unsigned int N, const double p[], unsigned int n[])`

> This function computes a random sample n from the multinomial
> distribution formed by N trials from an underlying distribution
> p\[K\]. The distribution function for n is,
>
> where $(n_1, n_2, \ldots, n_K)$ are nonnegative integers with
> $\sum_{k=1}^{K} n_k = N$, and $(p_1, p_2, \ldots, p_K)$ is a
> probability distribution with $\sum p_i = 1$. If the array
> `p[K]`{.sourceCode} is not normalized then its entries will be treated
> as weights and normalized appropriately. The arrays n and p must both
> be of length K.
>
> Random variates are generated using the conditional binomial method
> (see C.S. Davis, *The computer generation of multinomial random
> variates*, Comp. Stat. Data Anal. 16 (1993) 205--217 for details).

"""
function gsl_ran_multinomial(r, K, N, p, n)
    ccall((:gsl_ran_multinomial, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Cuint, Ref{Cdouble}, Ref{Cuint}), r, K, N, p, n)
end

@doc md"""
    gsl_ran_multinomial_pdf(K, p, n) -> Cdouble

C signature:
`double gsl_ran_multinomial_pdf (const size_t K, const double p[], const unsigned int n[] )`

GSL documentation:

### `double gsl_ran_multinomial_pdf (size_t K, const double p[], const unsigned int n[])`

> This function computes the probability $P(n_1, n_2, \ldots, n_K)$ of
> sampling `n[K]`{.sourceCode} from a multinomial distribution with
> parameters `p[K]`{.sourceCode}, using the formula given above.

"""
function gsl_ran_multinomial_pdf(K, p, n)
    ccall((:gsl_ran_multinomial_pdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cuint}), K, p, n)
end

@doc md"""
    gsl_ran_multinomial_lnpdf(K, p, n) -> Cdouble

C signature:
`double gsl_ran_multinomial_lnpdf (const size_t K, const double p[], const unsigned int n[] )`

GSL documentation:

### `double gsl_ran_multinomial_lnpdf (size_t K, const double p[], const unsigned int n[])`

> This function returns the logarithm of the probability for the
> multinomial distribution $P(n_1, n_2, \ldots, n_K)$ with parameters
> `p[K]`{.sourceCode}.

|newpage|

"""
function gsl_ran_multinomial_lnpdf(K, p, n)
    ccall((:gsl_ran_multinomial_lnpdf, libgsl), Cdouble, (Csize_t, Ref{Cdouble}, Ref{Cuint}), K, p, n)
end

@doc md"""
    gsl_ran_negative_binomial(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_negative_binomial (const gsl_rng * r, double p, double n)`

GSL documentation:

### `unsigned int gsl_ran_negative_binomial (const gsl_rng * r, double p, double n)`

> This function returns a random integer from the negative binomial
> distribution, the number of failures occurring before n successes in
> independent trials with probability p of success. The probability
> distribution for negative binomial variates is,
>
> $$p(k) = {\Gamma(n + k) \over \Gamma(k+1) \Gamma(n) } p^n (1-p)^k$$
>
> Note that $n$ is not required to be an integer.

"""
function gsl_ran_negative_binomial(r, p, n)
    ccall((:gsl_ran_negative_binomial, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cdouble), r, p, n)
end

@doc md"""
    gsl_ran_negative_binomial_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_negative_binomial_pdf (const unsigned int k, const double p, double n)`

GSL documentation:

### `double gsl_ran_negative_binomial_pdf (unsigned int k, double p, double  n)`

> This function computes the probability $p(k)$ of obtaining k from a
> negative binomial distribution with parameters p and n, using the
> formula given above.
>
> ![image](/images/rand-nbinomial.png)

"""
function gsl_ran_negative_binomial_pdf(k, p, n)
    ccall((:gsl_ran_negative_binomial_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cdouble), k, p, n)
end

@doc md"""
    gsl_ran_pascal(r, p, n) -> Cuint

C signature:
`unsigned int gsl_ran_pascal (const gsl_rng * r, double p, unsigned int n)`

GSL documentation:

### `unsigned int gsl_ran_pascal (const gsl_rng * r, double p, unsigned int n)`

> This function returns a random integer from the Pascal distribution.
> The Pascal distribution is simply a negative binomial distribution
> with an integer value of $n$.
>
> $$p(k) = {(n + k - 1)! \over k! (n - 1)! } p^n (1-p)^k$$
>
> for $k \ge 0$.

"""
function gsl_ran_pascal(r, p, n)
    ccall((:gsl_ran_pascal, libgsl), Cuint, (Ref{gsl_rng}, Cdouble, Cuint), r, p, n)
end

@doc md"""
    gsl_ran_pascal_pdf(k, p, n) -> Cdouble

C signature:
`double gsl_ran_pascal_pdf (const unsigned int k, const double p, unsigned int n)`

GSL documentation:

### `double gsl_ran_pascal_pdf (unsigned int k, double p, unsigned int n)`

> This function computes the probability $p(k)$ of obtaining k from a
> Pascal distribution with parameters p and n, using the formula given
> above.
>
> ![image](/images/rand-pascal.png)

"""
function gsl_ran_pascal_pdf(k, p, n)
    ccall((:gsl_ran_pascal_pdf, libgsl), Cdouble, (Cuint, Cdouble, Cuint), k, p, n)
end

@doc md"""
    gsl_ran_pareto(r, a, b) -> Cdouble

C signature:
`double gsl_ran_pareto (const gsl_rng * r, double a, const double b)`

GSL documentation:

### `double gsl_ran_pareto (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the Pareto distribution of
> order a. The distribution function is,
>
> $$p(x) dx = (a/b) / (x/b)^{a+1} dx$$
>
> for $x \ge b$.

"""
function gsl_ran_pareto(r, a, b)
    ccall((:gsl_ran_pareto, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_pareto_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_pareto_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_pareto_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a
> Pareto distribution with exponent a and scale b, using the formula
> given above.
>
> ![image](/images/rand-pareto.png)

"""
function gsl_ran_pareto_pdf(x, a, b)
    ccall((:gsl_ran_pareto_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_poisson(r, mu) -> Cuint

C signature:
`unsigned int gsl_ran_poisson (const gsl_rng * r, double mu)`

GSL documentation:

### `unsigned int gsl_ran_poisson (const gsl_rng * r, double mu)`

> This function returns a random integer from the Poisson distribution
> with mean mu. The probability distribution for Poisson variates is,
>
> $$p(k) = {\mu^k \over k!} \exp(-\mu)$$
>
> for $k \ge 0$.

"""
function gsl_ran_poisson(r, mu)
    ccall((:gsl_ran_poisson, libgsl), Cuint, (Ref{gsl_rng}, Cdouble), r, mu)
end

@doc md"""
    gsl_ran_poisson_array(r, n, array, mu) -> Cvoid

C signature:
`void gsl_ran_poisson_array (const gsl_rng * r, size_t n, unsigned int array[], double mu)`
"""
function gsl_ran_poisson_array(r, n, array, mu)
    ccall((:gsl_ran_poisson_array, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cuint}, Cdouble), r, n, array, mu)
end

@doc md"""
    gsl_ran_poisson_pdf(k, mu) -> Cdouble

C signature:
`double gsl_ran_poisson_pdf (const unsigned int k, const double mu)`

GSL documentation:

### `double gsl_ran_poisson_pdf (unsigned int k, double mu)`

> This function computes the probability $p(k)$ of obtaining k from a
> Poisson distribution with mean mu, using the formula given above.
>
> ![image](/images/rand-poisson.png)

"""
function gsl_ran_poisson_pdf(k, mu)
    ccall((:gsl_ran_poisson_pdf, libgsl), Cdouble, (Cuint, Cdouble), k, mu)
end

@doc md"""
    gsl_ran_rayleigh(r, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh (const gsl_rng * r, const double sigma)`

GSL documentation:

### `double gsl_ran_rayleigh (const gsl_rng * r, double sigma)`

> This function returns a random variate from the Rayleigh distribution
> with scale parameter sigma. The distribution is,
>
> $$p(x) dx = {x \over \sigma^2} \exp(- x^2/(2 \sigma^2)) dx$$
>
> for $x > 0$.

"""
function gsl_ran_rayleigh(r, sigma)
    ccall((:gsl_ran_rayleigh, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, sigma)
end

@doc md"""
    gsl_ran_rayleigh_pdf(x, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_pdf (const double x, const double sigma)`

GSL documentation:

### `double gsl_ran_rayleigh_pdf (double x, double sigma)`

> This function computes the probability density $p(x)$ at x for a
> Rayleigh distribution with scale parameter sigma, using the formula
> given above.
>
> ![image](/images/rand-rayleigh.png)

"""
function gsl_ran_rayleigh_pdf(x, sigma)
    ccall((:gsl_ran_rayleigh_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, sigma)
end

@doc md"""
    gsl_ran_rayleigh_tail(r, a, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_tail (const gsl_rng * r, const double a, const double sigma)`

GSL documentation:

### `double gsl_ran_rayleigh_tail (const gsl_rng * r, double a, double sigma)`

> This function returns a random variate from the tail of the Rayleigh
> distribution with scale parameter sigma and a lower limit of a. The
> distribution is,
>
> $$p(x) dx = {x \over \sigma^2} \exp ((a^2 - x^2) /(2 \sigma^2)) dx$$
>
> for $x > a$.

"""
function gsl_ran_rayleigh_tail(r, a, sigma)
    ccall((:gsl_ran_rayleigh_tail, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, sigma)
end

@doc md"""
    gsl_ran_rayleigh_tail_pdf(x, a, sigma) -> Cdouble

C signature:
`double gsl_ran_rayleigh_tail_pdf (const double x, const double a, const double sigma)`

GSL documentation:

### `double gsl_ran_rayleigh_tail_pdf (double x, double a, double sigma)`

> This function computes the probability density $p(x)$ at x for a
> Rayleigh tail distribution with scale parameter sigma and lower limit
> a, using the formula given above.
>
> ![image](/images/rand-rayleigh-tail.png)

|newpage|

"""
function gsl_ran_rayleigh_tail_pdf(x, a, sigma)
    ccall((:gsl_ran_rayleigh_tail_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, sigma)
end

@doc md"""
    gsl_ran_tdist(r, nu) -> Cdouble

C signature:
`double gsl_ran_tdist (const gsl_rng * r, const double nu)`

GSL documentation:

### `double gsl_ran_tdist (const gsl_rng * r, double nu)`

> This function returns a random variate from the t-distribution. The
> distribution function is,
>
> $$p(x) dx = {\Gamma((\nu + 1)/2) \over \sqrt{\pi \nu} \Gamma(\nu/2)}
>    (1 + x^2/\nu)^{-(\nu + 1)/2} dx$$
>
> for $-\infty < x < +\infty$.

"""
function gsl_ran_tdist(r, nu)
    ccall((:gsl_ran_tdist, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, nu)
end

@doc md"""
    gsl_ran_tdist_pdf(x, nu) -> Cdouble

C signature:
`double gsl_ran_tdist_pdf (const double x, const double nu)`

GSL documentation:

### `double gsl_ran_tdist_pdf (double x, double nu)`

> This function computes the probability density $p(x)$ at x for a
> t-distribution with nu degrees of freedom, using the formula given
> above.
>
> ![image](/images/rand-tdist.png)

"""
function gsl_ran_tdist_pdf(x, nu)
    ccall((:gsl_ran_tdist_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, nu)
end

@doc md"""
    gsl_ran_laplace(r, a) -> Cdouble

C signature:
`double gsl_ran_laplace (const gsl_rng * r, const double a)`

GSL documentation:

### `double gsl_ran_laplace (const gsl_rng * r, double a)`

> This function returns a random variate from the Laplace distribution
> with width a. The distribution is,
>
> $$p(x) dx = {1 \over 2 a}  \exp(-|x/a|) dx$$
>
> for $-\infty < x < \infty$.

"""
function gsl_ran_laplace(r, a)
    ccall((:gsl_ran_laplace, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble), r, a)
end

@doc md"""
    gsl_ran_laplace_pdf(x, a) -> Cdouble

C signature:
`double gsl_ran_laplace_pdf (const double x, const double a)`

GSL documentation:

### `double gsl_ran_laplace_pdf (double x, double a)`

> This function computes the probability density $p(x)$ at x for a
> Laplace distribution with width a, using the formula given above.
>
> ![image](/images/rand-laplace.png)

"""
function gsl_ran_laplace_pdf(x, a)
    ccall((:gsl_ran_laplace_pdf, libgsl), Cdouble, (Cdouble, Cdouble), x, a)
end

@doc md"""
    gsl_ran_levy(r, c, alpha) -> Cdouble

C signature:
`double gsl_ran_levy (const gsl_rng * r, const double c, const double alpha)`

GSL documentation:

### `double gsl_ran_levy (const gsl_rng * r, double c, double alpha)`

> This function returns a random variate from the Levy symmetric stable
> distribution with scale c and exponent alpha. The symmetric stable
> probability distribution is defined by a Fourier transform,
>
> There is no explicit solution for the form of $p(x)$ and the library
> does not define a corresponding `pdf`{.sourceCode} function. For
> $\alpha = 1$ the distribution reduces to the Cauchy distribution. For
> $\alpha = 2$ it is a Gaussian distribution with $\sigma = \sqrt{2} c$.
> For $\alpha < 1$ the tails of the distribution become extremely wide.
>
> The algorithm only works for $0 < \alpha \le 2$.
>
> ![image](/images/rand-levy.png)

|newpage|

"""
function gsl_ran_levy(r, c, alpha)
    ccall((:gsl_ran_levy, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, c, alpha)
end

@doc md"""
    gsl_ran_levy_skew(r, c, alpha, beta) -> Cdouble

C signature:
`double gsl_ran_levy_skew (const gsl_rng * r, const double c, const double alpha, const double beta)`

GSL documentation:

### `double gsl_ran_levy_skew (const gsl_rng * r, double c, double alpha, double beta)`

> This function returns a random variate from the Levy skew stable
> distribution with scale c, exponent alpha and skewness parameter beta.
> The skewness parameter must lie in the range $[-1,1]$. The Levy skew
> stable probability distribution is defined by a Fourier transform,
>
> When $\alpha = 1$ the term $\tan(\pi \alpha/2)$ is replaced by
> $-(2/\pi)\log|t|$. There is no explicit solution for the form of
> $p(x)$ and the library does not define a corresponding
> `pdf`{.sourceCode} function. For $\alpha = 2$ the distribution reduces
> to a Gaussian distribution with $\sigma = \sqrt{2} c$ and the skewness
> parameter has no effect. For $\alpha < 1$ the tails of the
> distribution become extremely wide. The symmetric distribution
> corresponds to $\beta = 0$.
>
> The algorithm only works for $0 < \alpha \le 2$.

The Levy alpha-stable distributions have the property that if $N$
alpha-stable variates are drawn from the distribution
$p(c, \alpha, \beta)$ then the sum $Y = X_1 + X_2 + \dots + X_N$ will
also be distributed as an alpha-stable variate,
$p(N^{1/\alpha} c, \alpha, \beta)$.

"""
function gsl_ran_levy_skew(r, c, alpha, beta)
    ccall((:gsl_ran_levy_skew, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble, Cdouble), r, c, alpha, beta)
end

@doc md"""
    gsl_ran_weibull(r, a, b) -> Cdouble

C signature:
`double gsl_ran_weibull (const gsl_rng * r, const double a, const double b)`

GSL documentation:

### `double gsl_ran_weibull (const gsl_rng * r, double a, double b)`

> This function returns a random variate from the Weibull distribution.
> The distribution function is,
>
> $$p(x) dx = {b \over a^b} x^{b-1}  \exp(-(x/a)^b) dx$$
>
> for $x \ge 0$.

"""
function gsl_ran_weibull(r, a, b)
    ccall((:gsl_ran_weibull, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble, Cdouble), r, a, b)
end

@doc md"""
    gsl_ran_weibull_pdf(x, a, b) -> Cdouble

C signature:
`double gsl_ran_weibull_pdf (const double x, const double a, const double b)`

GSL documentation:

### `double gsl_ran_weibull_pdf (double x, double a, double b)`

> This function computes the probability density $p(x)$ at x for a
> Weibull distribution with scale a and exponent b, using the formula
> given above.
>
> ![image](/images/rand-weibull.png)

"""
function gsl_ran_weibull_pdf(x, a, b)
    ccall((:gsl_ran_weibull_pdf, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x, a, b)
end

@doc md"""
    gsl_ran_dir_2d(r, x, y) -> Cvoid

C signature:
`void gsl_ran_dir_2d (const gsl_rng * r, double * x, double * y)`

GSL documentation:

### `void gsl_ran_dir_2d (const gsl_rng * r, double * x, double * y)`

> void gsl\_ran\_dir\_2d\_trig\_method (const gsl\_rng \* r, double \*
> x, double \* y)

> This function returns a random direction vector $v$ = (x, y) in two
> dimensions. The vector is normalized such that
> $|v|^2 = x^2 + y^2 = 1$. The obvious way to do this is to take a
> uniform random number between 0 and $2\pi$ and let x and y be the sine
> and cosine respectively. Two trig functions would have been expensive
> in the old days, but with modern hardware implementations, this is
> sometimes the fastest way to go. This is the case for the Pentium (but
> not the case for the Sun Sparcstation). One can avoid the trig
> evaluations by choosing x and y in the interior of a unit circle
> (choose them at random from the interior of the enclosing square, and
> then reject those that are outside the unit circle), and then dividing
> by $\sqrt{x^2 + y^2}$. A much cleverer approach, attributed to von
> Neumann (See Knuth, v2, 3rd ed, p140, exercise 23), requires neither
> trig nor a square root. In this approach, u and v are chosen at random
> from the interior of a unit circle, and then $x=(u^2-v^2)/(u^2+v^2)$
> and $y=2uv/(u^2+v^2)$.

"""
function gsl_ran_dir_2d(r, x, y)
    ccall((:gsl_ran_dir_2d, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}), r, x, y)
end

@doc md"""
    gsl_ran_dir_2d_trig_method(r, x, y) -> Cvoid

C signature:
`void gsl_ran_dir_2d_trig_method (const gsl_rng * r, double * x, double * y)`
"""
function gsl_ran_dir_2d_trig_method(r, x, y)
    ccall((:gsl_ran_dir_2d_trig_method, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}), r, x, y)
end

@doc md"""
    gsl_ran_dir_3d(r, x, y, z) -> Cvoid

C signature:
`void gsl_ran_dir_3d (const gsl_rng * r, double * x, double * y, double * z)`

GSL documentation:

### `void gsl_ran_dir_3d (const gsl_rng * r, double * x, double * y, double * z)`

> This function returns a random direction vector $v$ = (x, y, z) in
> three dimensions. The vector is normalized such that
> $|v|^2 = x^2 + y^2 + z^2 = 1$. The method employed is due to Robert E.
> Knop (CACM 13, 326 (1970)), and explained in Knuth, v2, 3rd ed, p136.
> It uses the surprising fact that the distribution projected along any
> axis is actually uniform (this is only true for 3 dimensions).

"""
function gsl_ran_dir_3d(r, x, y, z)
    ccall((:gsl_ran_dir_3d, libgsl), Cvoid, (Ref{gsl_rng}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), r, x, y, z)
end

@doc md"""
    gsl_ran_dir_nd(r, n, x) -> Cvoid

C signature:
`void gsl_ran_dir_nd (const gsl_rng * r, size_t n, double * x)`

GSL documentation:

### `void gsl_ran_dir_nd (const gsl_rng * r, size_t n, double * x)`

> This function returns a random direction vector
> $v = (x_1,x_2,\ldots,x_n)$ in n dimensions. The vector is normalized
> such that $|v|^2 = x_1^2 + x_2^2 + \cdots + x_n^2 = 1$. The method
> uses the fact that a multivariate Gaussian distribution is spherically
> symmetric. Each component is generated to have a Gaussian
> distribution, and then the components are normalized. The method is
> described by Knuth, v2, 3rd ed, p135--136, and attributed to G. W.
> Brown, Modern Mathematics for the Engineer (1956).

|newpage|

"""
function gsl_ran_dir_nd(r, n, x)
    ccall((:gsl_ran_dir_nd, libgsl), Cvoid, (Ref{gsl_rng}, Csize_t, Ref{Cdouble}), r, n, x)
end

@doc md"""
    gsl_ran_shuffle(r, base, nmembm, size) -> Cvoid

C signature:
`void gsl_ran_shuffle (const gsl_rng * r, void * base, size_t nmembm, size_t size)`

GSL documentation:

### `void gsl_ran_shuffle (const gsl_rng * r, void * base, size_t n, size_t size)`

> This function randomly shuffles the order of n objects, each of size
> size, stored in the array `base[0..n-1]`{.sourceCode}. The output of
> the random number generator r is used to produce the permutation. The
> algorithm generates all possible $n!$ permutations with equal
> probability, assuming a perfect source of random numbers.
>
> The following code shows how to shuffle the numbers from 0 to 51:
>
>     int a[52];
>
>     for (i = 0; i < 52; i++)
>       {
>         a[i] = i;
>       }
>
>     gsl_ran_shuffle (r, a, 52, sizeof (int));

"""
function gsl_ran_shuffle(r, base, nmembm, size)
    ccall((:gsl_ran_shuffle, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Csize_t), r, base, nmembm, size)
end

@doc md"""
    gsl_ran_choose(r, dest, k, src, n, size) -> Cint

C signature:
`int gsl_ran_choose (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`

GSL documentation:

### `int gsl_ran_choose (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`

> This function fills the array `dest[k]`{.sourceCode} with k objects
> taken randomly from the n elements of the array
> `src[0..n-1]`{.sourceCode}. The objects are each of size size. The
> output of the random number generator r is used to make the selection.
> The algorithm ensures all possible samples are equally likely,
> assuming a perfect source of randomness.
>
> The objects are sampled **without** replacement, thus each object can
> only appear once in dest. It is required that k be less than or equal
> to n. The objects in dest will be in the same relative order as those
> in src. You will need to call
> `gsl_ran_shuffle(r, dest, n, size)`{.sourceCode} if you want to
> randomize the order.
>
> The following code shows how to select a random sample of three unique
> numbers from the set 0 to 99:
>
>     double a[3], b[100];
>
>     for (i = 0; i < 100; i++)
>       {
>         b[i] = (double) i;
>       }
>
>     gsl_ran_choose (r, a, 3, b, 100, sizeof (double));

"""
function gsl_ran_choose(r, dest, k, src, n, size)
    ccall((:gsl_ran_choose, libgsl), Cint, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Ptr{Cvoid}, Csize_t, Csize_t), r, dest, k, src, n, size)
end

@doc md"""
    gsl_ran_sample(r, dest, k, src, n, size) -> Cvoid

C signature:
`void gsl_ran_sample (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`

GSL documentation:

### `void gsl_ran_sample (const gsl_rng * r, void * dest, size_t k, void * src, size_t n, size_t size)`

> This function is like gsl\_ran\_choose but samples k items from the
> original array of n items src with replacement, so the same object can
> appear more than once in the output sequence dest. There is no
> requirement that k be less than n in this case.

"""
function gsl_ran_sample(r, dest, k, src, n, size)
    ccall((:gsl_ran_sample, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, Csize_t, Ptr{Cvoid}, Csize_t, Csize_t), r, dest, k, src, n, size)
end

@doc md"""
    gsl_ran_discrete_preproc(K, P) -> Ptr{gsl_ran_discrete_t}

C signature:
`gsl_ran_discrete_t * gsl_ran_discrete_preproc (size_t K, const double *P)`

GSL documentation:

### `gsl_ran_discrete_t * gsl_ran_discrete_preproc (size_t K, const double * P)`

> This function returns a pointer to a structure that contains the
> lookup table for the discrete random number generator. The array P
> contains the probabilities of the discrete events; these array
> elements must all be positive, but they needn't add up to one (so you
> can think of them more generally as "weights")---the preprocessor will
> normalize appropriately. This return value is used as an argument for
> the gsl\_ran\_discrete function below.

"""
function gsl_ran_discrete_preproc(K, P)
    ccall((:gsl_ran_discrete_preproc, libgsl), Ptr{gsl_ran_discrete_t}, (Csize_t, Ref{Cdouble}), K, P)
end

@doc md"""
    gsl_ran_discrete_free(g) -> Cvoid

C signature:
`void gsl_ran_discrete_free(gsl_ran_discrete_t *g)`

GSL documentation:

### `void gsl_ran_discrete_free (gsl_ran_discrete_t * g)`

> De-allocates the lookup table pointed to by g.

|newpage|

"""
function gsl_ran_discrete_free(g)
    ccall((:gsl_ran_discrete_free, libgsl), Cvoid, (Ptr{gsl_ran_discrete_t},), g)
end

@doc md"""
    gsl_ran_discrete(r, g) -> Csize_t

C signature:
`size_t gsl_ran_discrete (const gsl_rng *r, const gsl_ran_discrete_t *g)`

GSL documentation:

### `size_t gsl_ran_discrete (const gsl_rng * r, const gsl_ran_discrete_t * g)`

> After the preprocessor, above, has been called, you use this function
> to get the discrete random numbers.

"""
function gsl_ran_discrete(r, g)
    ccall((:gsl_ran_discrete, libgsl), Csize_t, (Ref{gsl_rng}, Ref{gsl_ran_discrete_t}), r, g)
end

@doc md"""
    gsl_ran_discrete_pdf(k, g) -> Cdouble

C signature:
`double gsl_ran_discrete_pdf (size_t k, const gsl_ran_discrete_t *g)`

GSL documentation:

### `double gsl_ran_discrete_pdf (size_t k, const gsl_ran_discrete_t * g)`

> Returns the probability $P[k]$ of observing the variable k. Since
> $P[k]$ is not stored as part of the lookup table, it must be
> recomputed; this computation takes $O(K)$, so if K is large and you
> care about the original array $P[k]$ used to create the lookup table,
> then you should just keep this original array $P[k]$ around.

"""
function gsl_ran_discrete_pdf(k, g)
    ccall((:gsl_ran_discrete_pdf, libgsl), Cdouble, (Csize_t, Ref{gsl_ran_discrete_t}), k, g)
end

