#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_gamma.h ###########################################################


@doc md"""
    sf_lngamma_e(x, result) -> Cint

C signature:
`int gsl_sf_lngamma_e(double x, gsl_sf_result * result)`
"""
function sf_lngamma_e(x, result)
    ccall((:gsl_sf_lngamma_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_lngamma(x) -> Cdouble

C signature:
`double gsl_sf_lngamma(const double x)`

GSL documentation:

### `double gsl_sf_lngamma (double x)`

> int gsl\_sf\_lngamma\_e (double x, gsl\_sf\_result \* result)

> These routines compute the logarithm of the Gamma function,
> $\log(\Gamma(x))$, subject to $x$ not being a negative integer or
> zero. For $x < 0$ the real part of $\log(\Gamma(x))$ is returned,
> which is equivalent to $\log(|\Gamma(x)|)$. The function is computed
> using the real Lanczos method.

"""
function sf_lngamma(x)
    ccall((:gsl_sf_lngamma, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_lngamma_sgn_e(x, result_lg, sgn) -> Cint

C signature:
`int gsl_sf_lngamma_sgn_e(double x, gsl_sf_result * result_lg, double *sgn)`

GSL documentation:

### `int gsl_sf_lngamma_sgn_e (double x, gsl_sf_result * result_lg, double * sgn)`

> This routine computes the sign of the gamma function and the logarithm
> of its magnitude, subject to $x$ not being a negative integer or zero.
> The function is computed using the real Lanczos method. The value of
> the gamma function and its error can be reconstructed using the
> relation $\Gamma(x) = sgn * \exp(result\_lg)$, taking into account the
> two components of `result_lg`.

"""
function sf_lngamma_sgn_e(x, result_lg, sgn)
    ccall((:gsl_sf_lngamma_sgn_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), x, result_lg, sgn)
end

@doc md"""
    sf_gamma_e(x, result) -> Cint

C signature:
`int gsl_sf_gamma_e(const double x, gsl_sf_result * result)`
"""
function sf_gamma_e(x, result)
    ccall((:gsl_sf_gamma_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_gamma(x) -> Cdouble

C signature:
`double gsl_sf_gamma(const double x)`

GSL documentation:

### `double gsl_sf_gamma (double x)`

> int gsl\_sf\_gamma\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Gamma function $\Gamma(x)$, subject to $x$
> not being a negative integer or zero. The function is computed using
> the real Lanczos method. The maximum value of $x$ such that
> $\Gamma(x)$ is not considered an overflow is given by the macro
> `GSL_SF_GAMMA_XMAX` and is 171.0.

"""
function sf_gamma(x)
    ccall((:gsl_sf_gamma, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_gammastar_e(x, result) -> Cint

C signature:
`int gsl_sf_gammastar_e(const double x, gsl_sf_result * result)`
"""
function sf_gammastar_e(x, result)
    ccall((:gsl_sf_gammastar_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_gammastar(x) -> Cdouble

C signature:
`double gsl_sf_gammastar(const double x)`

GSL documentation:

### `double gsl_sf_gammastar (double x)`

> int gsl\_sf\_gammastar\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regulated Gamma Function $\Gamma^*(x)$ for
> $x > 0$. The regulated gamma function is given by,
>
> not texinfo
>
> $$\Gamma^*(x) &= \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))\cr
>             &= \left(1 + {1 \over 12x} + ...\right) \quad\hbox{for~} x\to \infty\cr$$
>
> texinfo
>
>     \Gamma^*(x) = \Gamma(x)/(\sqrt{2\pi} x^{(x-1/2)} \exp(-x))
>                 = (1 + (1/12x) + ...)  for x \to \infty
>
> and is a useful suggestion of Temme.

"""
function sf_gammastar(x)
    ccall((:gsl_sf_gammastar, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_gammainv_e(x, result) -> Cint

C signature:
`int gsl_sf_gammainv_e(const double x, gsl_sf_result * result)`
"""
function sf_gammainv_e(x, result)
    ccall((:gsl_sf_gammainv_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_gammainv(x) -> Cdouble

C signature:
`double gsl_sf_gammainv(const double x)`

GSL documentation:

### `double gsl_sf_gammainv (double x)`

> int gsl\_sf\_gammainv\_e (double x, gsl\_sf\_result \* result)

> These routines compute the reciprocal of the gamma function,
> $1/\Gamma(x)$ using the real Lanczos method.

"""
function sf_gammainv(x)
    ccall((:gsl_sf_gammainv, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_lngamma_complex_e(zr, zi, lnr, arg) -> Cint

C signature:
`int gsl_sf_lngamma_complex_e(double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`

GSL documentation:

### `int gsl_sf_lngamma_complex_e (double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`

> This routine computes $\log(\Gamma(z))$ for complex $z = z_r + i z_i$
> and $z$ not a negative integer or zero, using the complex Lanczos
> method. The returned parameters are $lnr = \log|\Gamma(z)|$ and
> $arg = \arg(\Gamma(z))$ in $(-\pi,\pi]$. Note that the phase part
> (`arg`) is not well-determined when $|z|$ is very large, due to
> inevitable roundoff in restricting to $(-\pi,\pi]$. This will result
> in a `GSL_ELOSS` error when it occurs. The absolute value part
> (`lnr`), however, never suffers from loss of precision.

"""
function sf_lngamma_complex_e(zr, zi, lnr, arg)
    ccall((:gsl_sf_lngamma_complex_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lnr, arg)
end

@doc md"""
    sf_taylorcoeff_e(n, x, result) -> Cint

C signature:
`int gsl_sf_taylorcoeff_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_taylorcoeff_e(n, x, result)
    ccall((:gsl_sf_taylorcoeff_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_taylorcoeff(n, x) -> Cdouble

C signature:
`double gsl_sf_taylorcoeff(const int n, const double x)`

GSL documentation:

### `double gsl_sf_taylorcoeff (int n, double x)`

> int gsl\_sf\_taylorcoeff\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the Taylor coefficient $x^n / n!$ for
> $x \ge 0$, $n \ge 0$

"""
function sf_taylorcoeff(n, x)
    ccall((:gsl_sf_taylorcoeff, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_fact_e(n, result) -> Cint

C signature:
`int gsl_sf_fact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_fact_e(n, result)
    ccall((:gsl_sf_fact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_fact(n) -> Cdouble

C signature:
`double gsl_sf_fact(const unsigned int n)`

GSL documentation:

### `double gsl_sf_fact (unsigned int n)`

> int gsl\_sf\_fact\_e (unsigned int n, gsl\_sf\_result \* result)

> These routines compute the factorial $n!$. The factorial is related to
> the Gamma function by $n! = \Gamma(n+1)$. The maximum value of $n$
> such that $n!$ is not considered an overflow is given by the macro
> `GSL_SF_FACT_NMAX` and is 170.

"""
function sf_fact(n)
    ccall((:gsl_sf_fact, libgsl), Cdouble, (Cuint,), n)
end

@doc md"""
    sf_doublefact_e(n, result) -> Cint

C signature:
`int gsl_sf_doublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_doublefact_e(n, result)
    ccall((:gsl_sf_doublefact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_doublefact(n) -> Cdouble

C signature:
`double gsl_sf_doublefact(const unsigned int n)`

GSL documentation:

### `double gsl_sf_doublefact (unsigned int n)`

> int gsl\_sf\_doublefact\_e (unsigned int n, gsl\_sf\_result \* result)

> These routines compute the double factorial $n!! = n(n-2)(n-4) \dots$.
> The maximum value of $n$ such that $n!!$ is not considered an overflow
> is given by the macro `GSL_SF_DOUBLEFACT_NMAX` and is 297.

"""
function sf_doublefact(n)
    ccall((:gsl_sf_doublefact, libgsl), Cdouble, (Cuint,), n)
end

@doc md"""
    sf_lnfact_e(n, result) -> Cint

C signature:
`int gsl_sf_lnfact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lnfact_e(n, result)
    ccall((:gsl_sf_lnfact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_lnfact(n) -> Cdouble

C signature:
`double gsl_sf_lnfact(const unsigned int n)`

GSL documentation:

### `double gsl_sf_lnfact (unsigned int n)`

> int gsl\_sf\_lnfact\_e (unsigned int n, gsl\_sf\_result \* result)

> These routines compute the logarithm of the factorial of `n`,
> $\log(n!)$. The algorithm is faster than computing $\ln(\Gamma(n+1))$
> via `gsl_sf_lngamma` for $n < 170$, but defers for larger `n`.

"""
function sf_lnfact(n)
    ccall((:gsl_sf_lnfact, libgsl), Cdouble, (Cuint,), n)
end

@doc md"""
    sf_lndoublefact_e(n, result) -> Cint

C signature:
`int gsl_sf_lndoublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lndoublefact_e(n, result)
    ccall((:gsl_sf_lndoublefact_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_lndoublefact(n) -> Cdouble

C signature:
`double gsl_sf_lndoublefact(const unsigned int n)`

GSL documentation:

### `double gsl_sf_lndoublefact (unsigned int n)`

> int gsl\_sf\_lndoublefact\_e (unsigned int n, gsl\_sf\_result \*
> result)

> These routines compute the logarithm of the double factorial of `n`,
> $\log(n!!)$.

"""
function sf_lndoublefact(n)
    ccall((:gsl_sf_lndoublefact, libgsl), Cdouble, (Cuint,), n)
end

@doc md"""
    sf_lnchoose_e(n, m, result) -> Cint

C signature:
`int gsl_sf_lnchoose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_lnchoose_e(n, m, result)
    ccall((:gsl_sf_lnchoose_e, libgsl), Cint, (Cuint, Cuint, Ref{gsl_sf_result}), n, m, result)
end

@doc md"""
    sf_lnchoose(n, m) -> Cdouble

C signature:
`double gsl_sf_lnchoose(unsigned int n, unsigned int m)`

GSL documentation:

### `double gsl_sf_lnchoose (unsigned int n, unsigned int m)`

> int gsl\_sf\_lnchoose\_e (unsigned int n, unsigned int m,
> gsl\_sf\_result \* result)

> These routines compute the logarithm of `n choose m`. This is
> equivalent to the sum $\log(n!) - \log(m!) - \log((n-m)!)$.

"""
function sf_lnchoose(n, m)
    ccall((:gsl_sf_lnchoose, libgsl), Cdouble, (Cuint, Cuint), n, m)
end

@doc md"""
    sf_choose_e(n, m, result) -> Cint

C signature:
`int gsl_sf_choose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_choose_e(n, m, result)
    ccall((:gsl_sf_choose_e, libgsl), Cint, (Cuint, Cuint, Ref{gsl_sf_result}), n, m, result)
end

@doc md"""
    sf_choose(n, m) -> Cdouble

C signature:
`double gsl_sf_choose(unsigned int n, unsigned int m)`

GSL documentation:

### `double gsl_sf_choose (unsigned int n, unsigned int m)`

> int gsl\_sf\_choose\_e (unsigned int n, unsigned int m,
> gsl\_sf\_result \* result)

> These routines compute the combinatorial factor `n choose m`
> $= n!/(m!(n-m)!)$

"""
function sf_choose(n, m)
    ccall((:gsl_sf_choose, libgsl), Cdouble, (Cuint, Cuint), n, m)
end

@doc md"""
    sf_lnpoch_e(a, x, result) -> Cint

C signature:
`int gsl_sf_lnpoch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_lnpoch_e(a, x, result)
    ccall((:gsl_sf_lnpoch_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_lnpoch(a, x) -> Cdouble

C signature:
`double gsl_sf_lnpoch(const double a, const double x)`

GSL documentation:

### `double gsl_sf_lnpoch (double a, double x)`

> int gsl\_sf\_lnpoch\_e (double a, double x, gsl\_sf\_result \* result)

> These routines compute the logarithm of the Pochhammer symbol,
> $\log((a)_x) = \log(\Gamma(a + x)/\Gamma(a))$.

"""
function sf_lnpoch(a, x)
    ccall((:gsl_sf_lnpoch, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_lnpoch_sgn_e(a, x, result, sgn) -> Cint

C signature:
`int gsl_sf_lnpoch_sgn_e(const double a, const double x, gsl_sf_result * result, double * sgn)`

GSL documentation:

### `int gsl_sf_lnpoch_sgn_e (double a, double x, gsl_sf_result * result, double * sgn)`

> These routines compute the sign of the Pochhammer symbol and the
> logarithm of its magnitude. The computed parameters are
> $result = \log(|(a)_x|)$ with a corresponding error term, and
> $sgn = \sgn((a)_x)$ where $(a)_x = \Gamma(a + x)/\Gamma(a)$.

"""
function sf_lnpoch_sgn_e(a, x, result, sgn)
    ccall((:gsl_sf_lnpoch_sgn_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), a, x, result, sgn)
end

@doc md"""
    sf_poch_e(a, x, result) -> Cint

C signature:
`int gsl_sf_poch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_poch_e(a, x, result)
    ccall((:gsl_sf_poch_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_poch(a, x) -> Cdouble

C signature:
`double gsl_sf_poch(const double a, const double x)`

GSL documentation:

### `double gsl_sf_poch (double a, double x)`

> int gsl\_sf\_poch\_e (double a, double x, gsl\_sf\_result \* result)

> These routines compute the Pochhammer symbol
> $(a)_x = \Gamma(a + x)/\Gamma(a)$. The Pochhammer symbol is also known
> as the Apell symbol and sometimes written as $(a,x)$. When $a$ and
> $a + x$ are negative integers or zero, the limiting value of the ratio
> is returned.

"""
function sf_poch(a, x)
    ccall((:gsl_sf_poch, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_pochrel_e(a, x, result) -> Cint

C signature:
`int gsl_sf_pochrel_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_pochrel_e(a, x, result)
    ccall((:gsl_sf_pochrel_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_pochrel(a, x) -> Cdouble

C signature:
`double gsl_sf_pochrel(const double a, const double x)`

GSL documentation:

### `double gsl_sf_pochrel (double a, double x)`

> int gsl\_sf\_pochrel\_e (double a, double x, gsl\_sf\_result \*
> result)

> These routines compute the relative Pochhammer symbol $((a)_x - 1)/x$
> where $(a)_x = \Gamma(a + x)/\Gamma(a)$.

"""
function sf_pochrel(a, x)
    ccall((:gsl_sf_pochrel, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_gamma_inc_Q_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_Q_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_Q_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_Q_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_gamma_inc_Q(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc_Q(const double a, const double x)`

GSL documentation:

### `double gsl_sf_gamma_inc_Q (double a, double x)`

> int gsl\_sf\_gamma\_inc\_Q\_e (double a, double x, gsl\_sf\_result \*
> result)

> These routines compute the normalized incomplete Gamma Function
> $Q(a,x) = 1/\Gamma(a) \int_x^\infty dt t^{(a-1)} \exp(-t)$ for
> $a > 0$, $x \ge 0$.

"""
function sf_gamma_inc_Q(a, x)
    ccall((:gsl_sf_gamma_inc_Q, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_gamma_inc_P_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_P_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_P_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_P_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_gamma_inc_P(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc_P(const double a, const double x)`

GSL documentation:

### `double gsl_sf_gamma_inc_P (double a, double x)`

> int gsl\_sf\_gamma\_inc\_P\_e (double a, double x, gsl\_sf\_result \*
> result)

> These routines compute the complementary normalized incomplete Gamma
> Function
> $P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt t^{(a-1)} \exp(-t)$ for
> $a > 0$, $x \ge 0$.
>
> Note that Abramowitz & Stegun call $P(a,x)$ the incomplete gamma
> function (section 6.5).

"""
function sf_gamma_inc_P(a, x)
    ccall((:gsl_sf_gamma_inc_P, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_gamma_inc_e(a, x, result) -> Cint

C signature:
`int gsl_sf_gamma_inc_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_e(a, x, result)
    ccall((:gsl_sf_gamma_inc_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, x, result)
end

@doc md"""
    sf_gamma_inc(a, x) -> Cdouble

C signature:
`double gsl_sf_gamma_inc(const double a, const double x)`

GSL documentation:

### `double gsl_sf_gamma_inc (double a, double x)`

> int gsl\_sf\_gamma\_inc\_e (double a, double x, gsl\_sf\_result \*
> result)

> These functions compute the unnormalized incomplete Gamma Function
> $\Gamma(a,x) = \int_x^\infty dt t^{(a-1)} \exp(-t)$ for $a$ real and
> $x \ge 0$.

"""
function sf_gamma_inc(a, x)
    ccall((:gsl_sf_gamma_inc, libgsl), Cdouble, (Cdouble, Cdouble), a, x)
end

@doc md"""
    sf_lnbeta_e(a, b, result) -> Cint

C signature:
`int gsl_sf_lnbeta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_lnbeta_e(a, b, result)
    ccall((:gsl_sf_lnbeta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, result)
end

@doc md"""
    sf_lnbeta(a, b) -> Cdouble

C signature:
`double gsl_sf_lnbeta(const double a, const double b)`

GSL documentation:

### `double gsl_sf_lnbeta (double a, double b)`

> int gsl\_sf\_lnbeta\_e (double a, double b, gsl\_sf\_result \* result)

> These routines compute the logarithm of the Beta Function,
> $\log(B(a,b))$ subject to $a$ and $b$ not being negative integers.

"""
function sf_lnbeta(a, b)
    ccall((:gsl_sf_lnbeta, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

@doc md"""
    sf_lnbeta_sgn_e(x, y, result, sgn) -> Cint

C signature:
`int gsl_sf_lnbeta_sgn_e(const double x, const double y, gsl_sf_result * result, double * sgn)`
"""
function sf_lnbeta_sgn_e(x, y, result, sgn)
    ccall((:gsl_sf_lnbeta_sgn_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), x, y, result, sgn)
end

@doc md"""
    sf_beta_e(a, b, result) -> Cint

C signature:
`int gsl_sf_beta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_beta_e(a, b, result)
    ccall((:gsl_sf_beta_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, result)
end

@doc md"""
    sf_beta(a, b) -> Cdouble

C signature:
`double gsl_sf_beta(const double a, const double b)`

GSL documentation:

### `double gsl_sf_beta (double a, double b)`

> int gsl\_sf\_beta\_e (double a, double b, gsl\_sf\_result \* result)

> These routines compute the Beta Function,
> $B(a,b) = \Gamma(a)\Gamma(b)/\Gamma(a+b)$ subject to $a$ and $b$ not
> being negative integers.

"""
function sf_beta(a, b)
    ccall((:gsl_sf_beta, libgsl), Cdouble, (Cdouble, Cdouble), a, b)
end

@doc md"""
    sf_beta_inc_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_beta_inc_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_beta_inc_e(a, b, x, result)
    ccall((:gsl_sf_beta_inc_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

@doc md"""
    sf_beta_inc(a, b, x) -> Cdouble

C signature:
`double gsl_sf_beta_inc(const double a, const double b, const double x)`

GSL documentation:

### `double gsl_sf_beta_inc (double a, double b, double x)`

> int gsl\_sf\_beta\_inc\_e (double a, double b, double x,
> gsl\_sf\_result \* result)

> These routines compute the normalized incomplete Beta function
> $I_x(a,b) = B_x(a,b) / B(a,b)$ where

"""
function sf_beta_inc(a, b, x)
    ccall((:gsl_sf_beta_inc, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

