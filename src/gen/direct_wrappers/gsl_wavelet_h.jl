#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_wavelet.h ############################################################


@doc md"""
    wavelet_alloc(T, k) -> Ptr{gsl_wavelet}

C signature:
`gsl_wavelet *gsl_wavelet_alloc (const gsl_wavelet_type * T, size_t k)`

GSL documentation:

### `gsl_wavelet * gsl_wavelet_alloc (const gsl_wavelet_type * T, size_t k)`

> This function allocates and initializes a wavelet object of type `T`.
> The parameter `k` selects the specific member of the wavelet family. A
> null pointer is returned if insufficient memory is available or if a
> unsupported member is selected.

The following wavelet types are implemented:

"""
function wavelet_alloc(T, k)
    ccall((:gsl_wavelet_alloc, libgsl), Ptr{gsl_wavelet}, (Ref{gsl_wavelet_type}, Csize_t), T, k)
end

@doc md"""
    wavelet_free(w) -> Cvoid

C signature:
`void gsl_wavelet_free (gsl_wavelet * w)`

GSL documentation:

### `void gsl_wavelet_free (gsl_wavelet * w)`

> This function frees the wavelet object `w`.

"""
function wavelet_free(w)
    ccall((:gsl_wavelet_free, libgsl), Cvoid, (Ptr{gsl_wavelet},), w)
end

@doc md"""
    wavelet_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_wavelet_name (const gsl_wavelet * w)`

GSL documentation:

### `const char * gsl_wavelet_name (const gsl_wavelet * w)`

> This function returns a pointer to the name of the wavelet family for
> `w`.

"""
function wavelet_name(w)
    ccall((:gsl_wavelet_name, libgsl), Ptr{Cchar}, (Ptr{gsl_wavelet},), w)
end

@doc md"""
    wavelet_workspace_alloc(n) -> Ptr{gsl_wavelet_workspace}

C signature:
`gsl_wavelet_workspace *gsl_wavelet_workspace_alloc (size_t n)`

GSL documentation:

### `gsl_wavelet_workspace * gsl_wavelet_workspace_alloc (size_t n)`

> This function allocates a workspace for the discrete wavelet
> transform. To perform a one-dimensional transform on `n` elements, a
> workspace of size `n` must be provided. For two-dimensional transforms
> of `n`-by-`n` matrices it is sufficient to allocate a workspace of
> size `n`, since the transform operates on individual rows and columns.
> A null pointer is returned if insufficient memory is available.

"""
function wavelet_workspace_alloc(n)
    ccall((:gsl_wavelet_workspace_alloc, libgsl), Ptr{gsl_wavelet_workspace}, (Csize_t,), n)
end

@doc md"""
    wavelet_workspace_free(work) -> Cvoid

C signature:
`void gsl_wavelet_workspace_free (gsl_wavelet_workspace * work)`

GSL documentation:

### `void gsl_wavelet_workspace_free (gsl_wavelet_workspace * work)`

> This function frees the allocated workspace `work`.

"""
function wavelet_workspace_free(work)
    ccall((:gsl_wavelet_workspace_free, libgsl), Cvoid, (Ptr{gsl_wavelet_workspace},), work)
end

@doc md"""
    wavelet_transform(w, data, stride, n, dir, work) -> Cint

C signature:
`int gsl_wavelet_transform (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

GSL documentation:

### `int gsl_wavelet_transform (const gsl_wavelet * w, double * data, size_t stride, size_t n, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

> int gsl\_wavelet\_transform\_forward (const gsl\_wavelet \* w, double
> \* data, size\_t stride, size\_t n, gsl\_wavelet\_workspace \* work)
> int gsl\_wavelet\_transform\_inverse (const gsl\_wavelet \* w, double
> \* data, size\_t stride, size\_t n, gsl\_wavelet\_workspace \* work)

> These functions compute in-place forward and inverse discrete wavelet
> transforms of length `n` with stride `stride` on the array `data`. The
> length of the transform `n` is restricted to powers of two. For the
> `transform` version of the function the argument `dir` can be either
> `forward` ($+1$) or `backward` ($-1$). A workspace `work` of length
> `n` must be provided.
>
> For the forward transform, the elements of the original array are
> replaced by the discrete wavelet transform $f_i \rightarrow w_{j,k}$
> in a packed triangular storage layout, where `j` is the index of the
> level $j = 0 \dots J-1$ and `k` is the index of the coefficient within
> each level, $k = 0 \dots 2^j - 1$. The total number of levels is
> $J = \log_2(n)$. The output data has the following form,
>
> $$(s_{-1,0}, d_{0,0}, d_{1,0}, d_{1,1}, d_{2,0},\cdots, d_{j,k},\cdots, d_{J-1,2^{J-1} - 1})$$
>
> where the first element is the smoothing coefficient $s_{-1,0}$,
> followed by the detail coefficients $d_{j,k}$ for each level $j$. The
> backward transform inverts these coefficients to obtain the original
> data.
>
> These functions return a status of `GSL_SUCCESS` upon successful
> completion. `GSL_EINVAL` is returned if `n` is not an integer power of
> 2 or if insufficient workspace is provided.

"""
function wavelet_transform(w, data, stride, n, dir, work)
    ccall((:gsl_wavelet_transform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, stride, n, dir, work)
end

@doc md"""
    wavelet_transform_forward(w, data, stride, n, work) -> Cint

C signature:
`int gsl_wavelet_transform_forward (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_workspace * work)`
"""
function wavelet_transform_forward(w, data, stride, n, work)
    ccall((:gsl_wavelet_transform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, stride, n, work)
end

@doc md"""
    wavelet_transform_inverse(w, data, stride, n, work) -> Cint

C signature:
`int gsl_wavelet_transform_inverse (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_workspace * work)`
"""
function wavelet_transform_inverse(w, data, stride, n, work)
    ccall((:gsl_wavelet_transform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, stride, n, work)
end

