#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_filter.h #############################################################


@doc md"""
    filter_gaussian_alloc(K) -> Ptr{gsl_filter_gaussian_workspace}

C signature:
`gsl_filter_gaussian_workspace *gsl_filter_gaussian_alloc(const size_t K)`

GSL documentation:

### `gsl_filter_gaussian_workspace * gsl_filter_gaussian_alloc(const size_t K)`

> This function initializes a workspace for Gaussian filtering using a
> kernel of size `K`. Here, $H = K / 2$. If $K$ is even, it is rounded
> up to the next odd integer to ensure a symmetric window. The size of
> the workspace is $O(K)$.

"""
function filter_gaussian_alloc(K)
    ccall((:gsl_filter_gaussian_alloc, libgsl), Ptr{gsl_filter_gaussian_workspace}, (Csize_t,), K)
end

@doc md"""
    filter_gaussian_free(w) -> Cvoid

C signature:
`void gsl_filter_gaussian_free(gsl_filter_gaussian_workspace * w)`

GSL documentation:

### `void gsl_filter_gaussian_free(gsl_filter_gaussian_workspace * w)`

> This function frees the memory associated with `w`.

"""
function filter_gaussian_free(w)
    ccall((:gsl_filter_gaussian_free, libgsl), Cvoid, (Ptr{gsl_filter_gaussian_workspace},), w)
end

@doc md"""
    filter_gaussian(endtype, alpha, order, x, y, w) -> Cint

C signature:
`int gsl_filter_gaussian(const gsl_filter_end_t endtype, const double alpha, const size_t order, const gsl_vector * x, gsl_vector * y, gsl_filter_gaussian_workspace * w)`

GSL documentation:

### `int gsl_filter_gaussian(const gsl_filter_end_t endtype, const double alpha, const size_t order, const gsl_vector * x, gsl_vector * y, gsl_filter_gaussian_workspace * w)`

> This function applies a Gaussian filter parameterized by `alpha` to
> the input vector `x`, storing the output in `y`. The derivative order
> is specified by `order`, with `0` corresponding to a Gaussian, `1`
> corresponding to a first derivative Gaussian, and so on. The parameter
> `endtype` specifies how the signal end points are handled. It is
> allowed for `x` = `y` for an in-place filter.

"""
function filter_gaussian(endtype, alpha, order, x, y, w)
    ccall((:gsl_filter_gaussian, libgsl), Cint, (gsl_filter_end_t, Cdouble, Csize_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_gaussian_workspace}), endtype, alpha, order, x, y, w)
end

@doc md"""
    filter_gaussian_kernel(alpha, order, normalize, kernel) -> Cint

C signature:
`int gsl_filter_gaussian_kernel(const double alpha, const size_t order, const int normalize, gsl_vector * kernel)`

GSL documentation:

### `int gsl_filter_gaussian_kernel(const double alpha, const size_t order, const int normalize, gsl_vector * kernel)`

> This function constructs a Gaussian kernel parameterized by `alpha`
> and stores the output in `kernel`. The parameter `order` specifies the
> derivative order, with `0` corresponding to a Gaussian, `1`
> corresponding to a first derivative Gaussian, and so on. If
> `normalize` is set to `1`, then the kernel will be normalized to sum
> to one on output. If `normalize` is set to `0`, no normalization is
> performed.

"""
function filter_gaussian_kernel(alpha, order, normalize, kernel)
    ccall((:gsl_filter_gaussian_kernel, libgsl), Cint, (Cdouble, Csize_t, Cint, Ref{gsl_vector}), alpha, order, normalize, kernel)
end

@doc md"""
    filter_median_alloc(K) -> Ptr{gsl_filter_median_workspace}

C signature:
`gsl_filter_median_workspace *gsl_filter_median_alloc(const size_t K)`

GSL documentation:

### `gsl_filter_median_workspace * gsl_filter_median_alloc(const size_t K)`

> This function initializes a workspace for standard median filtering
> using a symmetric centered moving window of size `K`. Here,
> $H = K / 2$. If $K$ is even, it is rounded up to the next odd integer
> to ensure a symmetric window. The size of the workspace is $O(7K)$.

"""
function filter_median_alloc(K)
    ccall((:gsl_filter_median_alloc, libgsl), Ptr{gsl_filter_median_workspace}, (Csize_t,), K)
end

@doc md"""
    filter_median_free(w) -> Cvoid

C signature:
`void gsl_filter_median_free(gsl_filter_median_workspace * w)`

GSL documentation:

### `void gsl_filter_median_free(gsl_filter_median_workspace * w)`

> This function frees the memory associated with `w`.

"""
function filter_median_free(w)
    ccall((:gsl_filter_median_free, libgsl), Cvoid, (Ptr{gsl_filter_median_workspace},), w)
end

@doc md"""
    filter_median(endtype, x, y, w) -> Cint

C signature:
`int gsl_filter_median(const gsl_filter_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_filter_median_workspace * w)`

GSL documentation:

### `int gsl_filter_median(const gsl_filter_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_filter_median_workspace * w)`

> This function applies a standard median filter to the input `x`,
> storing the output in `y`. The parameter `endtype` specifies how the
> signal end points are handled. It is allowed to have `x` = `y` for an
> in-place filter.

"""
function filter_median(endtype, x, y, w)
    ccall((:gsl_filter_median, libgsl), Cint, (gsl_filter_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_median_workspace}), endtype, x, y, w)
end

@doc md"""
    filter_rmedian_alloc(K) -> Ptr{gsl_filter_rmedian_workspace}

C signature:
`gsl_filter_rmedian_workspace *gsl_filter_rmedian_alloc(const size_t K)`

GSL documentation:

### `gsl_filter_rmedian_workspace * gsl_filter_rmedian_alloc(const size_t K)`

> This function initializes a workspace for recursive median filtering
> using a symmetric centered moving window of size `K`. Here,
> $H = K / 2$. If $K$ is even, it is rounded up to the next odd integer
> to ensure a symmetric window. The size of the workspace is $O(K)$.

"""
function filter_rmedian_alloc(K)
    ccall((:gsl_filter_rmedian_alloc, libgsl), Ptr{gsl_filter_rmedian_workspace}, (Csize_t,), K)
end

@doc md"""
    filter_rmedian_free(w) -> Cvoid

C signature:
`void gsl_filter_rmedian_free(gsl_filter_rmedian_workspace * w)`

GSL documentation:

### `void gsl_filter_rmedian_free(gsl_filter_rmedian_workspace * w)`

> This function frees the memory associated with `w`.

"""
function filter_rmedian_free(w)
    ccall((:gsl_filter_rmedian_free, libgsl), Cvoid, (Ptr{gsl_filter_rmedian_workspace},), w)
end

@doc md"""
    filter_rmedian(arg0, x, y, w) -> Cint

C signature:
`int gsl_filter_rmedian(const gsl_filter_end_t, const gsl_vector * x, gsl_vector * y, gsl_filter_rmedian_workspace * w)`

GSL documentation:

### `int gsl_filter_rmedian(const gsl_filter_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_filter_rmedian_workspace * w)`

> This function applies a recursive median filter to the input `x`,
> storing the output in `y`. The parameter `endtype` specifies how the
> signal end points are handled. It is allowed to have `x` = `y` for an
> in-place filter.

"""
function filter_rmedian(arg0, x, y, w)
    ccall((:gsl_filter_rmedian, libgsl), Cint, (gsl_filter_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_rmedian_workspace}), arg0, x, y, w)
end

@doc md"""
    filter_rmedian2(x, y, w) -> Cint

C signature:
`int gsl_filter_rmedian2(const gsl_vector * x, gsl_vector * y, gsl_filter_rmedian_workspace * w)`
"""
function filter_rmedian2(x, y, w)
    ccall((:gsl_filter_rmedian2, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_rmedian_workspace}), x, y, w)
end

@doc md"""
    filter_impulse_alloc(K) -> Ptr{gsl_filter_impulse_workspace}

C signature:
`gsl_filter_impulse_workspace *gsl_filter_impulse_alloc(const size_t K)`

GSL documentation:

### `gsl_filter_impulse_workspace * gsl_filter_impulse_alloc(const size_t K)`

> This function initializes a workspace for impulse detection filtering
> using a symmetric moving window of size `K`. Here, $H = K / 2$. If $K$
> is even, it is rounded up to the next odd integer to ensure a
> symmetric window. The size of the workspace is $O(6K)$.

"""
function filter_impulse_alloc(K)
    ccall((:gsl_filter_impulse_alloc, libgsl), Ptr{gsl_filter_impulse_workspace}, (Csize_t,), K)
end

@doc md"""
    filter_impulse_free(w) -> Cvoid

C signature:
`void gsl_filter_impulse_free(gsl_filter_impulse_workspace * w)`

GSL documentation:

### `void gsl_filter_impulse_free(gsl_filter_impulse_workspace * w)`

> This function frees the memory associated with `w`.

"""
function filter_impulse_free(w)
    ccall((:gsl_filter_impulse_free, libgsl), Cvoid, (Ptr{gsl_filter_impulse_workspace},), w)
end

@doc md"""
    filter_impulse(endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w) -> Cint

C signature:
`int gsl_filter_impulse(const gsl_filter_end_t endtype, const gsl_filter_scale_t scale_type, const double t, const gsl_vector * x, gsl_vector * y, gsl_vector * xmedian, gsl_vector * xsigma, size_t * noutlier, gsl_vector_int * ioutlier, gsl_filter_impulse_workspace * w)`

GSL documentation:

### `int gsl_filter_impulse(const gsl_filter_end_t endtype, const gsl_filter_scale_t scale_type, const double t, const gsl_vector * x, gsl_vector * y, gsl_vector * xmedian, gsl_vector * xsigma, size_t * noutlier, gsl_vector_int * ioutlier, gsl_filter_impulse_workspace * w)`

> These functions apply an impulse detection filter to the input vector
> `x`, storing the filtered output in `y`. The tuning parameter $t$ is
> provided in `t`. The window medians $m_i$ are stored in `xmedian` and
> the $S_i$ are stored in `xsigma` on output. The number of outliers
> detected is stored in `noutlier` on output, while the locations of
> flagged outliers are stored in the boolean array `ioutlier`. The input
> `ioutlier` may be `NULL` if not desired. It is allowed to have `x` =
> `y` for an in-place filter.

"""
function filter_impulse(endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w)
    ccall((:gsl_filter_impulse, libgsl), Cint, (gsl_filter_end_t, gsl_filter_scale_t, Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}, Ref{gsl_vector_int}, Ref{gsl_filter_impulse_workspace}), endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w)
end

