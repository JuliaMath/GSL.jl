#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_wavelet2d.h ##########################################################


@doc md"""
    wavelet2d_transform(w, data, tda, size1, size2, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_transform (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

GSL documentation:

### `int gsl_wavelet2d_transform (const gsl_wavelet * w, double * data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

> int gsl\_wavelet2d\_transform\_forward (const gsl\_wavelet \* w,
> double \* data, size\_t tda, size\_t size1, size\_t size2,
> gsl\_wavelet\_workspace \* work) int
> gsl\_wavelet2d\_transform\_inverse (const gsl\_wavelet \* w, double \*
> data, size\_t tda, size\_t size1, size\_t size2,
> gsl\_wavelet\_workspace \* work)

> These functions compute two-dimensional in-place forward and inverse
> discrete wavelet transforms in standard form on the array `data`
> stored in row-major form with dimensions `size1` and `size2` and
> physical row length `tda`. The dimensions must be equal (square
> matrix) and are restricted to powers of two. For the `transform`
> version of the function the argument `dir` can be either `forward`
> ($+1$) or `backward` ($-1$). A workspace `work` of the appropriate
> size must be provided. On exit, the appropriate elements of the array
> `data` are replaced by their two-dimensional wavelet transform.
>
> The functions return a status of `GSL_SUCCESS` upon successful
> completion. `GSL_EINVAL` is returned if `size1` and `size2` are not
> equal and integer powers of 2, or if insufficient workspace is
> provided.

"""
function wavelet2d_transform(w, data, tda, size1, size2, dir, work)
    ccall((:gsl_wavelet2d_transform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, dir, work)
end

@doc md"""
    wavelet2d_transform_forward(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_forward (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function wavelet2d_transform_forward(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_transform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

@doc md"""
    wavelet2d_transform_inverse(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_inverse (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function wavelet2d_transform_inverse(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_transform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

@doc md"""
    wavelet2d_nstransform(w, data, tda, size1, size2, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

GSL documentation:

### `int gsl_wavelet2d_nstransform (const gsl_wavelet * w, double * data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

> int gsl\_wavelet2d\_nstransform\_forward (const gsl\_wavelet \* w,
> double \* data, size\_t tda, size\_t size1, size\_t size2,
> gsl\_wavelet\_workspace \* work) int
> gsl\_wavelet2d\_nstransform\_inverse (const gsl\_wavelet \* w, double
> \* data, size\_t tda, size\_t size1, size\_t size2,
> gsl\_wavelet\_workspace \* work)

> These functions compute the two-dimensional wavelet transform in
> non-standard form.

"""
function wavelet2d_nstransform(w, data, tda, size1, size2, dir, work)
    ccall((:gsl_wavelet2d_nstransform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, dir, work)
end

@doc md"""
    wavelet2d_nstransform_forward(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_forward (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function wavelet2d_nstransform_forward(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_nstransform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

@doc md"""
    wavelet2d_nstransform_inverse(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_inverse (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function wavelet2d_nstransform_inverse(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_nstransform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

@doc md"""
    wavelet2d_transform_matrix(w, a, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

GSL documentation:

### `int gsl_wavelet2d_transform_matrix (const gsl_wavelet * w, gsl_matrix * m, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

> int gsl\_wavelet2d\_transform\_matrix\_forward (const gsl\_wavelet \*
> w, gsl\_matrix \* m, gsl\_wavelet\_workspace \* work) int
> gsl\_wavelet2d\_transform\_matrix\_inverse (const gsl\_wavelet \* w,
> gsl\_matrix \* m, gsl\_wavelet\_workspace \* work)

> These functions compute the two-dimensional in-place wavelet transform
> on a matrix `m`.

"""
function wavelet2d_transform_matrix(w, a, dir, work)
    ccall((:gsl_wavelet2d_transform_matrix, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, a, dir, work)
end

@doc md"""
    wavelet2d_transform_matrix_forward(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix_forward (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function wavelet2d_transform_matrix_forward(w, a, work)
    ccall((:gsl_wavelet2d_transform_matrix_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

@doc md"""
    wavelet2d_transform_matrix_inverse(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix_inverse (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function wavelet2d_transform_matrix_inverse(w, a, work)
    ccall((:gsl_wavelet2d_transform_matrix_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

@doc md"""
    wavelet2d_nstransform_matrix(w, a, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

GSL documentation:

### `int gsl_wavelet2d_nstransform_matrix (const gsl_wavelet * w, gsl_matrix * m, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`

> int gsl\_wavelet2d\_nstransform\_matrix\_forward (const gsl\_wavelet
> \* w, gsl\_matrix \* m, gsl\_wavelet\_workspace \* work) int
> gsl\_wavelet2d\_nstransform\_matrix\_inverse (const gsl\_wavelet \* w,
> gsl\_matrix \* m, gsl\_wavelet\_workspace \* work)

> These functions compute the non-standard form of the two-dimensional
> in-place wavelet transform on a matrix `m`.

"""
function wavelet2d_nstransform_matrix(w, a, dir, work)
    ccall((:gsl_wavelet2d_nstransform_matrix, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, a, dir, work)
end

@doc md"""
    wavelet2d_nstransform_matrix_forward(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix_forward (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function wavelet2d_nstransform_matrix_forward(w, a, work)
    ccall((:gsl_wavelet2d_nstransform_matrix_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

@doc md"""
    wavelet2d_nstransform_matrix_inverse(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix_inverse (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function wavelet2d_nstransform_matrix_inverse(w, a, work)
    ccall((:gsl_wavelet2d_nstransform_matrix_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

