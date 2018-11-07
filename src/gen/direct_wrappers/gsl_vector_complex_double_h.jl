#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_complex_double.h ##############################################


@doc md"""
    vector_complex_alloc(n) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex *gsl_vector_complex_alloc (const size_t n)`
"""
function vector_complex_alloc(n)
    ccall((:gsl_vector_complex_alloc, libgsl), Ptr{gsl_vector_complex}, (Csize_t,), n)
end

@doc md"""
    vector_complex_calloc(n) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex *gsl_vector_complex_calloc (const size_t n)`
"""
function vector_complex_calloc(n)
    ccall((:gsl_vector_complex_calloc, libgsl), Ptr{gsl_vector_complex}, (Csize_t,), n)
end

@doc md"""
    vector_complex_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex * gsl_vector_complex_alloc_from_block (gsl_block_complex * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_complex_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_complex_alloc_from_block, libgsl), Ptr{gsl_vector_complex}, (Ref{gsl_block_complex}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_complex_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex * gsl_vector_complex_alloc_from_vector (gsl_vector_complex * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_complex_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_complex_alloc_from_vector, libgsl), Ptr{gsl_vector_complex}, (Ref{gsl_vector_complex}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_complex_free(v) -> Cvoid

C signature:
`void gsl_vector_complex_free (gsl_vector_complex * v)`
"""
function vector_complex_free(v)
    ccall((:gsl_vector_complex_free, libgsl), Cvoid, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_view_array(base, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_vector_complex_view_array (double *base, size_t n)`
"""
function vector_complex_view_array(base, n)
    ccall((:gsl_vector_complex_view_array, libgsl), _gsl_vector_complex_view, (Ref{Cdouble}, Csize_t), base, n)
end

@doc md"""
    vector_complex_view_array_with_stride(base, stride, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_vector_complex_view_array_with_stride (double *base, size_t stride, size_t n)`
"""
function vector_complex_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_complex_view_array_with_stride, libgsl), _gsl_vector_complex_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_complex_const_view_array(base, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_vector_complex_const_view_array (const double *base, size_t n)`
"""
function vector_complex_const_view_array(base, n)
    ccall((:gsl_vector_complex_const_view_array, libgsl), _gsl_vector_complex_const_view, (Ref{Cdouble}, Csize_t), base, n)
end

@doc md"""
    vector_complex_const_view_array_with_stride(base, stride, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_vector_complex_const_view_array_with_stride (const double *base, size_t stride, size_t n)`
"""
function vector_complex_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_complex_const_view_array_with_stride, libgsl), _gsl_vector_complex_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_complex_subvector(base, i, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_vector_complex_subvector (gsl_vector_complex *base, size_t i, size_t n)`
"""
function vector_complex_subvector(base, i, n)
    ccall((:gsl_vector_complex_subvector, libgsl), _gsl_vector_complex_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t), base, i, n)
end

@doc md"""
    vector_complex_subvector_with_stride(v, i, stride, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_vector_complex_subvector_with_stride (gsl_vector_complex *v, size_t i, size_t stride, size_t n)`
"""
function vector_complex_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_complex_subvector_with_stride, libgsl), _gsl_vector_complex_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_complex_const_subvector(base, i, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_vector_complex_const_subvector (const gsl_vector_complex *base, size_t i, size_t n)`
"""
function vector_complex_const_subvector(base, i, n)
    ccall((:gsl_vector_complex_const_subvector, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t), base, i, n)
end

@doc md"""
    vector_complex_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_vector_complex_const_subvector_with_stride (const gsl_vector_complex *v, size_t i, size_t stride, size_t n)`
"""
function vector_complex_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_complex_const_subvector_with_stride, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_complex_real(v) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_complex_real (gsl_vector_complex *v)`

GSL documentation:

### `gsl_vector_view gsl_vector_complex_real (gsl_vector_complex * v)`

> gsl\_vector\_const\_view gsl\_vector\_complex\_const\_real (const
> gsl\_vector\_complex \* v)

> These functions return a vector view of the real parts of the complex
> vector `v`.
>
> The function `gsl_vector_complex_const_real` is equivalent to
> `gsl_vector_complex_real` but can be used for vectors which are
> declared `const`.

"""
function vector_complex_real(v)
    ccall((:gsl_vector_complex_real, libgsl), _gsl_vector_view, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_imag(v) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_complex_imag (gsl_vector_complex *v)`

GSL documentation:

### `gsl_vector_view gsl_vector_complex_imag (gsl_vector_complex * v)`

> gsl\_vector\_const\_view gsl\_vector\_complex\_const\_imag (const
> gsl\_vector\_complex \* v)

> These functions return a vector view of the imaginary parts of the
> complex vector `v`.
>
> The function `gsl_vector_complex_const_imag` is equivalent to
> `gsl_vector_complex_imag` but can be used for vectors which are
> declared `const`.

"""
function vector_complex_imag(v)
    ccall((:gsl_vector_complex_imag, libgsl), _gsl_vector_view, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_const_real(v) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_complex_const_real (const gsl_vector_complex *v)`
"""
function vector_complex_const_real(v)
    ccall((:gsl_vector_complex_const_real, libgsl), _gsl_vector_const_view, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_const_imag(v) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_complex_const_imag (const gsl_vector_complex *v)`
"""
function vector_complex_const_imag(v)
    ccall((:gsl_vector_complex_const_imag, libgsl), _gsl_vector_const_view, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_complex_set_zero (gsl_vector_complex * v)`
"""
function vector_complex_set_zero(v)
    ccall((:gsl_vector_complex_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_set_all(v, z) -> Cvoid

C signature:
`void gsl_vector_complex_set_all (gsl_vector_complex * v, gsl_complex z)`
"""
function vector_complex_set_all(v, z)
    ccall((:gsl_vector_complex_set_all, libgsl), Cvoid, (Ref{gsl_vector_complex}, gsl_complex), v, z)
end

@doc md"""
    vector_complex_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_complex_set_basis (gsl_vector_complex * v, size_t i)`
"""
function vector_complex_set_basis(v, i)
    ccall((:gsl_vector_complex_set_basis, libgsl), Cint, (Ref{gsl_vector_complex}, Csize_t), v, i)
end

@doc md"""
    vector_complex_fread(stream, v) -> Cint

C signature:
`int gsl_vector_complex_fread (FILE * stream, gsl_vector_complex * v)`
"""
function vector_complex_fread(stream, v)
    ccall((:gsl_vector_complex_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_complex}), stream, v)
end

@doc md"""
    vector_complex_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_complex_fwrite (FILE * stream, const gsl_vector_complex * v)`
"""
function vector_complex_fwrite(stream, v)
    ccall((:gsl_vector_complex_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_complex}), stream, v)
end

@doc md"""
    vector_complex_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_complex_fscanf (FILE * stream, gsl_vector_complex * v)`
"""
function vector_complex_fscanf(stream, v)
    ccall((:gsl_vector_complex_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_complex}), stream, v)
end

@doc md"""
    vector_complex_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_complex_fprintf (FILE * stream, const gsl_vector_complex * v, const char *format)`
"""
function vector_complex_fprintf(stream, v, format)
    ccall((:gsl_vector_complex_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_complex}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_complex_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_complex_memcpy (gsl_vector_complex * dest, const gsl_vector_complex * src)`
"""
function vector_complex_memcpy(dest, src)
    ccall((:gsl_vector_complex_memcpy, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), dest, src)
end

@doc md"""
    vector_complex_reverse(v) -> Cint

C signature:
`int gsl_vector_complex_reverse (gsl_vector_complex * v)`
"""
function vector_complex_reverse(v)
    ccall((:gsl_vector_complex_reverse, libgsl), Cint, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_swap(v, w) -> Cint

C signature:
`int gsl_vector_complex_swap (gsl_vector_complex * v, gsl_vector_complex * w)`
"""
function vector_complex_swap(v, w)
    ccall((:gsl_vector_complex_swap, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), v, w)
end

@doc md"""
    vector_complex_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_complex_swap_elements (gsl_vector_complex * v, const size_t i, const size_t j)`
"""
function vector_complex_swap_elements(v, i, j)
    ccall((:gsl_vector_complex_swap_elements, libgsl), Cint, (Ref{gsl_vector_complex}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_complex_equal(u, v) -> Cint

C signature:
`int gsl_vector_complex_equal (const gsl_vector_complex * u, const gsl_vector_complex * v)`
"""
function vector_complex_equal(u, v)
    ccall((:gsl_vector_complex_equal, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), u, v)
end

@doc md"""
    vector_complex_isnull(v) -> Cint

C signature:
`int gsl_vector_complex_isnull (const gsl_vector_complex * v)`
"""
function vector_complex_isnull(v)
    ccall((:gsl_vector_complex_isnull, libgsl), Cint, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_ispos(v) -> Cint

C signature:
`int gsl_vector_complex_ispos (const gsl_vector_complex * v)`
"""
function vector_complex_ispos(v)
    ccall((:gsl_vector_complex_ispos, libgsl), Cint, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_isneg(v) -> Cint

C signature:
`int gsl_vector_complex_isneg (const gsl_vector_complex * v)`
"""
function vector_complex_isneg(v)
    ccall((:gsl_vector_complex_isneg, libgsl), Cint, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_isnonneg(v) -> Cint

C signature:
`int gsl_vector_complex_isnonneg (const gsl_vector_complex * v)`
"""
function vector_complex_isnonneg(v)
    ccall((:gsl_vector_complex_isnonneg, libgsl), Cint, (Ptr{gsl_vector_complex},), v)
end

@doc md"""
    vector_complex_add(a, b) -> Cint

C signature:
`int gsl_vector_complex_add (gsl_vector_complex * a, const gsl_vector_complex * b)`
"""
function vector_complex_add(a, b)
    ccall((:gsl_vector_complex_add, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), a, b)
end

@doc md"""
    vector_complex_sub(a, b) -> Cint

C signature:
`int gsl_vector_complex_sub (gsl_vector_complex * a, const gsl_vector_complex * b)`
"""
function vector_complex_sub(a, b)
    ccall((:gsl_vector_complex_sub, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), a, b)
end

@doc md"""
    vector_complex_mul(a, b) -> Cint

C signature:
`int gsl_vector_complex_mul (gsl_vector_complex * a, const gsl_vector_complex * b)`
"""
function vector_complex_mul(a, b)
    ccall((:gsl_vector_complex_mul, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), a, b)
end

@doc md"""
    vector_complex_div(a, b) -> Cint

C signature:
`int gsl_vector_complex_div (gsl_vector_complex * a, const gsl_vector_complex * b)`
"""
function vector_complex_div(a, b)
    ccall((:gsl_vector_complex_div, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), a, b)
end

@doc md"""
    vector_complex_scale(a, x) -> Cint

C signature:
`int gsl_vector_complex_scale (gsl_vector_complex * a, const gsl_complex x)`
"""
function vector_complex_scale(a, x)
    ccall((:gsl_vector_complex_scale, libgsl), Cint, (Ref{gsl_vector_complex}, gsl_complex), a, x)
end

@doc md"""
    vector_complex_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_complex_add_constant (gsl_vector_complex * a, const gsl_complex x)`
"""
function vector_complex_add_constant(a, x)
    ccall((:gsl_vector_complex_add_constant, libgsl), Cint, (Ref{gsl_vector_complex}, gsl_complex), a, x)
end

@doc md"""
    vector_complex_get(v, i) -> gsl_complex

C signature:
`gsl_complex gsl_vector_complex_get (const gsl_vector_complex * v, const size_t i)`
"""
function vector_complex_get(v, i)
    ccall((:gsl_vector_complex_get, libgsl), gsl_complex, (Ref{gsl_vector_complex}, Csize_t), v, i)
end

@doc md"""
    vector_complex_set(v, i, z) -> Cvoid

C signature:
`void gsl_vector_complex_set (gsl_vector_complex * v, const size_t i, gsl_complex z)`
"""
function vector_complex_set(v, i, z)
    ccall((:gsl_vector_complex_set, libgsl), Cvoid, (Ref{gsl_vector_complex}, Csize_t, gsl_complex), v, i, z)
end

@doc md"""
    vector_complex_ptr(v, i) -> Ptr{gsl_complex}

C signature:
`gsl_complex *gsl_vector_complex_ptr (gsl_vector_complex * v, const size_t i)`
"""
function vector_complex_ptr(v, i)
    ccall((:gsl_vector_complex_ptr, libgsl), Ptr{gsl_complex}, (Ref{gsl_vector_complex}, Csize_t), v, i)
end

@doc md"""
    vector_complex_const_ptr(v, i) -> Ptr{gsl_complex}

C signature:
`const gsl_complex *gsl_vector_complex_const_ptr (const gsl_vector_complex * v, const size_t i)`
"""
function vector_complex_const_ptr(v, i)
    ccall((:gsl_vector_complex_const_ptr, libgsl), Ptr{gsl_complex}, (Ref{gsl_vector_complex}, Csize_t), v, i)
end

