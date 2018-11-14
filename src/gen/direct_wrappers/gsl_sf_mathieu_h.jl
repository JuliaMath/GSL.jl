#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_mathieu.h #########################################################


@doc md"""
    sf_mathieu_a_array(order_min, order_max, qq, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_a_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_a_array (int order_min, int order_max, double q, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_b\_array (int order\_min, int order\_max, double
> q, gsl\_sf\_mathieu\_workspace \* work, double result\_array\[\])

> These routines compute a series of Mathieu characteristic values
> $a_n(q)$, $b_n(q)$ for $n$ from `order_min` to `order_max` inclusive,
> storing the results in the array `result_array`.

"""
function sf_mathieu_a_array(order_min, order_max, qq, work, result_array)
    ccall((:gsl_sf_mathieu_a_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), order_min, order_max, qq, work, result_array)
end

@doc md"""
    sf_mathieu_b_array(order_min, order_max, qq, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_b_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_b_array(order_min, order_max, qq, work, result_array)
    ccall((:gsl_sf_mathieu_b_array, libgsl), Cint, (Cint, Cint, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), order_min, order_max, qq, work, result_array)
end

@doc md"""
    sf_mathieu_a_e(order, qq, result) -> Cint

C signature:
`int gsl_sf_mathieu_a_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_a_e(order, qq, result)
    ccall((:gsl_sf_mathieu_a_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), order, qq, result)
end

@doc md"""
    sf_mathieu_a(order, qq) -> Cdouble

C signature:
`double gsl_sf_mathieu_a(int order, double qq)`

GSL documentation:

### `int gsl_sf_mathieu_a (int n, double q)`

> int gsl\_sf\_mathieu\_a\_e (int n, double q, gsl\_sf\_result \*
> result) int gsl\_sf\_mathieu\_b (int n, double q) int
> gsl\_sf\_mathieu\_b\_e (int n, double q, gsl\_sf\_result \* result)

> These routines compute the characteristic values $a_n(q)$, $b_n(q)$ of
> the Mathieu functions $ce_n(q,x)$ and $se_n(q,x)$, respectively.

"""
function sf_mathieu_a(order, qq)
    ccall((:gsl_sf_mathieu_a, libgsl), Cdouble, (Cint, Cdouble), order, qq)
end

@doc md"""
    sf_mathieu_b_e(order, qq, result) -> Cint

C signature:
`int gsl_sf_mathieu_b_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_b_e(order, qq, result)
    ccall((:gsl_sf_mathieu_b_e, libgsl), Cint, (Cint, Cdouble, Ref{gsl_sf_result}), order, qq, result)
end

@doc md"""
    sf_mathieu_b(order, qq) -> Cdouble

C signature:
`double gsl_sf_mathieu_b(int order, double qq)`
"""
function sf_mathieu_b(order, qq)
    ccall((:gsl_sf_mathieu_b, libgsl), Cdouble, (Cint, Cdouble), order, qq)
end

@doc md"""
    sf_mathieu_a_coeff(order, qq, aa, coeff) -> Cint

C signature:
`int gsl_sf_mathieu_a_coeff(int order, double qq, double aa, double coeff[])`
"""
function sf_mathieu_a_coeff(order, qq, aa, coeff)
    ccall((:gsl_sf_mathieu_a_coeff, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), order, qq, aa, coeff)
end

@doc md"""
    sf_mathieu_b_coeff(order, qq, aa, coeff) -> Cint

C signature:
`int gsl_sf_mathieu_b_coeff(int order, double qq, double aa, double coeff[])`
"""
function sf_mathieu_b_coeff(order, qq, aa, coeff)
    ccall((:gsl_sf_mathieu_b_coeff, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{Cdouble}), order, qq, aa, coeff)
end

@doc md"""
    sf_mathieu_alloc(nn, qq) -> Ptr{gsl_sf_mathieu_workspace}

C signature:
`gsl_sf_mathieu_workspace *gsl_sf_mathieu_alloc(const size_t nn, const double qq)`

GSL documentation:

### `gsl_sf_mathieu_workspace * gsl_sf_mathieu_alloc (size_t n, double qmax)`

> This function returns a workspace for the array versions of the
> Mathieu routines. The arguments n and `qmax` specify the maximum order
> and $q$-value of Mathieu functions which can be computed with this
> workspace.

"""
function sf_mathieu_alloc(nn, qq)
    ccall((:gsl_sf_mathieu_alloc, libgsl), Ptr{gsl_sf_mathieu_workspace}, (Csize_t, Cdouble), nn, qq)
end

@doc md"""
    sf_mathieu_free(workspace) -> Cvoid

C signature:
`void gsl_sf_mathieu_free(gsl_sf_mathieu_workspace *workspace)`

GSL documentation:

### `void gsl_sf_mathieu_free (gsl_sf_mathieu_workspace * work)`

> This function frees the workspace `work`.

"""
function sf_mathieu_free(workspace)
    ccall((:gsl_sf_mathieu_free, libgsl), Cvoid, (Ptr{gsl_sf_mathieu_workspace},), workspace)
end

@doc md"""
    sf_mathieu_ce_e(order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_ce_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_ce_e(order, qq, zz, result)
    ccall((:gsl_sf_mathieu_ce_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), order, qq, zz, result)
end

@doc md"""
    sf_mathieu_ce(order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_ce(int order, double qq, double zz)`

GSL documentation:

### `int gsl_sf_mathieu_ce (int n, double q, double x)`

> int gsl\_sf\_mathieu\_ce\_e (int n, double q, double x,
> gsl\_sf\_result \* result) int gsl\_sf\_mathieu\_se (int n, double q,
> double x) int gsl\_sf\_mathieu\_se\_e (int n, double q, double x,
> gsl\_sf\_result \* result)

> These routines compute the angular Mathieu functions $ce_n(q,x)$ and
> $se_n(q,x)$, respectively.

"""
function sf_mathieu_ce(order, qq, zz)
    ccall((:gsl_sf_mathieu_ce, libgsl), Cdouble, (Cint, Cdouble, Cdouble), order, qq, zz)
end

@doc md"""
    sf_mathieu_se_e(order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_se_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_se_e(order, qq, zz, result)
    ccall((:gsl_sf_mathieu_se_e, libgsl), Cint, (Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), order, qq, zz, result)
end

@doc md"""
    sf_mathieu_se(order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_se(int order, double qq, double zz)`
"""
function sf_mathieu_se(order, qq, zz)
    ccall((:gsl_sf_mathieu_se, libgsl), Cdouble, (Cint, Cdouble, Cdouble), order, qq, zz)
end

@doc md"""
    sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_ce_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_ce_array (int nmin, int nmax, double q, double x, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_se\_array (int nmin, int nmax, double q, double
> x, gsl\_sf\_mathieu\_workspace \* work, double result\_array\[\])

> These routines compute a series of the angular Mathieu functions
> $ce_n(q,x)$ and $se_n(q,x)$ of order $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`.

"""
function sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_ce_array, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), nmin, nmax, qq, zz, work, result_array)
end

@doc md"""
    sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_se_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_se_array, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), nmin, nmax, qq, zz, work, result_array)
end

@doc md"""
    sf_mathieu_Mc_e(kind, order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_Mc_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Mc_e(kind, order, qq, zz, result)
    ccall((:gsl_sf_mathieu_Mc_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), kind, order, qq, zz, result)
end

@doc md"""
    sf_mathieu_Mc(kind, order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_Mc(int kind, int order, double qq, double zz)`

GSL documentation:

### `int gsl_sf_mathieu_Mc (int j, int n, double q, double x)`

> int gsl\_sf\_mathieu\_Mc\_e (int j, int n, double q, double x,
> gsl\_sf\_result \* result) int gsl\_sf\_mathieu\_Ms (int j, int n,
> double q, double x) int gsl\_sf\_mathieu\_Ms\_e (int j, int n, double
> q, double x, gsl\_sf\_result \* result)

> These routines compute the radial `j`-th kind Mathieu functions
> $Mc_n^{(j)}(q,x)$ and $Ms_n^{(j)}(q,x)$ of order `n`.
>
> The allowed values of `j` are 1 and 2. The functions for $j = 3,4$ can
> be computed as $M_n^{(3)} = M_n^{(1)} + iM_n^{(2)}$ and
> $M_n^{(4)} = M_n^{(1)} - iM_n^{(2)}$, where $M_n^{(j)} = Mc_n^{(j)}$
> or $Ms_n^{(j)}$.

"""
function sf_mathieu_Mc(kind, order, qq, zz)
    ccall((:gsl_sf_mathieu_Mc, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), kind, order, qq, zz)
end

@doc md"""
    sf_mathieu_Ms_e(kind, order, qq, zz, result) -> Cint

C signature:
`int gsl_sf_mathieu_Ms_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Ms_e(kind, order, qq, zz, result)
    ccall((:gsl_sf_mathieu_Ms_e, libgsl), Cint, (Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_result}), kind, order, qq, zz, result)
end

@doc md"""
    sf_mathieu_Ms(kind, order, qq, zz) -> Cdouble

C signature:
`double gsl_sf_mathieu_Ms(int kind, int order, double qq, double zz)`
"""
function sf_mathieu_Ms(kind, order, qq, zz)
    ccall((:gsl_sf_mathieu_Ms, libgsl), Cdouble, (Cint, Cint, Cdouble, Cdouble), kind, order, qq, zz)
end

@doc md"""
    sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_Mc_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_Mc_array (int j, int nmin, int nmax, double q, double x, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_Ms\_array (int j, int nmin, int nmax, double q,
> double x, gsl\_sf\_mathieu\_workspace \* work, double
> result\_array\[\])

> These routines compute a series of the radial Mathieu functions of
> kind `j`, with order from `nmin` to `nmax` inclusive, storing the

"""
function sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_Mc_array, libgsl), Cint, (Cint, Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), kind, nmin, nmax, qq, zz, work, result_array)
end

@doc md"""
    sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array) -> Cint

C signature:
`int gsl_sf_mathieu_Ms_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array)
    ccall((:gsl_sf_mathieu_Ms_array, libgsl), Cint, (Cint, Cint, Cint, Cdouble, Cdouble, Ref{gsl_sf_mathieu_workspace}, Ref{Cdouble}), kind, nmin, nmax, qq, zz, work, result_array)
end

