#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_fermi_dirac.h #####################################################


@doc md"""
    sf_fermi_dirac_m1_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_m1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_m1_e(x, result)
    ccall((:gsl_sf_fermi_dirac_m1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_m1(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_m1(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_m1 (double x)`

> int gsl\_sf\_fermi\_dirac\_m1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the complete Fermi-Dirac integral with an index
> of $-1$. This integral is given by $F_{-1}(x) = e^x / (1 + e^x)$.

"""
function sf_fermi_dirac_m1(x)
    ccall((:gsl_sf_fermi_dirac_m1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_0_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_0_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_0_e(x, result)
    ccall((:gsl_sf_fermi_dirac_0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_0(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_0(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_0 (double x)`

> int gsl\_sf\_fermi\_dirac\_0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the complete Fermi-Dirac integral with an index
> of $0$. This integral is given by $F_0(x) = \ln(1 + e^x)$.

"""
function sf_fermi_dirac_0(x)
    ccall((:gsl_sf_fermi_dirac_0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_1_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_1_e(x, result)
    ccall((:gsl_sf_fermi_dirac_1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_1(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_1(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_1 (double x)`

> int gsl\_sf\_fermi\_dirac\_1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the complete Fermi-Dirac integral with an index
> of $1$, $F_1(x) = \int_0^\infty dt (t /(\exp(t-x)+1))$.

"""
function sf_fermi_dirac_1(x)
    ccall((:gsl_sf_fermi_dirac_1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_2_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_2_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_2_e(x, result)
    ccall((:gsl_sf_fermi_dirac_2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_2(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_2(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_2 (double x)`

> int gsl\_sf\_fermi\_dirac\_2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the complete Fermi-Dirac integral with an index
> of $2$, $F_2(x) = (1/2) \int_0^\infty dt (t^2 /(\exp(t-x)+1))$.

"""
function sf_fermi_dirac_2(x)
    ccall((:gsl_sf_fermi_dirac_2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_int_e(j, x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_int_e(const int j, const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_int_e(j, x, result)
    ccall((:gsl_sf_fermi_dirac_int_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), j, x, result)
end

@doc md"""
    sf_fermi_dirac_int(j, x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_int(const int j, const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_int (int j, double x)`

> int gsl\_sf\_fermi\_dirac\_int\_e (int j, double x, gsl\_sf\_result \*
> result)

> These routines compute the complete Fermi-Dirac integral with an
> integer index of $j$,
> $F_j(x) = (1/\Gamma(j+1)) \int_0^\infty dt (t^j /(\exp(t-x)+1))$.

"""
function sf_fermi_dirac_int(j, x)
    ccall((:gsl_sf_fermi_dirac_int, libgsl), Cdouble, (Cint, Cdouble), j, x)
end

@doc md"""
    sf_fermi_dirac_mhalf_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_mhalf_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_mhalf_e(x, result)
    ccall((:gsl_sf_fermi_dirac_mhalf_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_mhalf(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_mhalf(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_mhalf (double x)`

> int gsl\_sf\_fermi\_dirac\_mhalf\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the complete Fermi-Dirac integral
> $F_{-1/2}(x)$.

"""
function sf_fermi_dirac_mhalf(x)
    ccall((:gsl_sf_fermi_dirac_mhalf, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_half_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_half_e(x, result)
    ccall((:gsl_sf_fermi_dirac_half_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_half(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_half(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_half (double x)`

> int gsl\_sf\_fermi\_dirac\_half\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the complete Fermi-Dirac integral $F_{1/2}(x)$.

"""
function sf_fermi_dirac_half(x)
    ccall((:gsl_sf_fermi_dirac_half, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_3half_e(x, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_3half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_3half_e(x, result)
    ccall((:gsl_sf_fermi_dirac_3half_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_fermi_dirac_3half(x) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_3half(const double x)`

GSL documentation:

### `double gsl_sf_fermi_dirac_3half (double x)`

> int gsl\_sf\_fermi\_dirac\_3half\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the complete Fermi-Dirac integral $F_{3/2}(x)$.

"""
function sf_fermi_dirac_3half(x)
    ccall((:gsl_sf_fermi_dirac_3half, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_fermi_dirac_inc_0_e(x, b, result) -> Cint

C signature:
`int gsl_sf_fermi_dirac_inc_0_e(const double x, const double b, gsl_sf_result * result)`
"""
function sf_fermi_dirac_inc_0_e(x, b, result)
    ccall((:gsl_sf_fermi_dirac_inc_0_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), x, b, result)
end

@doc md"""
    sf_fermi_dirac_inc_0(x, b) -> Cdouble

C signature:
`double gsl_sf_fermi_dirac_inc_0(const double x, const double b)`

GSL documentation:

### `double gsl_sf_fermi_dirac_inc_0 (double x, double b)`

> int gsl\_sf\_fermi\_dirac\_inc\_0\_e (double x, double b,
> gsl\_sf\_result \* result)

> These routines compute the incomplete Fermi-Dirac integral with an
> index of zero, $F_0(x,b) = \ln(1 + e^{b-x}) - (b-x)$

"""
function sf_fermi_dirac_inc_0(x, b)
    ccall((:gsl_sf_fermi_dirac_inc_0, libgsl), Cdouble, (Cdouble, Cdouble), x, b)
end

