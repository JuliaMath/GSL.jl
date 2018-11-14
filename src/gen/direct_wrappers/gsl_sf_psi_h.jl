#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_psi.h #############################################################


@doc md"""
    sf_psi_int_e(n, result) -> Cint

C signature:
`int gsl_sf_psi_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_int_e(n, result)
    ccall((:gsl_sf_psi_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_psi_int(n) -> Cdouble

C signature:
`double gsl_sf_psi_int(const int n)`

GSL documentation:

### `double gsl_sf_psi_int (int n)`

> int gsl\_sf\_psi\_int\_e (int n, gsl\_sf\_result \* result)

> These routines compute the digamma function $\psi(n)$ for positive
> integer `n`. The digamma function is also called the Psi function.

"""
function sf_psi_int(n)
    ccall((:gsl_sf_psi_int, libgsl), Cdouble, (Cint,), n)
end

@doc md"""
    sf_psi_e(x, result) -> Cint

C signature:
`int gsl_sf_psi_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_e(x, result)
    ccall((:gsl_sf_psi_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_psi(x) -> Cdouble

C signature:
`double gsl_sf_psi(const double x)`

GSL documentation:

### `double gsl_sf_psi (double x)`

> int gsl\_sf\_psi\_e (double x, gsl\_sf\_result \* result)

> These routines compute the digamma function $\psi(x)$ for general `x`,
> $x \ne 0$.

"""
function sf_psi(x)
    ccall((:gsl_sf_psi, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_psi_1piy_e(y, result) -> Cint

C signature:
`int gsl_sf_psi_1piy_e(const double y, gsl_sf_result * result)`
"""
function sf_psi_1piy_e(y, result)
    ccall((:gsl_sf_psi_1piy_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), y, result)
end

@doc md"""
    sf_psi_1piy(y) -> Cdouble

C signature:
`double gsl_sf_psi_1piy(const double y)`

GSL documentation:

### `double gsl_sf_psi_1piy (double y)`

> int gsl\_sf\_psi\_1piy\_e (double y, gsl\_sf\_result \* result)

> These routines compute the real part of the digamma function on the
> line $1 + i y$, $\Re[\psi(1 + i y)]$.

"""
function sf_psi_1piy(y)
    ccall((:gsl_sf_psi_1piy, libgsl), Cdouble, (Cdouble,), y)
end

@doc md"""
    sf_complex_psi_e(x, y, result_re, result_im) -> Cint

C signature:
`int gsl_sf_complex_psi_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_psi_e(x, y, result_re, result_im)
    ccall((:gsl_sf_complex_psi_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, result_re, result_im)
end

@doc md"""
    sf_psi_1_int_e(n, result) -> Cint

C signature:
`int gsl_sf_psi_1_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_1_int_e(n, result)
    ccall((:gsl_sf_psi_1_int_e, libgsl), Cint, (Cint, Ref{gsl_sf_result}), n, result)
end

@doc md"""
    sf_psi_1_int(n) -> Cdouble

C signature:
`double gsl_sf_psi_1_int(const int n)`

GSL documentation:

### `double gsl_sf_psi_1_int (int n)`

> int gsl\_sf\_psi\_1\_int\_e (int n, gsl\_sf\_result \* result)

> These routines compute the Trigamma function $\psi'(n)$ for positive
> integer $n$.

"""
function sf_psi_1_int(n)
    ccall((:gsl_sf_psi_1_int, libgsl), Cdouble, (Cint,), n)
end

@doc md"""
    sf_psi_1_e(x, result) -> Cint

C signature:
`int gsl_sf_psi_1_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_1_e(x, result)
    ccall((:gsl_sf_psi_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_psi_1(x) -> Cdouble

C signature:
`double gsl_sf_psi_1(const double x)`

GSL documentation:

### `double gsl_sf_psi_1 (double x)`

> int gsl\_sf\_psi\_1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the Trigamma function $\psi'(x)$ for general
> `x`.

"""
function sf_psi_1(x)
    ccall((:gsl_sf_psi_1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_psi_n_e(n, x, result) -> Cint

C signature:
`int gsl_sf_psi_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_psi_n_e(n, x, result)
    ccall((:gsl_sf_psi_n_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_psi_n(n, x) -> Cdouble

C signature:
`double gsl_sf_psi_n(const int n, const double x)`

GSL documentation:

### `double gsl_sf_psi_n (int n, double x)`

> int gsl\_sf\_psi\_n\_e (int n, double x, gsl\_sf\_result \* result)

> These routines compute the polygamma function $\psi^{(n)}(x)$ for
> $n \ge 0$, $x > 0$.

"""
function sf_psi_n(n, x)
    ccall((:gsl_sf_psi_n, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

