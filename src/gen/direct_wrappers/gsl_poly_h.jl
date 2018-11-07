#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_poly.h ###############################################################


@doc md"""
    poly_eval(c, len, x) -> Cdouble

C signature:
`double gsl_poly_eval(const double c[], const int len, const double x)`

GSL documentation:

### `double gsl_poly_eval (const double c[], const int len, const double x)`

> This function evaluates a polynomial with real coefficients for the
> real variable `x`.

"""
function poly_eval(c, len, x)
    ccall((:gsl_poly_eval, libgsl), Cdouble, (Ref{Cdouble}, Cint, Cdouble), c, len, x)
end

@doc md"""
    poly_complex_eval(c, len, z) -> gsl_complex

C signature:
`gsl_complex gsl_poly_complex_eval (const double c [], const int len, const gsl_complex z)`

GSL documentation:

### `gsl_complex gsl_poly_complex_eval (const double c[], const int len, const gsl_complex z)`

> This function evaluates a polynomial with real coefficients for the
> complex variable `z`.

"""
function poly_complex_eval(c, len, z)
    ccall((:gsl_poly_complex_eval, libgsl), gsl_complex, (Ref{Cdouble}, Cint, gsl_complex), c, len, z)
end

@doc md"""
    complex_poly_complex_eval(c, len, z) -> gsl_complex

C signature:
`gsl_complex gsl_complex_poly_complex_eval (const gsl_complex c [], const int len, const gsl_complex z)`

GSL documentation:

### `gsl_complex gsl_complex_poly_complex_eval (const gsl_complex c[], const int len, const gsl_complex z)`

> This function evaluates a polynomial with complex coefficients for the
> complex variable `z`.

"""
function complex_poly_complex_eval(c, len, z)
    ccall((:gsl_complex_poly_complex_eval, libgsl), gsl_complex, (Ref{gsl_complex}, Cint, gsl_complex), c, len, z)
end

@doc md"""
    poly_eval_derivs(c, lenc, x, res, lenres) -> Cint

C signature:
`int gsl_poly_eval_derivs(const double c[], const size_t lenc, const double x, double res[], const size_t lenres)`

GSL documentation:

### `int gsl_poly_eval_derivs (const double c[], const size_t lenc, const double x, double res[], const size_t lenres)`

> This function evaluates a polynomial and its derivatives storing the
> results in the array `res` of size `lenres`. The output array contains
> the values of $d^k P(x)/d x^k$ for the specified value of `x` starting
> with $k = 0$.

"""
function poly_eval_derivs(c, lenc, x, res, lenres)
    ccall((:gsl_poly_eval_derivs, libgsl), Cint, (Ref{Cdouble}, Csize_t, Cdouble, Ref{Cdouble}, Csize_t), c, lenc, x, res, lenres)
end

@doc md"""
    poly_dd_init(dd, x, y, size) -> Cint

C signature:
`int gsl_poly_dd_init (double dd[], const double x[], const double y[], size_t size)`

GSL documentation:

### `int gsl_poly_dd_init (double dd[], const double xa[], const double ya[], size_t size)`

> This function computes a divided-difference representation of the
> interpolating polynomial for the points $(x, y)$ stored in the arrays
> `xa` and `ya` of length `size`. On output the divided-differences of
> (`xa`, `ya`) are stored in the array `dd`, also of length `size`.
> Using the notation above, $dd[k] = [x_0,x_1,...,x_k]$.

"""
function poly_dd_init(dd, x, y, size)
    ccall((:gsl_poly_dd_init, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), dd, x, y, size)
end

@doc md"""
    poly_dd_eval(dd, xa, size, x) -> Cdouble

C signature:
`double gsl_poly_dd_eval (const double dd[], const double xa[], const size_t size, const double x)`

GSL documentation:

### `double gsl_poly_dd_eval (const double dd[], const double xa[], const size_t size, const double x)`

> This function evaluates the polynomial stored in divided-difference
> form in the arrays `dd` and `xa` of length `size` at the point `x`.

"""
function poly_dd_eval(dd, xa, size, x)
    ccall((:gsl_poly_dd_eval, libgsl), Cdouble, (Ref{Cdouble}, Ref{Cdouble}, Csize_t, Cdouble), dd, xa, size, x)
end

@doc md"""
    poly_dd_hermite_init(dd, z, xa, ya, dya, size) -> Cint

C signature:
`int gsl_poly_dd_hermite_init (double dd[], double z[], const double xa[], const double ya[], const double dya[], const size_t size)`

GSL documentation:

### `int gsl_poly_dd_hermite_init (double dd[], double za[], const double xa[], const double ya[], const double dya[], const size_t size)`

> This function computes a divided-difference representation of the
> interpolating Hermite polynomial for the points $(x,y)$ stored in the
> arrays `xa` and `ya` of length `size`. Hermite interpolation
> constructs polynomials which also match first derivatives $dy/dx$
> which are provided in the array `dya` also of length `size`. The first
> derivatives can be incorported into the usual divided-difference
> algorithm by forming a new dataset $z = \{x_0,x_0,x_1,x_1,...\}$,
> which is stored in the array `za` of length 2\*`size` on output. On
> output the divided-differences of the Hermite representation are
> stored in the array `dd`, also of length 2\*`size`. Using the notation
> above, $dd[k] = [z_0,z_1,...,z_k]$. The resulting Hermite polynomial
> can be evaluated by calling `gsl_poly_dd_eval` and using `za` for the
> input argument `xa`.

"""
function poly_dd_hermite_init(dd, z, xa, ya, dya, size)
    ccall((:gsl_poly_dd_hermite_init, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), dd, z, xa, ya, dya, size)
end

@doc md"""
    poly_solve_quadratic(a, b, c, x0, x1) -> Cint

C signature:
`int gsl_poly_solve_quadratic (double a, double b, double c, double * x0, double * x1)`

GSL documentation:

### `int gsl_poly_solve_quadratic (double a, double b, double c, double * x0, double * x1)`

> This function finds the real roots of the quadratic equation,
>
> $$a x^2 + b x + c = 0$$
>
> The number of real roots (either zero, one or two) is returned, and
> their locations are stored in `x0` and `x1`. If no real roots are
> found then `x0` and `x1` are not modified. If one real root is found
> (i.e. if $a=0$) then it is stored in `x0`. When two real roots are
> found they are stored in `x0` and `x1` in ascending order. The case of
> coincident roots is not considered special. For example $(x-1)^2=0$
> will have two roots, which happen to have exactly equal values.
>
> The number of roots found depends on the sign of the discriminant
> $b^2 - 4 a c$. This will be subject to rounding and cancellation
> errors when computed in double precision, and will also be subject to
> errors if the coefficients of the polynomial are inexact. These errors
> may cause a discrete change in the number of roots. However, for
> polynomials with small integer coefficients the discriminant can
> always be computed exactly.

"""
function poly_solve_quadratic(a, b, c, x0, x1)
    ccall((:gsl_poly_solve_quadratic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), a, b, c, x0, x1)
end

@doc md"""
    poly_complex_solve_quadratic(a, b, c, z0, z1) -> Cint

C signature:
`int gsl_poly_complex_solve_quadratic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1)`

GSL documentation:

### `int gsl_poly_complex_solve_quadratic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1)`

> This function finds the complex roots of the quadratic equation,
>
> $$a z^2 + b z + c = 0$$
>
> The number of complex roots is returned (either one or two) and the
> locations of the roots are stored in `z0` and `z1`. The roots are
> returned in ascending order, sorted first by their real components and
> then by their imaginary components. If only one real root is found
> (i.e. if $a=0$) then it is stored in `z0`.

"""
function poly_complex_solve_quadratic(a, b, c, z0, z1)
    ccall((:gsl_poly_complex_solve_quadratic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_complex}, Ref{gsl_complex}), a, b, c, z0, z1)
end

@doc md"""
    poly_solve_cubic(a, b, c, x0, x1, x2) -> Cint

C signature:
`int gsl_poly_solve_cubic (double a, double b, double c, double * x0, double * x1, double * x2)`

GSL documentation:

### `int gsl_poly_solve_cubic (double a, double b, double c, double * x0, double * x1, double * x2)`

> This function finds the real roots of the cubic equation,
>
> $$x^3 + a x^2 + b x + c = 0$$
>
> with a leading coefficient of unity. The number of real roots (either
> one or three) is returned, and their locations are stored in `x0`,
> `x1` and `x2`. If one real root is found then only `x0` is modified.
> When three real roots are found they are stored in `x0`, `x1` and `x2`
> in ascending order. The case of coincident roots is not considered
> special. For example, the equation $(x-1)^3=0$ will have three roots
> with exactly equal values. As in the quadratic case, finite precision
> may cause equal or closely-spaced real roots to move off the real axis
> into the complex plane, leading to a discrete change in the number of
> real roots.

"""
function poly_solve_cubic(a, b, c, x0, x1, x2)
    ccall((:gsl_poly_solve_cubic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), a, b, c, x0, x1, x2)
end

@doc md"""
    poly_complex_solve_cubic(a, b, c, z0, z1, z2) -> Cint

C signature:
`int gsl_poly_complex_solve_cubic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1, gsl_complex * z2)`

GSL documentation:

### `int gsl_poly_complex_solve_cubic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1, gsl_complex * z2)`

> This function finds the complex roots of the cubic equation,
>
> $$z^3 + a z^2 + b z + c = 0$$
>
> The number of complex roots is returned (always three) and the
> locations of the roots are stored in `z0`, `z1` and `z2`. The roots
> are returned in ascending order, sorted first by their real components
> and then by their imaginary components.

"""
function poly_complex_solve_cubic(a, b, c, z0, z1, z2)
    ccall((:gsl_poly_complex_solve_cubic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_complex}, Ref{gsl_complex}, Ref{gsl_complex}), a, b, c, z0, z1, z2)
end

@doc md"""
    poly_complex_workspace_alloc(n) -> Ptr{gsl_poly_complex_workspace}

C signature:
`gsl_poly_complex_workspace * gsl_poly_complex_workspace_alloc (size_t n)`

GSL documentation:

### `gsl_poly_complex_workspace * gsl_poly_complex_workspace_alloc (size_t n)`

> This function allocates space for a `gsl_poly_complex_workspace`
> struct and a workspace suitable for solving a polynomial with `n`
> coefficients using the routine `gsl_poly_complex_solve`.
>
> The function returns a pointer to the newly allocated
> `gsl_poly_complex_workspace` if no errors were detected, and a null
> pointer in the case of error.

"""
function poly_complex_workspace_alloc(n)
    ccall((:gsl_poly_complex_workspace_alloc, libgsl), Ptr{gsl_poly_complex_workspace}, (Csize_t,), n)
end

@doc md"""
    poly_complex_workspace_free(w) -> Cvoid

C signature:
`void gsl_poly_complex_workspace_free (gsl_poly_complex_workspace * w)`

GSL documentation:

### `void gsl_poly_complex_workspace_free (gsl_poly_complex_workspace * w)`

> This function frees all the memory associated with the workspace `w`.

"""
function poly_complex_workspace_free(w)
    ccall((:gsl_poly_complex_workspace_free, libgsl), Cvoid, (Ptr{gsl_poly_complex_workspace},), w)
end

@doc md"""
    poly_complex_solve(a, n, w, z) -> Cint

C signature:
`int gsl_poly_complex_solve (const double * a, size_t n, gsl_poly_complex_workspace * w, gsl_complex_packed_ptr z)`

GSL documentation:

### `int gsl_poly_complex_solve (const double * a, size_t n, gsl_poly_complex_workspace * w, gsl_complex_packed_ptr z)`

> This function computes the roots of the general polynomial
>
> not texinfo
>
> $$P(x) = a_0 + a_1 x + a_2 x^2 + \cdots + a_{n-1} x^{n-1}$$
>
> texinfo
>
> P(x) = a\_0 + a\_1 x + a\_2 x^2 + ... + [a](){n-1} x^{n-1}
>
> using balanced-QR reduction of the companion matrix. The parameter `n`
> specifies the length of the coefficient array. The coefficient of the
> highest order term must be non-zero. The function requires a workspace
> `w` of the appropriate size. The $n-1$ roots are returned in the
> packed complex array `z` of length $2(n-1)$, alternating real and
> imaginary parts.
>
> The function returns `GSL_SUCCESS` if all the roots are found. If the
> QR reduction does not converge, the error handler is invoked with an
> error code of `GSL_EFAILED`. Note that due to finite precision, roots
> of higher multiplicity are returned as a cluster of simple roots with
> reduced accuracy. The solution of polynomials with higher-order roots
> requires specialized algorithms that take the multiplicity structure
> into account (see e.g. Z. Zeng, Algorithm 835, ACM Transactions on
> Mathematical Software, Volume 30, Issue 2 (2004), pp 218--236).

"""
function poly_complex_solve(a, n, w, z)
    ccall((:gsl_poly_complex_solve, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_poly_complex_workspace}, gsl_complex_packed_ptr), a, n, w, z)
end

