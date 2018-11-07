#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_airy.h ############################################################


@doc md"""
    sf_airy_Ai_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_e(const double x, const gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Ai(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Ai (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Ai\_e (double x, gsl\_mode\_t mode, gsl\_sf\_result
> \* result)

> These routines compute the Airy function $Ai(x)$ with an accuracy
> specified by `mode`.

"""
function sf_airy_Ai(x, mode)
    ccall((:gsl_sf_airy_Ai, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Bi_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Bi(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Bi (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Bi\_e (double x, gsl\_mode\_t mode, gsl\_sf\_result
> \* result)

> These routines compute the Airy function $Bi(x)$ with an accuracy
> specified by `mode`.

"""
function sf_airy_Bi(x, mode)
    ccall((:gsl_sf_airy_Bi, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Ai_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Ai_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_scaled(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Ai_scaled (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Ai\_scaled\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute a scaled version of the Airy function
> $S_A(x) Ai(x)$. For $x > 0$ the scaling factor $S_A(x)$ is
> $\exp(+(2/3) x^{3/2})$, and is 1 for $x < 0$.

"""
function sf_airy_Ai_scaled(x, mode)
    ccall((:gsl_sf_airy_Ai_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Bi_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Bi_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_scaled(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Bi_scaled (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Bi\_scaled\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute a scaled version of the Airy function
> $S_B(x) Bi(x)$. For $x > 0$ the scaling factor $S_B(x)$ is
> $exp(-(2/3) x^{3/2})$, and is 1 for $x < 0$.

"""
function sf_airy_Bi_scaled(x, mode)
    ccall((:gsl_sf_airy_Bi_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Ai_deriv_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_deriv_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Ai_deriv(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_deriv(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Ai_deriv (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Ai\_deriv\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the Airy function derivative $Ai'(x)$ with an
> accuracy specified by `mode`.

"""
function sf_airy_Ai_deriv(x, mode)
    ccall((:gsl_sf_airy_Ai_deriv, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Bi_deriv_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_deriv_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Bi_deriv(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_deriv(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Bi_deriv (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Bi\_deriv\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the Airy function derivative $Bi'(x)$ with an
> accuracy specified by `mode`.

"""
function sf_airy_Bi_deriv(x, mode)
    ccall((:gsl_sf_airy_Bi_deriv, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Ai_deriv_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Ai_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Ai_deriv_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Ai_deriv_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Ai_deriv_scaled(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Ai_deriv_scaled (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Ai\_deriv\_scaled\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the scaled Airy function derivative
> $S_A(x) Ai'(x)$. For $x > 0$ the scaling factor $S_A(x)$ is
> $\exp(+(2/3) x^{3/2})$, and is 1 for $x < 0$.

"""
function sf_airy_Ai_deriv_scaled(x, mode)
    ccall((:gsl_sf_airy_Ai_deriv_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_Bi_deriv_scaled_e(x, mode, result) -> Cint

C signature:
`int gsl_sf_airy_Bi_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_scaled_e(x, mode, result)
    ccall((:gsl_sf_airy_Bi_deriv_scaled_e, libgsl), Cint, (Cdouble, gsl_mode_t, Ref{gsl_sf_result}), x, mode, result)
end

@doc md"""
    sf_airy_Bi_deriv_scaled(x, mode) -> Cdouble

C signature:
`double gsl_sf_airy_Bi_deriv_scaled(const double x, gsl_mode_t mode)`

GSL documentation:

### `double gsl_sf_airy_Bi_deriv_scaled (double x, gsl_mode_t mode)`

> int gsl\_sf\_airy\_Bi\_deriv\_scaled\_e (double x, gsl\_mode\_t mode,
> gsl\_sf\_result \* result)

> These routines compute the scaled Airy function derivative
> $S_B(x) Bi'(x)$. For $x > 0$ the scaling factor $S_B(x)$ is
> $exp(-(2/3) x^{3/2})$, and is 1 for $x < 0$.

"""
function sf_airy_Bi_deriv_scaled(x, mode)
    ccall((:gsl_sf_airy_Bi_deriv_scaled, libgsl), Cdouble, (Cdouble, gsl_mode_t), x, mode)
end

@doc md"""
    sf_airy_zero_Ai_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Ai_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_e(s, result)
    ccall((:gsl_sf_airy_zero_Ai_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_airy_zero_Ai(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Ai(unsigned int s)`

GSL documentation:

### `double gsl_sf_airy_zero_Ai (unsigned int s)`

> int gsl\_sf\_airy\_zero\_Ai\_e (unsigned int s, gsl\_sf\_result \*
> result)

> These routines compute the location of the `s`-th zero of the Airy
> function $Ai(x)$.

"""
function sf_airy_zero_Ai(s)
    ccall((:gsl_sf_airy_zero_Ai, libgsl), Cdouble, (Cuint,), s)
end

@doc md"""
    sf_airy_zero_Bi_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Bi_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_e(s, result)
    ccall((:gsl_sf_airy_zero_Bi_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_airy_zero_Bi(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Bi(unsigned int s)`

GSL documentation:

### `double gsl_sf_airy_zero_Bi (unsigned int s)`

> int gsl\_sf\_airy\_zero\_Bi\_e (unsigned int s, gsl\_sf\_result \*
> result)

> These routines compute the location of the `s`-th zero of the Airy
> function $Bi(x)$.

"""
function sf_airy_zero_Bi(s)
    ccall((:gsl_sf_airy_zero_Bi, libgsl), Cdouble, (Cuint,), s)
end

@doc md"""
    sf_airy_zero_Ai_deriv_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Ai_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_deriv_e(s, result)
    ccall((:gsl_sf_airy_zero_Ai_deriv_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_airy_zero_Ai_deriv(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Ai_deriv(unsigned int s)`

GSL documentation:

### `double gsl_sf_airy_zero_Ai_deriv (unsigned int s)`

> int gsl\_sf\_airy\_zero\_Ai\_deriv\_e (unsigned int s, gsl\_sf\_result
> \* result)

> These routines compute the location of the `s`-th zero of the Airy
> function derivative $Ai'(x)$.

"""
function sf_airy_zero_Ai_deriv(s)
    ccall((:gsl_sf_airy_zero_Ai_deriv, libgsl), Cdouble, (Cuint,), s)
end

@doc md"""
    sf_airy_zero_Bi_deriv_e(s, result) -> Cint

C signature:
`int gsl_sf_airy_zero_Bi_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_deriv_e(s, result)
    ccall((:gsl_sf_airy_zero_Bi_deriv_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_airy_zero_Bi_deriv(s) -> Cdouble

C signature:
`double gsl_sf_airy_zero_Bi_deriv(unsigned int s)`

GSL documentation:

### `double gsl_sf_airy_zero_Bi_deriv (unsigned int s)`

> int gsl\_sf\_airy\_zero\_Bi\_deriv\_e (unsigned int s, gsl\_sf\_result
> \* result)

> These routines compute the location of the `s`-th zero of the Airy

"""
function sf_airy_zero_Bi_deriv(s)
    ccall((:gsl_sf_airy_zero_Bi_deriv, libgsl), Cdouble, (Cuint,), s)
end

