#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_exp.h #############################################################


@doc md"""
    gsl_sf_exp_e(x, result) -> Cint

C signature:
`int gsl_sf_exp_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_exp_e(x, result)
    ccall((:gsl_sf_exp_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    gsl_sf_exp(x) -> Cdouble

C signature:
`double gsl_sf_exp(const double x)`

GSL documentation:

### `double gsl_sf_exp (double x)`

> int gsl\_sf\_exp\_e (double x, gsl\_sf\_result \* result)

> These routines provide an exponential function $\exp(x)$ using GSL
> semantics and error checking.

"""
function gsl_sf_exp(x)
    ccall((:gsl_sf_exp, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_sf_exp_e10_e(x, result) -> Cint

C signature:
`int gsl_sf_exp_e10_e(const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_e10_e (double x, gsl_sf_result_e10 * result)`

> This function computes the exponential $\exp(x)$ using the
> gsl\_sf\_result\_e10 type to return a result with extended range. This
> function may be useful if the value of $\exp(x)$ would overflow the
> numeric range of `double`{.sourceCode}.

"""
function gsl_sf_exp_e10_e(x, result)
    ccall((:gsl_sf_exp_e10_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result_e10}), x, result)
end

@doc md"""
    gsl_sf_exp_mult_e(x, y, result) -> Cint

C signature:
`int gsl_sf_exp_mult_e(const double x, const double y, gsl_sf_result * result)`
"""
function gsl_sf_exp_mult_e(x, y, result)
    ccall((:gsl_sf_exp_mult_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, y, result)
end

@doc md"""
    gsl_sf_exp_mult(x, y) -> Cdouble

C signature:
`double gsl_sf_exp_mult(const double x, const double y)`

GSL documentation:

### `double gsl_sf_exp_mult (double x, double y)`

> int gsl\_sf\_exp\_mult\_e (double x, double y, gsl\_sf\_result \*
> result)

> These routines exponentiate x and multiply by the factor y to return
> the product $y \exp(x)$.

"""
function gsl_sf_exp_mult(x, y)
    ccall((:gsl_sf_exp_mult, libgsl), Cdouble, (Cdouble, Cdouble), x, y)
end

@doc md"""
    gsl_sf_exp_mult_e10_e(x, y, result) -> Cint

C signature:
`int gsl_sf_exp_mult_e10_e(const double x, const double y, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_mult_e10_e (const double x, const double y, gsl_sf_result_e10 * result)`

> This function computes the product $y \exp(x)$ using the
> gsl\_sf\_result\_e10 type to return a result with extended numeric
> range.

"""
function gsl_sf_exp_mult_e10_e(x, y, result)
    ccall((:gsl_sf_exp_mult_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, y, result)
end

@doc md"""
    gsl_sf_expm1_e(x, result) -> Cint

C signature:
`int gsl_sf_expm1_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_expm1_e(x, result)
    ccall((:gsl_sf_expm1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    gsl_sf_expm1(x) -> Cdouble

C signature:
`double gsl_sf_expm1(const double x)`

GSL documentation:

### `double gsl_sf_expm1 (double x)`

> int gsl\_sf\_expm1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the quantity $\exp(x)-1$ using an algorithm
> that is accurate for small $x$.

"""
function gsl_sf_expm1(x)
    ccall((:gsl_sf_expm1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_sf_exprel_e(x, result) -> Cint

C signature:
`int gsl_sf_exprel_e(const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_e(x, result)
    ccall((:gsl_sf_exprel_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    gsl_sf_exprel(x) -> Cdouble

C signature:
`double gsl_sf_exprel(const double x)`

GSL documentation:

### `double gsl_sf_exprel (double x)`

> int gsl\_sf\_exprel\_e (double x, gsl\_sf\_result \* result)

> These routines compute the quantity $(\exp(x)-1)/x$ using an algorithm
> that is accurate for small x. For small x the algorithm is based on
> the expansion
> $(\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots$.

"""
function gsl_sf_exprel(x)
    ccall((:gsl_sf_exprel, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_sf_exprel_2_e(x, result) -> Cint

C signature:
`int gsl_sf_exprel_2_e(double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_2_e(x, result)
    ccall((:gsl_sf_exprel_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    gsl_sf_exprel_2(x) -> Cdouble

C signature:
`double gsl_sf_exprel_2(const double x)`

GSL documentation:

### `double gsl_sf_exprel_2 (double x)`

> int gsl\_sf\_exprel\_2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the quantity $2(\exp(x)-1-x)/x^2$ using an
> algorithm that is accurate for small x. For small x the algorithm is
> based on the expansion
> $2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots$.

"""
function gsl_sf_exprel_2(x)
    ccall((:gsl_sf_exprel_2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    gsl_sf_exprel_n_e(n, x, result) -> Cint

C signature:
`int gsl_sf_exprel_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_n_e(n, x, result)
    ccall((:gsl_sf_exprel_n_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    gsl_sf_exprel_n(n, x) -> Cdouble

C signature:
`double gsl_sf_exprel_n(const int n, const double x)`

GSL documentation:

### `double gsl_sf_exprel_n (int n, double x)`

> int gsl\_sf\_exprel\_n\_e (int n, double x, gsl\_sf\_result \* result)

> These routines compute the $N$-relative exponential, which is the n-th
> generalization of the functions gsl\_sf\_exprel and
> gsl\_sf\_exprel\_2. The $N$-relative exponential is given by,

"""
function gsl_sf_exprel_n(n, x)
    ccall((:gsl_sf_exprel_n, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    gsl_sf_exprel_n_CF_e(n, x, result) -> Cint

C signature:
`int gsl_sf_exprel_n_CF_e(const double n, const double x, gsl_sf_result * result)`
"""
function gsl_sf_exprel_n_CF_e(n, x, result)
    ccall((:gsl_sf_exprel_n_CF_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    gsl_sf_exp_err_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_exp_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_exp_err_e (double x, double dx, gsl_sf_result * result)`

> This function exponentiates x with an associated absolute error dx.

"""
function gsl_sf_exp_err_e(x, dx, result)
    ccall((:gsl_sf_exp_err_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, result)
end

@doc md"""
    gsl_sf_exp_err_e10_e(x, dx, result) -> Cint

C signature:
`int gsl_sf_exp_err_e10_e(const double x, const double dx, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_err_e10_e (double x, double dx, gsl_sf_result_e10 * result)`

> This function exponentiates a quantity x with an associated absolute
> error dx using the gsl\_sf\_result\_e10 type to return a result with
> extended range.

"""
function gsl_sf_exp_err_e10_e(x, dx, result)
    ccall((:gsl_sf_exp_err_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, dx, result)
end

@doc md"""
    gsl_sf_exp_mult_err_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_exp_mult_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_exp_mult_err_e (double x, double dx, double y, double dy, gsl_sf_result * result)`

> This routine computes the product $y \exp(x)$ for the quantities x, y
> with associated absolute errors dx, dy.

"""
function gsl_sf_exp_mult_err_e(x, dx, y, dy, result)
    ccall((:gsl_sf_exp_mult_err_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result}), x, dx, y, dy, result)
end

@doc md"""
    gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result) -> Cint

C signature:
`int gsl_sf_exp_mult_err_e10_e(const double x, const double dx, const double y, const double dy, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_mult_err_e10_e (double x, double dx, double y, double dy, gsl_sf_result_e10 * result)`

> This routine computes the product $y \exp(x)$ for the quantities x, y
> with associated absolute errors dx, dy using the gsl\_sf\_result\_e10
> type to return a result with extended range.

"""
function gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result)
    ccall((:gsl_sf_exp_mult_err_e10_e, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_sf_result_e10}), x, dx, y, dy, result)
end

