#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_movstat.h ############################################################


@doc md"""
    movstat_alloc(K) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc(const size_t K)`

GSL documentation:

### `gsl_movstat_workspace * gsl_movstat_alloc(const size_t K)`

> This function allocates a workspace for computing symmetric, centered
> moving statistics with a window length of $K$ samples. In this case,
> $H = J = \left\lfloor K/2 \right\rfloor$. The size of the workspace is
> $O(7K)$.

"""
function movstat_alloc(K)
    ccall((:gsl_movstat_alloc, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t,), K)
end

@doc md"""
    movstat_alloc2(H, J) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc2(const size_t H, const size_t J)`

GSL documentation:

### `gsl_movstat_workspace * gsl_movstat_alloc2(const size_t H, const size_t J)`

> This function allocates a workspace for computing moving statistics
> using a window with $H$ samples prior to the current sample, and $J$
> samples after the current sample. The total window size is
> $K = H + J + 1$. The size of the workspace is $O(7K)$.

"""
function movstat_alloc2(H, J)
    ccall((:gsl_movstat_alloc2, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t, Csize_t), H, J)
end

@doc md"""
    movstat_alloc_with_size(accum_state_size, H, J) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc_with_size(const size_t accum_state_size, const size_t H, const size_t J)`
"""
function movstat_alloc_with_size(accum_state_size, H, J)
    ccall((:gsl_movstat_alloc_with_size, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t, Csize_t, Csize_t), accum_state_size, H, J)
end

@doc md"""
    movstat_free(w) -> Cvoid

C signature:
`void gsl_movstat_free(gsl_movstat_workspace * w)`

GSL documentation:

### `void * gsl_movstat_free(gsl_movstat_workspace * w)`

> This function frees the memory associated with `w`.

"""
function movstat_free(w)
    ccall((:gsl_movstat_free, libgsl), Cvoid, (Ptr{gsl_movstat_workspace},), w)
end

@doc md"""
    movstat_apply_accum(endtype, x, accum, accum_params, y, z, w) -> Cint

C signature:
`int gsl_movstat_apply_accum(const gsl_movstat_end_t endtype, const gsl_vector * x, const gsl_movstat_accum * accum, void * accum_params, gsl_vector * y, gsl_vector * z, gsl_movstat_workspace * w)`
"""
function movstat_apply_accum(endtype, x, accum, accum_params, y, z, w)
    ccall((:gsl_movstat_apply_accum, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_movstat_accum}, Ptr{Cvoid}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, accum, accum_params, y, z, w)
end

@doc md"""
    movstat_apply(endtype, F, x, y, w) -> Cint

C signature:
`int gsl_movstat_apply(const gsl_movstat_end_t endtype, const gsl_movstat_function * F, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_apply(const gsl_movstat_end_t endtype, const gsl_movstat_function * F, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function applies the user-defined moving window statistic
> specified in `F` to the input vector `x`, storing the output in `y`.
> The parameter `endtype` specifies how windows near the ends of the
> input should be handled. It is allowed for `x` = `y` for an in-place
> moving window calculation.

"""
function movstat_apply(endtype, F, x, y, w)
    ccall((:gsl_movstat_apply, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_movstat_function}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, F, x, y, w)
end

@doc md"""
    movstat_fill(endtype, x, idx, H, J, window) -> Csize_t

C signature:
`size_t gsl_movstat_fill(const gsl_movstat_end_t endtype, const gsl_vector * x, const size_t idx, const size_t H, const size_t J, double * window)`

GSL documentation:

### `size_t gsl_movstat_fill(const gsl_movstat_end_t endtype, const gsl_vector * x, const size_t idx, const size_t H, const size_t J, double * window)`

> This function explicitly constructs the sliding window for the input
> vector `x` which is centered on the sample `idx`. On output, the array
> `window` will contain $W_{idx}^{H,J}$. The number of samples to the
> left and right of the sample `idx` are specified by `H` and `J`
> respectively. The parameter `endtype` specifies how windows near the
> ends of the input should be handled. The function returns the size of
> the window.

"""
function movstat_fill(endtype, x, idx, H, J, window)
    ccall((:gsl_movstat_fill, libgsl), Csize_t, (gsl_movstat_end_t, Ref{gsl_vector}, Csize_t, Csize_t, Csize_t, Ref{Cdouble}), endtype, x, idx, H, J, window)
end

@doc md"""
    movstat_mean(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_mean(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_mean(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving window mean of the input vector `x`,
> storing the output in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed to
> have `x` = `y` for an in-place moving mean.

"""
function movstat_mean(endtype, x, y, w)
    ccall((:gsl_movstat_mean, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_variance(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_variance(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_variance(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving window variance of the input vector
> `x`, storing the output in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed to
> have `x` = `y` for an in-place moving variance.

"""
function movstat_variance(endtype, x, y, w)
    ccall((:gsl_movstat_variance, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_sd(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_sd(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_sd(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving window standard deviation of the
> input vector `x`, storing the output in `y`. The parameter `endtype`
> specifies how windows near the ends of the input should be handled. It
> is allowed to have `x` = `y` for an in-place moving standard
> deviation.

"""
function movstat_sd(endtype, x, y, w)
    ccall((:gsl_movstat_sd, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_median(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_median(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_median(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving median of the input vector `x`,
> storing the output in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed
> for `x` = `y` for an in-place moving window median.

"""
function movstat_median(endtype, x, y, w)
    ccall((:gsl_movstat_median, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_min(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_min(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_min(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving minimum of the input vector `x`,
> storing the result in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed to
> have `x` = `y` for an in-place moving minimum.

"""
function movstat_min(endtype, x, y, w)
    ccall((:gsl_movstat_min, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_max(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_max(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_max(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving maximum of the input vector `x`,
> storing the result in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed to
> have `x` = `y` for an in-place moving maximum.

"""
function movstat_max(endtype, x, y, w)
    ccall((:gsl_movstat_max, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

@doc md"""
    movstat_minmax(endtype, x, y_min, y_max, w) -> Cint

C signature:
`int gsl_movstat_minmax(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y_min, gsl_vector * y_max, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_minmax(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y_min, gsl_vector * y_max, gsl_movstat_workspace * w)`

> This function computes the moving minimum and maximum of the input
> vector `x`, storing the window minimums in `y_min` and the window
> maximums in `y_max`. The parameter `endtype` specifies how windows
> near the ends of the input should be handled.

"""
function movstat_minmax(endtype, x, y_min, y_max, w)
    ccall((:gsl_movstat_minmax, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y_min, y_max, w)
end

@doc md"""
    movstat_mad0(endtype, x, xmedian, xmad, w) -> Cint

C signature:
`int gsl_movstat_mad0(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xmedian, gsl_vector * xmad, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_mad0(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xmedian, gsl_vector * xmad, gsl_movstat_workspace * w)`

> int gsl\_movstat\_mad(const gsl\_movstat\_end\_t endtype, const
> gsl\_vector \* x, gsl\_vector \* xmedian, gsl\_vector \* xmad,
> gsl\_movstat\_workspace \* w)

> These functions compute the moving MAD of the input vector `x` and
> store the result in `xmad`. The medians of each window $W_i^{H,J}$ are
> stored in `xmedian` on output. The inputs `x`, `xmedian`, and `xmad`
> must all be the same length. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. The function
> `mad0` does not include the scale factor of $1.4826$, while the
> function `mad` does include this factor.

"""
function movstat_mad0(endtype, x, xmedian, xmad, w)
    ccall((:gsl_movstat_mad0, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xmedian, xmad, w)
end

@doc md"""
    movstat_mad(endtype, x, xmedian, xmad, w) -> Cint

C signature:
`int gsl_movstat_mad(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xmedian, gsl_vector * xmad, gsl_movstat_workspace * w)`
"""
function movstat_mad(endtype, x, xmedian, xmad, w)
    ccall((:gsl_movstat_mad, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xmedian, xmad, w)
end

@doc md"""
    movstat_qqr(endtype, x, q, xqqr, w) -> Cint

C signature:
`int gsl_movstat_qqr(const gsl_movstat_end_t endtype, const gsl_vector * x, const double q, gsl_vector * xqqr, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_qqr(const gsl_movstat_end_t endtype, const gsl_vector * x, const double q, gsl_vector * xqqr, gsl_movstat_workspace * w)`

> This function computes the moving QQR of the input vector `x` and
> stores the q-quantile ranges of each window $W_i^{H,J}$ in `xqqr`. The
> quantile parameter `q` must be between $0$ and $0.5$. The input
> $q = 0.25$ corresponds to the IQR. The inputs `x` and `xqqr` must be
> the same length. The parameter `endtype` specifies how windows near
> the ends of the input should be handled.

"""
function movstat_qqr(endtype, x, q, xqqr, w)
    ccall((:gsl_movstat_qqr, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, q, xqqr, w)
end

@doc md"""
    movstat_Sn(endtype, x, xscale, w) -> Cint

C signature:
`int gsl_movstat_Sn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_Sn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`

> This function computes the moving $S_n$ of the input vector `x` and
> stores the output in `xscale`. The inputs `x` and `xscale` must be the
> same length. The parameter `endtype` specifies how windows near the
> ends of the input should be handled. It is allowed for `x` = `xscale`
> for an in-place moving window $S_n$.

"""
function movstat_Sn(endtype, x, xscale, w)
    ccall((:gsl_movstat_Sn, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xscale, w)
end

@doc md"""
    movstat_Qn(endtype, x, xscale, w) -> Cint

C signature:
`int gsl_movstat_Qn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_Qn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`

> This function computes the moving $Q_n$ of the input vector `x` and
> stores the output in `xscale`. The inputs `x` and `xscale` must be the
> same length. The parameter `endtype` specifies how windows near the
> ends of the input should be handled. It is allowed for `x` = `xscale`
> for an in-place moving window $Q_n$.

"""
function movstat_Qn(endtype, x, xscale, w)
    ccall((:gsl_movstat_Qn, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xscale, w)
end

@doc md"""
    movstat_sum(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_sum(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

GSL documentation:

### `int gsl_movstat_sum(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`

> This function computes the moving window sum of the input vector `x`,
> storing the output in `y`. The parameter `endtype` specifies how
> windows near the ends of the input should be handled. It is allowed to
> have `x` = `y` for an in-place moving sum.

"""
function movstat_sum(endtype, x, y, w)
    ccall((:gsl_movstat_sum, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

