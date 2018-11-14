#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_hyperg.h ##########################################################


@doc md"""
    sf_hyperg_0F1_e(c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_0F1_e(double c, double x, gsl_sf_result * result)`
"""
function sf_hyperg_0F1_e(c, x, result)
    ccall((:gsl_sf_hyperg_0F1_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), c, x, result)
end

@doc md"""
    sf_hyperg_0F1(c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_0F1(const double c, const double x)`

GSL documentation:

### `double gsl_sf_hyperg_0F1 (double c, double x)`

> int gsl\_sf\_hyperg\_0F1\_e (double c, double x, gsl\_sf\_result \*
> result)

> These routines compute the hypergeometric function

"""
function sf_hyperg_0F1(c, x)
    ccall((:gsl_sf_hyperg_0F1, libgsl), Cdouble, (Cdouble, Cdouble), c, x)
end

@doc md"""
    sf_hyperg_1F1_int_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_1F1_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_int_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_1F1_int_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hyperg_1F1_int(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_1F1_int(const int m, const int n, double x)`

GSL documentation:

### `double gsl_sf_hyperg_1F1_int (int m, int n, double x)`

> int gsl\_sf\_hyperg\_1F1\_int\_e (int m, int n, double x,
> gsl\_sf\_result \* result)

> These routines compute the confluent hypergeometric function
>
> not texinfo
>
> $${}_1F_1(m,n,x) = M(m,n,x)$$
>
> texinfo
>
> $$1F1(m,n,x) = M(m,n,x)$$
>
> for integer parameters `m`, `n`.

"""
function sf_hyperg_1F1_int(m, n, x)
    ccall((:gsl_sf_hyperg_1F1_int, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hyperg_1F1_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_1F1_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_1F1_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

@doc md"""
    sf_hyperg_1F1(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_1F1(double a, double b, double x)`

GSL documentation:

### `double gsl_sf_hyperg_1F1 (double a, double b, double x)`

> int gsl\_sf\_hyperg\_1F1\_e (double a, double b, double x,
> gsl\_sf\_result \* result)

> These routines compute the confluent hypergeometric function
>
> not texinfo
>
> $${}_1F_1(a,b,x) = M(a,b,x)$$
>
> texinfo
>
> $$1F1(a,b,x) = M(a,b,x)$$
>
> for general parameters `a`, `b`.

"""
function sf_hyperg_1F1(a, b, x)
    ccall((:gsl_sf_hyperg_1F1, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

@doc md"""
    sf_hyperg_U_int_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_int_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_U_int_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result}), m, n, x, result)
end

@doc md"""
    sf_hyperg_U_int(m, n, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_U_int(const int m, const int n, const double x)`

GSL documentation:

### `double gsl_sf_hyperg_U_int (int m, int n, double x)`

> int gsl\_sf\_hyperg\_U\_int\_e (int m, int n, double x,
> gsl\_sf\_result \* result)

> These routines compute the confluent hypergeometric function
> $U(m,n,x)$ for integer parameters `m`, `n`.

"""
function sf_hyperg_U_int(m, n, x)
    ccall((:gsl_sf_hyperg_U_int, libgsl), Cdouble, (Cint, Cint, Cdouble), m, n, x)
end

@doc md"""
    sf_hyperg_U_int_e10_e(m, n, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_int_e10_e(const int m, const int n, const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_hyperg_U_int_e10_e (int m, int n, double x, gsl_sf_result_e10 * result)`

> This routine computes the confluent hypergeometric function $U(m,n,x)$
> for integer parameters `m`, `n` using the `gsl_sf_result_e10` type to
> return a result with extended range.

"""
function sf_hyperg_U_int_e10_e(m, n, x, result)
    ccall((:gsl_sf_hyperg_U_int_e10_e, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_result_e10}), m, n, x, result)
end

@doc md"""
    sf_hyperg_U_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_U_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

@doc md"""
    sf_hyperg_U(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_U(const double a, const double b, const double x)`

GSL documentation:

### `double gsl_sf_hyperg_U (double a, double b, double x)`

> int gsl\_sf\_hyperg\_U\_e (double a, double b, double x,
> gsl\_sf\_result \* result)

> These routines compute the confluent hypergeometric function
> $U(a,b,x)$.

"""
function sf_hyperg_U(a, b, x)
    ccall((:gsl_sf_hyperg_U, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

@doc md"""
    sf_hyperg_U_e10_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_U_e10_e(const double a, const double b, const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_hyperg_U_e10_e (double a, double b, double x, gsl_sf_result_e10 * result)`

> This routine computes the confluent hypergeometric function $U(a,b,x)$
> using the `gsl_sf_result_e10` type to return a result with extended
> range.

"""
function sf_hyperg_U_e10_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_U_e10_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result_e10}), a, b, x, result)
end

@doc md"""
    sf_hyperg_2F1_e(a, b, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_e(double a, double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_e(a, b, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, c, x, result)
end

@doc md"""
    sf_hyperg_2F1(a, b, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1(double a, double b, double c, double x)`

GSL documentation:

### `double gsl_sf_hyperg_2F1 (double a, double b, double c, double x)`

> int gsl\_sf\_hyperg\_2F1\_e (double a, double b, double c, double x,
> gsl\_sf\_result \* result)

> These routines compute the Gauss hypergeometric function
>
> not texinfo
>
> $${}_2F_1(a,b,c,x) = F(a,b,c,x)$$
>
> texinfo
>
> $$2F1(a,b,c,x) = F(a,b,c,x)$$
>
> for $|x| < 1$. If the arguments $(a,b,c,x)$ are too close to a
> singularity then the function can return the error code `GSL_EMAXITER`
> when the series approximation converges too slowly. This occurs in the
> region of $x = 1$, $c - a - b = m$ for integer m.

"""
function sf_hyperg_2F1(a, b, c, x)
    ccall((:gsl_sf_hyperg_2F1, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), a, b, c, x)
end

@doc md"""
    sf_hyperg_2F1_conj_e(aR, aI, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_conj_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_e(aR, aI, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_conj_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), aR, aI, c, x, result)
end

@doc md"""
    sf_hyperg_2F1_conj(aR, aI, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_conj(double aR, double aI, double c, double x)`

GSL documentation:

### `double gsl_sf_hyperg_2F1_conj (double aR, double aI, double c, double x)`

> int gsl\_sf\_hyperg\_2F1\_conj\_e (double aR, double aI, double c,
> double x, gsl\_sf\_result \* result)

> These routines compute the Gauss hypergeometric function
>
> not texinfo
>
> $${}_2F_1(a_R + i a_I, aR - i aI, c, x)$$
>
> texinfo
>
> $$2F1(a_R + i a_I, aR - i aI, c, x)$$
>
> with complex parameters for $|x| < 1$.

"""
function sf_hyperg_2F1_conj(aR, aI, c, x)
    ccall((:gsl_sf_hyperg_2F1_conj, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), aR, aI, c, x)
end

@doc md"""
    sf_hyperg_2F1_renorm_e(a, b, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_renorm_e(const double a, const double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_renorm_e(a, b, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_renorm_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, c, x, result)
end

@doc md"""
    sf_hyperg_2F1_renorm(a, b, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_renorm(double a, double b, double c, double x)`

GSL documentation:

### `double gsl_sf_hyperg_2F1_renorm (double a, double b, double c, double x)`

> int gsl\_sf\_hyperg\_2F1\_renorm\_e (double a, double b, double c,
> double x, gsl\_sf\_result \* result)

> These routines compute the renormalized Gauss hypergeometric function
>
> not texinfo
>
> $${}_2F_1(a,b,c,x) / \Gamma(c)$$
>
> texinfo
>
> $$2F1(a,b,c,x) / \Gamma(c)$$
>
> for $|x| < 1$.

"""
function sf_hyperg_2F1_renorm(a, b, c, x)
    ccall((:gsl_sf_hyperg_2F1_renorm, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), a, b, c, x)
end

@doc md"""
    sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F1_conj_renorm_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result)
    ccall((:gsl_sf_hyperg_2F1_conj_renorm_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), aR, aI, c, x, result)
end

@doc md"""
    sf_hyperg_2F1_conj_renorm(aR, aI, c, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F1_conj_renorm(double aR, double aI, double c, double x)`

GSL documentation:

### `double gsl_sf_hyperg_2F1_conj_renorm (double aR, double aI, double c, double x)`

> int gsl\_sf\_hyperg\_2F1\_conj\_renorm\_e (double aR, double aI,
> double c, double x, gsl\_sf\_result \* result)

> These routines compute the renormalized Gauss hypergeometric function
>
> not texinfo
>
> $${}_2F_1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c)$$
>
> texinfo
>
> $$2F1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c)$$
>
> for $|x| < 1$.

"""
function sf_hyperg_2F1_conj_renorm(aR, aI, c, x)
    ccall((:gsl_sf_hyperg_2F1_conj_renorm, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), aR, aI, c, x)
end

@doc md"""
    sf_hyperg_2F0_e(a, b, x, result) -> Cint

C signature:
`int gsl_sf_hyperg_2F0_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F0_e(a, b, x, result)
    ccall((:gsl_sf_hyperg_2F0_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), a, b, x, result)
end

@doc md"""
    sf_hyperg_2F0(a, b, x) -> Cdouble

C signature:
`double gsl_sf_hyperg_2F0(const double a, const double b, const double x)`

GSL documentation:

### `double gsl_sf_hyperg_2F0 (double a, double b, double x)`

> int gsl\_sf\_hyperg\_2F0\_e (double a, double b, double x,
> gsl\_sf\_result \* result)

> These routines compute the hypergeometric function

"""
function sf_hyperg_2F0(a, b, x)
    ccall((:gsl_sf_hyperg_2F0, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, x)
end

