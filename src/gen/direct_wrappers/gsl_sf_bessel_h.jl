#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_bessel.h ##########################################################


@doc md"""
    sf_bessel_J0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_J0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J0_e(x, result)
    ccall((:gsl_sf_bessel_J0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_J0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_J0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_J0 (double x)`

> int gsl\_sf\_bessel\_J0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular cylindrical Bessel function of
> zeroth order, $J_0(x)$.

"""
function sf_bessel_J0(x)
    ccall((:gsl_sf_bessel_J0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_J1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_J1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J1_e(x, result)
    ccall((:gsl_sf_bessel_J1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_J1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_J1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_J1 (double x)`

> int gsl\_sf\_bessel\_J1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular cylindrical Bessel function of
> first order, $J_1(x)$.

"""
function sf_bessel_J1(x)
    ccall((:gsl_sf_bessel_J1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_Jn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Jn_e(int n, double x, gsl_sf_result * result)`
"""
function sf_bessel_Jn_e(n, x, result)
    ccall((:gsl_sf_bessel_Jn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_Jn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Jn(const int n, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Jn (int n, double x)`

> int gsl\_sf\_bessel\_Jn\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the regular cylindrical Bessel function of
> order `n`, $J_n(x)$.

"""
function sf_bessel_Jn(n, x)
    ccall((:gsl_sf_bessel_Jn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_Jn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Jn_array(int nmin, int nmax, double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Jn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the regular cylindrical Bessel
> functions $J_n(x)$ for $n$ from `nmin` to `nmax` inclusive, storing
> the results in the array `result_array`. The values are computed using
> recurrence relations for efficiency, and therefore may differ slightly
> from the exact values.

"""
function sf_bessel_Jn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Jn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_Y0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_Y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y0_e(x, result)
    ccall((:gsl_sf_bessel_Y0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_Y0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_Y0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_Y0 (double x)`

> int gsl\_sf\_bessel\_Y0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular cylindrical Bessel function of
> zeroth order, $Y_0(x)$, for $x>0$.

"""
function sf_bessel_Y0(x)
    ccall((:gsl_sf_bessel_Y0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_Y1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_Y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y1_e(x, result)
    ccall((:gsl_sf_bessel_Y1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_Y1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_Y1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_Y1 (double x)`

> int gsl\_sf\_bessel\_Y1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular cylindrical Bessel function of
> first order, $Y_1(x)$, for $x>0$.

"""
function sf_bessel_Y1(x)
    ccall((:gsl_sf_bessel_Y1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_Yn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Yn_e(int n,const double x, gsl_sf_result * result)`
"""
function sf_bessel_Yn_e(n, x, result)
    ccall((:gsl_sf_bessel_Yn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_Yn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Yn(const int n,const double x)`

GSL documentation:

### `double gsl_sf_bessel_Yn (int n, double x)`

> int gsl\_sf\_bessel\_Yn\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the irregular cylindrical Bessel function of
> order `n`, $Y_n(x)$, for $x>0$.

"""
function sf_bessel_Yn(n, x)
    ccall((:gsl_sf_bessel_Yn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_Yn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Yn_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Yn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the irregular cylindrical Bessel
> functions $Y_n(x)$ for $n$ from `nmin` to `nmax` inclusive, storing
> the results in the array `result_array`. The domain of the function is
> $x>0$. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_Yn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Yn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_I0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_e(x, result)
    ccall((:gsl_sf_bessel_I0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_I0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_I0 (double x)`

> int gsl\_sf\_bessel\_I0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular modified cylindrical Bessel
> function of zeroth order, $I_0(x)$.

"""
function sf_bessel_I0(x)
    ccall((:gsl_sf_bessel_I0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_I1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_e(x, result)
    ccall((:gsl_sf_bessel_I1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_I1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_I1 (double x)`

> int gsl\_sf\_bessel\_I1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular modified cylindrical Bessel
> function of first order, $I_1(x)$.

"""
function sf_bessel_I1(x)
    ccall((:gsl_sf_bessel_I1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_In_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_In_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_e(n, x, result)
    ccall((:gsl_sf_bessel_In_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_In(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_In(const int n, const double x)`

GSL documentation:

### `double gsl_sf_bessel_In (int n, double x)`

> int gsl\_sf\_bessel\_In\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the regular modified cylindrical Bessel
> function of order `n`, $I_n(x)$.

"""
function sf_bessel_In(n, x)
    ccall((:gsl_sf_bessel_In, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_In_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_In_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_In_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the regular modified cylindrical
> Bessel functions $I_n(x)$ for $n$ from `nmin` to `nmax` inclusive,
> storing the results in the array `result_array`. The start of the
> range `nmin` must be positive or zero. The values are computed using
> recurrence relations for efficiency, and therefore may differ slightly
> from the exact values.

"""
function sf_bessel_In_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_In_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_I0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_I0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_I0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I0_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_I0_scaled (double x)`

> int gsl\_sf\_bessel\_I0\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled regular modified cylindrical Bessel
> function of zeroth order $\exp(-|x|) I_0(x)$.

"""
function sf_bessel_I0_scaled(x)
    ccall((:gsl_sf_bessel_I0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_I1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_I1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_I1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_I1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_I1_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_I1_scaled (double x)`

> int gsl\_sf\_bessel\_I1\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled regular modified cylindrical Bessel
> function of first order $\exp(-|x|) I_1(x)$.

"""
function sf_bessel_I1_scaled(x)
    ccall((:gsl_sf_bessel_I1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_In_scaled_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_In_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_scaled_e(n, x, result)
    ccall((:gsl_sf_bessel_In_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_In_scaled(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_In_scaled(const int n, const double x)`

GSL documentation:

### `double gsl_sf_bessel_In_scaled (int n, double x)`

> int gsl\_sf\_bessel\_In\_scaled\_e (int n, double x, gsl\_sf\_result
> \* result)

> These routines compute the scaled regular modified cylindrical Bessel
> function of order `n`, $\exp(-|x|) I_n(x)$

"""
function sf_bessel_In_scaled(n, x)
    ccall((:gsl_sf_bessel_In_scaled, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_In_scaled_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_In_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_In_scaled_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the scaled regular cylindrical
> Bessel functions $\exp(-|x|) I_n(x)$ for $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`. The start
> of the range `nmin` must be positive or zero. The values are computed
> using recurrence relations for efficiency, and therefore may differ
> slightly from the exact values.

"""
function sf_bessel_In_scaled_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_In_scaled_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_K0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_e(x, result)
    ccall((:gsl_sf_bessel_K0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_K0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_K0 (double x)`

> int gsl\_sf\_bessel\_K0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular modified cylindrical Bessel
> function of zeroth order, $K_0(x)$, for $x > 0$.

"""
function sf_bessel_K0(x)
    ccall((:gsl_sf_bessel_K0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_K1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_e(x, result)
    ccall((:gsl_sf_bessel_K1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_K1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_K1 (double x)`

> int gsl\_sf\_bessel\_K1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular modified cylindrical Bessel
> function of first order, $K_1(x)$, for $x > 0$.

"""
function sf_bessel_K1(x)
    ccall((:gsl_sf_bessel_K1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_Kn_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Kn_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_e(n, x, result)
    ccall((:gsl_sf_bessel_Kn_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_Kn(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Kn(const int n, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Kn (int n, double x)`

> int gsl\_sf\_bessel\_Kn\_e (int n, double x, gsl\_sf\_result \*
> result)

> These routines compute the irregular modified cylindrical Bessel
> function of order `n`, $K_n(x)$, for $x > 0$.

"""
function sf_bessel_Kn(n, x)
    ccall((:gsl_sf_bessel_Kn, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_Kn_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Kn_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Kn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the irregular modified cylindrical
> Bessel functions $K_n(x)$ for $n$ from `nmin` to `nmax` inclusive,
> storing the results in the array `result_array`. The start of the
> range `nmin` must be positive or zero. The domain of the function is
> $x>0$. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_Kn_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Kn_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_K0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_K0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_K0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K0_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_K0_scaled (double x)`

> int gsl\_sf\_bessel\_K0\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled irregular modified cylindrical
> Bessel function of zeroth order $\exp(x) K_0(x)$ for $x>0$.

"""
function sf_bessel_K0_scaled(x)
    ccall((:gsl_sf_bessel_K0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_K1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_K1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_K1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_K1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_K1_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_K1_scaled (double x)`

> int gsl\_sf\_bessel\_K1\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled irregular modified cylindrical
> Bessel function of first order $\exp(x) K_1(x)$ for $x>0$.

"""
function sf_bessel_K1_scaled(x)
    ccall((:gsl_sf_bessel_K1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_Kn_scaled_e(n, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Kn_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_scaled_e(n, x, result)
    ccall((:gsl_sf_bessel_Kn_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), n, x, result)
end

@doc md"""
    sf_bessel_Kn_scaled(n, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Kn_scaled(const int n, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Kn_scaled (int n, double x)`

> int gsl\_sf\_bessel\_Kn\_scaled\_e (int n, double x, gsl\_sf\_result
> \* result)

> These routines compute the scaled irregular modified cylindrical
> Bessel function of order `n`, $\exp(x) K_n(x)$, for $x>0$.

"""
function sf_bessel_Kn_scaled(n, x)
    ccall((:gsl_sf_bessel_Kn_scaled, libgsl), Cdouble, (Cint, Cdouble), n, x)
end

@doc md"""
    sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_Kn_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Kn_scaled_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the scaled irregular cylindrical
> Bessel functions $\exp(x) K_n(x)$ for $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`. The start
> of the range `nmin` must be positive or zero. The domain of the
> function is $x>0$. The values are computed using recurrence relations
> for efficiency, and therefore may differ slightly from the exact
> values.

"""
function sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array)
    ccall((:gsl_sf_bessel_Kn_scaled_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array)
end

@doc md"""
    sf_bessel_j0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j0_e(x, result)
    ccall((:gsl_sf_bessel_j0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_j0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_j0 (double x)`

> int gsl\_sf\_bessel\_j0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular spherical Bessel function of zeroth
> order, $j_0(x) = \sin(x)/x$.

"""
function sf_bessel_j0(x)
    ccall((:gsl_sf_bessel_j0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_j1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j1_e(x, result)
    ccall((:gsl_sf_bessel_j1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_j1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_j1 (double x)`

> int gsl\_sf\_bessel\_j1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular spherical Bessel function of first
> order, $j_1(x) = (\sin(x)/x - \cos(x))/x$.

"""
function sf_bessel_j1(x)
    ccall((:gsl_sf_bessel_j1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_j2_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_j2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j2_e(x, result)
    ccall((:gsl_sf_bessel_j2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_j2(x) -> Cdouble

C signature:
`double gsl_sf_bessel_j2(const double x)`

GSL documentation:

### `double gsl_sf_bessel_j2 (double x)`

> int gsl\_sf\_bessel\_j2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the regular spherical Bessel function of second
> order, $j_2(x) = ((3/x^2 - 1)\sin(x) - 3\cos(x)/x)/x$.

"""
function sf_bessel_j2(x)
    ccall((:gsl_sf_bessel_j2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_jl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_jl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_jl_e(l, x, result)
    ccall((:gsl_sf_bessel_jl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_bessel_jl(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_jl(const int l, const double x)`

GSL documentation:

### `double gsl_sf_bessel_jl (int l, double x)`

> int gsl\_sf\_bessel\_jl\_e (int l, double x, gsl\_sf\_result \*
> result)

> These routines compute the regular spherical Bessel function of order
> `l`, $j_l(x)$, for $l \geq 0$ and $x \geq 0$.

"""
function sf_bessel_jl(l, x)
    ccall((:gsl_sf_bessel_jl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_bessel_jl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_jl_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_jl_array (int lmax, double x, double result_array[])`

> This routine computes the values of the regular spherical Bessel
> functions $j_l(x)$ for $l$ from 0 to `lmax` inclusive for
> $lmax \geq 0$ and $x \geq 0$, storing the results in the array
> `result_array`. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_jl_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_jl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

@doc md"""
    sf_bessel_jl_steed_array(lmax, x, jl_x_array) -> Cint

C signature:
`int gsl_sf_bessel_jl_steed_array(const int lmax, const double x, double * jl_x_array)`

GSL documentation:

### `int gsl_sf_bessel_jl_steed_array (int lmax, double x, double * result_array)`

> This routine uses Steed's method to compute the values of the regular
> spherical Bessel functions $j_l(x)$ for $l$ from 0 to `lmax` inclusive
> for $lmax \geq 0$ and $x \geq 0$, storing the results in the array
> `result_array`. The Steed/Barnett algorithm is described in Comp.
> Phys. Comm. 21, 297 (1981). Steed's method is more stable than the
> recurrence used in the other functions but is also slower.

"""
function sf_bessel_jl_steed_array(lmax, x, jl_x_array)
    ccall((:gsl_sf_bessel_jl_steed_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, jl_x_array)
end

@doc md"""
    sf_bessel_y0_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y0_e(x, result)
    ccall((:gsl_sf_bessel_y0_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_y0(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y0(const double x)`

GSL documentation:

### `double gsl_sf_bessel_y0 (double x)`

> int gsl\_sf\_bessel\_y0\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular spherical Bessel function of
> zeroth order, $y_0(x) = -\cos(x)/x$.

"""
function sf_bessel_y0(x)
    ccall((:gsl_sf_bessel_y0, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_y1_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y1_e(x, result)
    ccall((:gsl_sf_bessel_y1_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_y1(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y1(const double x)`

GSL documentation:

### `double gsl_sf_bessel_y1 (double x)`

> int gsl\_sf\_bessel\_y1\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular spherical Bessel function of
> first order, $y_1(x) = -(\cos(x)/x + \sin(x))/x$.

"""
function sf_bessel_y1(x)
    ccall((:gsl_sf_bessel_y1, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_y2_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_y2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y2_e(x, result)
    ccall((:gsl_sf_bessel_y2_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_y2(x) -> Cdouble

C signature:
`double gsl_sf_bessel_y2(const double x)`

GSL documentation:

### `double gsl_sf_bessel_y2 (double x)`

> int gsl\_sf\_bessel\_y2\_e (double x, gsl\_sf\_result \* result)

> These routines compute the irregular spherical Bessel function of
> second order, $y_2(x) = (-3/x^3 + 1/x)\cos(x) - (3/x^2)\sin(x)$.

"""
function sf_bessel_y2(x)
    ccall((:gsl_sf_bessel_y2, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_yl_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_yl_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_yl_e(l, x, result)
    ccall((:gsl_sf_bessel_yl_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_bessel_yl(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_yl(const int l, const double x)`

GSL documentation:

### `double gsl_sf_bessel_yl (int l, double x)`

> int gsl\_sf\_bessel\_yl\_e (int l, double x, gsl\_sf\_result \*
> result)

> These routines compute the irregular spherical Bessel function of
> order `l`, $y_l(x)$, for $l \geq 0$.

"""
function sf_bessel_yl(l, x)
    ccall((:gsl_sf_bessel_yl, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_bessel_yl_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_yl_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_yl_array (int lmax, double x, double result_array[])`

> This routine computes the values of the irregular spherical Bessel
> functions $y_l(x)$ for $l$ from 0 to `lmax` inclusive for
> $lmax \geq 0$, storing the results in the array `result_array`. The
> values are computed using recurrence relations for efficiency, and
> therefore may differ slightly from the exact values.

"""
function sf_bessel_yl_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_yl_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

@doc md"""
    sf_bessel_i0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_i0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i0_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_i0_scaled (double x)`

> int gsl\_sf\_bessel\_i0\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled regular modified spherical Bessel
> function of zeroth order, $\exp(-|x|) i_0(x)$.

"""
function sf_bessel_i0_scaled(x)
    ccall((:gsl_sf_bessel_i0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_i1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_i1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i1_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_i1_scaled (double x)`

> int gsl\_sf\_bessel\_i1\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled regular modified spherical Bessel
> function of first order, $\exp(-|x|) i_1(x)$.

"""
function sf_bessel_i1_scaled(x)
    ccall((:gsl_sf_bessel_i1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_i2_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_i2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i2_scaled_e(x, result)
    ccall((:gsl_sf_bessel_i2_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_i2_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_i2_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_i2_scaled (double x)`

> int gsl\_sf\_bessel\_i2\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled regular modified spherical Bessel
> function of second order, $\exp(-|x|) i_2(x)$

"""
function sf_bessel_i2_scaled(x)
    ccall((:gsl_sf_bessel_i2_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_il_scaled_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_il_scaled_e(const int l, double x, gsl_sf_result * result)`
"""
function sf_bessel_il_scaled_e(l, x, result)
    ccall((:gsl_sf_bessel_il_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_bessel_il_scaled(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_il_scaled(const int l, const double x)`

GSL documentation:

### `double gsl_sf_bessel_il_scaled (int l, double x)`

> int gsl\_sf\_bessel\_il\_scaled\_e (int l, double x, gsl\_sf\_result
> \* result)

> These routines compute the scaled regular modified spherical Bessel
> function of order `l`, $\exp(-|x|) i_l(x)$

"""
function sf_bessel_il_scaled(l, x)
    ccall((:gsl_sf_bessel_il_scaled, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_bessel_il_scaled_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_il_scaled_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_il_scaled_array (int lmax, double x, double result_array[])`

> This routine computes the values of the scaled regular modified
> spherical Bessel functions $\exp(-|x|) i_l(x)$ for $l$ from 0 to
> `lmax` inclusive for $lmax \geq 0$, storing the results in the array
> `result_array`. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_il_scaled_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_il_scaled_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

@doc md"""
    sf_bessel_k0_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k0_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k0_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_k0_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k0_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_k0_scaled (double x)`

> int gsl\_sf\_bessel\_k0\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled irregular modified spherical Bessel
> function of zeroth order, $\exp(x) k_0(x)$, for $x>0$.

"""
function sf_bessel_k0_scaled(x)
    ccall((:gsl_sf_bessel_k0_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_k1_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k1_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k1_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_k1_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k1_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_k1_scaled (double x)`

> int gsl\_sf\_bessel\_k1\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled irregular modified spherical Bessel
> function of first order, $\exp(x) k_1(x)$, for $x>0$.

"""
function sf_bessel_k1_scaled(x)
    ccall((:gsl_sf_bessel_k1_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_k2_scaled_e(x, result) -> Cint

C signature:
`int gsl_sf_bessel_k2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k2_scaled_e(x, result)
    ccall((:gsl_sf_bessel_k2_scaled_e, libgsl), Cint, (Cdouble, Ref{gsl_sf_result}), x, result)
end

@doc md"""
    sf_bessel_k2_scaled(x) -> Cdouble

C signature:
`double gsl_sf_bessel_k2_scaled(const double x)`

GSL documentation:

### `double gsl_sf_bessel_k2_scaled (double x)`

> int gsl\_sf\_bessel\_k2\_scaled\_e (double x, gsl\_sf\_result \*
> result)

> These routines compute the scaled irregular modified spherical Bessel
> function of second order, $\exp(x) k_2(x)$, for $x>0$.

"""
function sf_bessel_k2_scaled(x)
    ccall((:gsl_sf_bessel_k2_scaled, libgsl), Cdouble, (Cdouble,), x)
end

@doc md"""
    sf_bessel_kl_scaled_e(l, x, result) -> Cint

C signature:
`int gsl_sf_bessel_kl_scaled_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_kl_scaled_e(l, x, result)
    ccall((:gsl_sf_bessel_kl_scaled_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), l, x, result)
end

@doc md"""
    sf_bessel_kl_scaled(l, x) -> Cdouble

C signature:
`double gsl_sf_bessel_kl_scaled(const int l, const double x)`

GSL documentation:

### `double gsl_sf_bessel_kl_scaled (int l, double x)`

> int gsl\_sf\_bessel\_kl\_scaled\_e (int l, double x, gsl\_sf\_result
> \* result)

> These routines compute the scaled irregular modified spherical Bessel
> function of order `l`, $\exp(x) k_l(x)$, for $x>0$.

"""
function sf_bessel_kl_scaled(l, x)
    ccall((:gsl_sf_bessel_kl_scaled, libgsl), Cdouble, (Cint, Cdouble), l, x)
end

@doc md"""
    sf_bessel_kl_scaled_array(lmax, x, result_array) -> Cint

C signature:
`int gsl_sf_bessel_kl_scaled_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_kl_scaled_array (int lmax, double x, double result_array[])`

> This routine computes the values of the scaled irregular modified
> spherical Bessel functions $\exp(x) k_l(x)$ for $l$ from 0 to `lmax`
> inclusive for $lmax \geq 0$ and $x>0$, storing the results in the
> array `result_array`. The values are computed using recurrence
> relations for efficiency, and therefore may differ slightly from the
> exact values.

"""
function sf_bessel_kl_scaled_array(lmax, x, result_array)
    ccall((:gsl_sf_bessel_kl_scaled_array, libgsl), Cint, (Cint, Cdouble, Ref{Cdouble}), lmax, x, result_array)
end

@doc md"""
    sf_bessel_Jnu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Jnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Jnu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Jnu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Jnu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Jnu(const double nu, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Jnu (double nu, double x)`

> int gsl\_sf\_bessel\_Jnu\_e (double nu, double x, gsl\_sf\_result \*
> result)

> These routines compute the regular cylindrical Bessel function of
> fractional order $\nu$, $J_\nu(x)$.

"""
function sf_bessel_Jnu(nu, x)
    ccall((:gsl_sf_bessel_Jnu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_Ynu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Ynu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Ynu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Ynu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Ynu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Ynu(const double nu, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Ynu (double nu, double x)`

> int gsl\_sf\_bessel\_Ynu\_e (double nu, double x, gsl\_sf\_result \*
> result)

> These routines compute the irregular cylindrical Bessel function of
> fractional order $\nu$, $Y_\nu(x)$.

"""
function sf_bessel_Ynu(nu, x)
    ccall((:gsl_sf_bessel_Ynu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_sequence_Jnu_e(nu, mode, size, v) -> Cint

C signature:
`int gsl_sf_bessel_sequence_Jnu_e(double nu, gsl_mode_t mode, size_t size, double * v)`

GSL documentation:

### `int gsl_sf_bessel_sequence_Jnu_e (double nu, gsl_mode_t mode, size_t size, double v[])`

> This function computes the regular cylindrical Bessel function of
> fractional order $\nu$, $J_\nu(x)$, evaluated at a series of $x$
> values. The array `v` of length `size` contains the $x$ values. They
> are assumed to be strictly ordered and positive. The array is
> over-written with the values of $J_\nu(x_i)$.

"""
function sf_bessel_sequence_Jnu_e(nu, mode, size, v)
    ccall((:gsl_sf_bessel_sequence_Jnu_e, libgsl), Cint, (Cdouble, gsl_mode_t, Csize_t, Ref{Cdouble}), nu, mode, size, v)
end

@doc md"""
    sf_bessel_Inu_scaled_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Inu_scaled_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_scaled_e(nu, x, result)
    ccall((:gsl_sf_bessel_Inu_scaled_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Inu_scaled(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Inu_scaled(double nu, double x)`

GSL documentation:

### `double gsl_sf_bessel_Inu_scaled (double nu, double x)`

> int gsl\_sf\_bessel\_Inu\_scaled\_e (double nu, double x,
> gsl\_sf\_result \* result)

> These routines compute the scaled regular modified Bessel function of
> fractional order $\nu$, $\exp(-|x|)I_\nu(x)$ for $x>0$, $\nu>0$.

"""
function sf_bessel_Inu_scaled(nu, x)
    ccall((:gsl_sf_bessel_Inu_scaled, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_Inu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Inu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Inu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Inu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Inu(double nu, double x)`

GSL documentation:

### `double gsl_sf_bessel_Inu (double nu, double x)`

> int gsl\_sf\_bessel\_Inu\_e (double nu, double x, gsl\_sf\_result \*
> result)

> These routines compute the regular modified Bessel function of
> fractional order $\nu$, $I_\nu(x)$ for $x>0$, $\nu>0$.

"""
function sf_bessel_Inu(nu, x)
    ccall((:gsl_sf_bessel_Inu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_Knu_scaled_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_scaled_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_scaled_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_scaled_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Knu_scaled(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Knu_scaled(const double nu, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Knu_scaled (double nu, double x)`

> int gsl\_sf\_bessel\_Knu\_scaled\_e (double nu, double x,
> gsl\_sf\_result \* result)

> These routines compute the scaled irregular modified Bessel function
> of fractional order $\nu$, $\exp(+|x|) K_\nu(x)$ for $x>0$, $\nu>0$.

"""
function sf_bessel_Knu_scaled(nu, x)
    ccall((:gsl_sf_bessel_Knu_scaled, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_Knu_scaled_e10_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_scaled_e10_e(const double nu, const double x, gsl_sf_result_e10 * result)`
"""
function sf_bessel_Knu_scaled_e10_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_scaled_e10_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result_e10}), nu, x, result)
end

@doc md"""
    sf_bessel_Knu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_Knu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_e(nu, x, result)
    ccall((:gsl_sf_bessel_Knu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_Knu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_Knu(const double nu, const double x)`

GSL documentation:

### `double gsl_sf_bessel_Knu (double nu, double x)`

> int gsl\_sf\_bessel\_Knu\_e (double nu, double x, gsl\_sf\_result \*
> result)

> These routines compute the irregular modified Bessel function of
> fractional order $\nu$, $K_\nu(x)$ for $x>0$, $\nu>0$.

"""
function sf_bessel_Knu(nu, x)
    ccall((:gsl_sf_bessel_Knu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_lnKnu_e(nu, x, result) -> Cint

C signature:
`int gsl_sf_bessel_lnKnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_lnKnu_e(nu, x, result)
    ccall((:gsl_sf_bessel_lnKnu_e, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_sf_result}), nu, x, result)
end

@doc md"""
    sf_bessel_lnKnu(nu, x) -> Cdouble

C signature:
`double gsl_sf_bessel_lnKnu(const double nu, const double x)`

GSL documentation:

### `double gsl_sf_bessel_lnKnu (double nu, double x)`

> int gsl\_sf\_bessel\_lnKnu\_e (double nu, double x, gsl\_sf\_result \*
> result)

> These routines compute the logarithm of the irregular modified Bessel
> function of fractional order $\nu$, $\ln(K_\nu(x))$ for $x>0$,
> $\nu>0$.

"""
function sf_bessel_lnKnu(nu, x)
    ccall((:gsl_sf_bessel_lnKnu, libgsl), Cdouble, (Cdouble, Cdouble), nu, x)
end

@doc md"""
    sf_bessel_zero_J0_e(s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_J0_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J0_e(s, result)
    ccall((:gsl_sf_bessel_zero_J0_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_bessel_zero_J0(s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_J0(unsigned int s)`

GSL documentation:

### `double gsl_sf_bessel_zero_J0 (unsigned int s)`

> int gsl\_sf\_bessel\_zero\_J0\_e (unsigned int s, gsl\_sf\_result \*
> result)

> These routines compute the location of the `s`-th positive zero of the
> Bessel function $J_0(x)$.

"""
function sf_bessel_zero_J0(s)
    ccall((:gsl_sf_bessel_zero_J0, libgsl), Cdouble, (Cuint,), s)
end

@doc md"""
    sf_bessel_zero_J1_e(s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_J1_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J1_e(s, result)
    ccall((:gsl_sf_bessel_zero_J1_e, libgsl), Cint, (Cuint, Ref{gsl_sf_result}), s, result)
end

@doc md"""
    sf_bessel_zero_J1(s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_J1(unsigned int s)`

GSL documentation:

### `double gsl_sf_bessel_zero_J1 (unsigned int s)`

> int gsl\_sf\_bessel\_zero\_J1\_e (unsigned int s, gsl\_sf\_result \*
> result)

> These routines compute the location of the `s`-th positive zero of the
> Bessel function $J_1(x)$.

"""
function sf_bessel_zero_J1(s)
    ccall((:gsl_sf_bessel_zero_J1, libgsl), Cdouble, (Cuint,), s)
end

@doc md"""
    sf_bessel_zero_Jnu_e(nu, s, result) -> Cint

C signature:
`int gsl_sf_bessel_zero_Jnu_e(double nu, unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_Jnu_e(nu, s, result)
    ccall((:gsl_sf_bessel_zero_Jnu_e, libgsl), Cint, (Cdouble, Cuint, Ref{gsl_sf_result}), nu, s, result)
end

@doc md"""
    sf_bessel_zero_Jnu(nu, s) -> Cdouble

C signature:
`double gsl_sf_bessel_zero_Jnu(double nu, unsigned int s)`

GSL documentation:

### `double gsl_sf_bessel_zero_Jnu (double nu, unsigned int s)`

> int gsl\_sf\_bessel\_zero\_Jnu\_e (double nu, unsigned int s,
> gsl\_sf\_result \* result)

> These routines compute the location of the `s`-th positive zero of the
> Bessel function $J_\nu(x)$. The current implementation does not
> support negative values of `nu`.

"""
function sf_bessel_zero_Jnu(nu, s)
    ccall((:gsl_sf_bessel_zero_Jnu, libgsl), Cdouble, (Cdouble, Cuint), nu, s)
end

