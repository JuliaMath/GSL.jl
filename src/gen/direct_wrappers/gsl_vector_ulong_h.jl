#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_ulong.h #######################################################


@doc md"""
    vector_ulong_alloc(n) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong *gsl_vector_ulong_alloc (const size_t n)`
"""
function vector_ulong_alloc(n)
    ccall((:gsl_vector_ulong_alloc, libgsl), Ptr{gsl_vector_ulong}, (Csize_t,), n)
end

@doc md"""
    vector_ulong_calloc(n) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong *gsl_vector_ulong_calloc (const size_t n)`
"""
function vector_ulong_calloc(n)
    ccall((:gsl_vector_ulong_calloc, libgsl), Ptr{gsl_vector_ulong}, (Csize_t,), n)
end

@doc md"""
    vector_ulong_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong *gsl_vector_ulong_alloc_from_block (gsl_block_ulong * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_ulong_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_ulong_alloc_from_block, libgsl), Ptr{gsl_vector_ulong}, (Ref{gsl_block_ulong}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_ulong_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong *gsl_vector_ulong_alloc_from_vector (gsl_vector_ulong * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_ulong_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_ulong_alloc_from_vector, libgsl), Ptr{gsl_vector_ulong}, (Ref{gsl_vector_ulong}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_ulong_free(v) -> Cvoid

C signature:
`void gsl_vector_ulong_free (gsl_vector_ulong * v)`
"""
function vector_ulong_free(v)
    ccall((:gsl_vector_ulong_free, libgsl), Cvoid, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_view_array(v, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_vector_ulong_view_array (unsigned long *v, size_t n)`
"""
function vector_ulong_view_array(v, n)
    ccall((:gsl_vector_ulong_view_array, libgsl), _gsl_vector_ulong_view, (Ref{Culong}, Csize_t), v, n)
end

@doc md"""
    vector_ulong_view_array_with_stride(base, stride, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_vector_ulong_view_array_with_stride (unsigned long *base, size_t stride, size_t n)`
"""
function vector_ulong_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_ulong_view_array_with_stride, libgsl), _gsl_vector_ulong_view, (Ref{Culong}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_ulong_const_view_array(v, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_vector_ulong_const_view_array (const unsigned long *v, size_t n)`
"""
function vector_ulong_const_view_array(v, n)
    ccall((:gsl_vector_ulong_const_view_array, libgsl), _gsl_vector_ulong_const_view, (Ref{Culong}, Csize_t), v, n)
end

@doc md"""
    vector_ulong_const_view_array_with_stride(base, stride, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_vector_ulong_const_view_array_with_stride (const unsigned long *base, size_t stride, size_t n)`
"""
function vector_ulong_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_ulong_const_view_array_with_stride, libgsl), _gsl_vector_ulong_const_view, (Ref{Culong}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_ulong_subvector(v, i, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_vector_ulong_subvector (gsl_vector_ulong *v, size_t i, size_t n)`
"""
function vector_ulong_subvector(v, i, n)
    ccall((:gsl_vector_ulong_subvector, libgsl), _gsl_vector_ulong_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_ulong_subvector_with_stride(v, i, stride, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_vector_ulong_subvector_with_stride (gsl_vector_ulong *v, size_t i, size_t stride, size_t n)`
"""
function vector_ulong_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_ulong_subvector_with_stride, libgsl), _gsl_vector_ulong_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_ulong_const_subvector(v, i, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_vector_ulong_const_subvector (const gsl_vector_ulong *v, size_t i, size_t n)`
"""
function vector_ulong_const_subvector(v, i, n)
    ccall((:gsl_vector_ulong_const_subvector, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_ulong_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_vector_ulong_const_subvector_with_stride (const gsl_vector_ulong *v, size_t i, size_t stride, size_t n)`
"""
function vector_ulong_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_ulong_const_subvector_with_stride, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_ulong_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_ulong_set_zero (gsl_vector_ulong * v)`
"""
function vector_ulong_set_zero(v)
    ccall((:gsl_vector_ulong_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_ulong_set_all (gsl_vector_ulong * v, unsigned long x)`
"""
function vector_ulong_set_all(v, x)
    ccall((:gsl_vector_ulong_set_all, libgsl), Cvoid, (Ref{gsl_vector_ulong}, Culong), v, x)
end

@doc md"""
    vector_ulong_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_ulong_set_basis (gsl_vector_ulong * v, size_t i)`
"""
function vector_ulong_set_basis(v, i)
    ccall((:gsl_vector_ulong_set_basis, libgsl), Cint, (Ref{gsl_vector_ulong}, Csize_t), v, i)
end

@doc md"""
    vector_ulong_fread(stream, v) -> Cint

C signature:
`int gsl_vector_ulong_fread (FILE * stream, gsl_vector_ulong * v)`
"""
function vector_ulong_fread(stream, v)
    ccall((:gsl_vector_ulong_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ulong}), stream, v)
end

@doc md"""
    vector_ulong_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_ulong_fwrite (FILE * stream, const gsl_vector_ulong * v)`
"""
function vector_ulong_fwrite(stream, v)
    ccall((:gsl_vector_ulong_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ulong}), stream, v)
end

@doc md"""
    vector_ulong_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_ulong_fscanf (FILE * stream, gsl_vector_ulong * v)`
"""
function vector_ulong_fscanf(stream, v)
    ccall((:gsl_vector_ulong_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ulong}), stream, v)
end

@doc md"""
    vector_ulong_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_ulong_fprintf (FILE * stream, const gsl_vector_ulong * v, const char *format)`
"""
function vector_ulong_fprintf(stream, v, format)
    ccall((:gsl_vector_ulong_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ulong}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_ulong_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_ulong_memcpy (gsl_vector_ulong * dest, const gsl_vector_ulong * src)`
"""
function vector_ulong_memcpy(dest, src)
    ccall((:gsl_vector_ulong_memcpy, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), dest, src)
end

@doc md"""
    vector_ulong_reverse(v) -> Cint

C signature:
`int gsl_vector_ulong_reverse (gsl_vector_ulong * v)`
"""
function vector_ulong_reverse(v)
    ccall((:gsl_vector_ulong_reverse, libgsl), Cint, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_swap(v, w) -> Cint

C signature:
`int gsl_vector_ulong_swap (gsl_vector_ulong * v, gsl_vector_ulong * w)`
"""
function vector_ulong_swap(v, w)
    ccall((:gsl_vector_ulong_swap, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), v, w)
end

@doc md"""
    vector_ulong_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_ulong_swap_elements (gsl_vector_ulong * v, const size_t i, const size_t j)`
"""
function vector_ulong_swap_elements(v, i, j)
    ccall((:gsl_vector_ulong_swap_elements, libgsl), Cint, (Ref{gsl_vector_ulong}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_ulong_max(v) -> Culong

C signature:
`unsigned long gsl_vector_ulong_max (const gsl_vector_ulong * v)`
"""
function vector_ulong_max(v)
    ccall((:gsl_vector_ulong_max, libgsl), Culong, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_min(v) -> Culong

C signature:
`unsigned long gsl_vector_ulong_min (const gsl_vector_ulong * v)`
"""
function vector_ulong_min(v)
    ccall((:gsl_vector_ulong_min, libgsl), Culong, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_ulong_minmax (const gsl_vector_ulong * v, unsigned long * min_out, unsigned long * max_out)`
"""
function vector_ulong_minmax(v, min_out, max_out)
    ccall((:gsl_vector_ulong_minmax, libgsl), Cvoid, (Ref{gsl_vector_ulong}, Ref{Culong}, Ref{Culong}), v, min_out, max_out)
end

@doc md"""
    vector_ulong_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_ulong_max_index (const gsl_vector_ulong * v)`
"""
function vector_ulong_max_index(v)
    ccall((:gsl_vector_ulong_max_index, libgsl), Csize_t, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_ulong_min_index (const gsl_vector_ulong * v)`
"""
function vector_ulong_min_index(v)
    ccall((:gsl_vector_ulong_min_index, libgsl), Csize_t, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_ulong_minmax_index (const gsl_vector_ulong * v, size_t * imin, size_t * imax)`
"""
function vector_ulong_minmax_index(v, imin, imax)
    ccall((:gsl_vector_ulong_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_ulong}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_ulong_add(a, b) -> Cint

C signature:
`int gsl_vector_ulong_add (gsl_vector_ulong * a, const gsl_vector_ulong * b)`
"""
function vector_ulong_add(a, b)
    ccall((:gsl_vector_ulong_add, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), a, b)
end

@doc md"""
    vector_ulong_sub(a, b) -> Cint

C signature:
`int gsl_vector_ulong_sub (gsl_vector_ulong * a, const gsl_vector_ulong * b)`
"""
function vector_ulong_sub(a, b)
    ccall((:gsl_vector_ulong_sub, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), a, b)
end

@doc md"""
    vector_ulong_mul(a, b) -> Cint

C signature:
`int gsl_vector_ulong_mul (gsl_vector_ulong * a, const gsl_vector_ulong * b)`
"""
function vector_ulong_mul(a, b)
    ccall((:gsl_vector_ulong_mul, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), a, b)
end

@doc md"""
    vector_ulong_div(a, b) -> Cint

C signature:
`int gsl_vector_ulong_div (gsl_vector_ulong * a, const gsl_vector_ulong * b)`
"""
function vector_ulong_div(a, b)
    ccall((:gsl_vector_ulong_div, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), a, b)
end

@doc md"""
    vector_ulong_scale(a, x) -> Cint

C signature:
`int gsl_vector_ulong_scale (gsl_vector_ulong * a, const unsigned long x)`
"""
function vector_ulong_scale(a, x)
    ccall((:gsl_vector_ulong_scale, libgsl), Cint, (Ref{gsl_vector_ulong}, Culong), a, x)
end

@doc md"""
    vector_ulong_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_ulong_add_constant (gsl_vector_ulong * a, const double x)`
"""
function vector_ulong_add_constant(a, x)
    ccall((:gsl_vector_ulong_add_constant, libgsl), Cint, (Ref{gsl_vector_ulong}, Cdouble), a, x)
end

@doc md"""
    vector_ulong_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_ulong_axpby (const unsigned long alpha, const gsl_vector_ulong * x, const unsigned long beta, gsl_vector_ulong * y)`
"""
function vector_ulong_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_ulong_axpby, libgsl), Cint, (Culong, Ref{gsl_vector_ulong}, Culong, Ref{gsl_vector_ulong}), alpha, x, beta, y)
end

@doc md"""
    vector_ulong_equal(u, v) -> Cint

C signature:
`int gsl_vector_ulong_equal (const gsl_vector_ulong * u, const gsl_vector_ulong * v)`
"""
function vector_ulong_equal(u, v)
    ccall((:gsl_vector_ulong_equal, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_vector_ulong}), u, v)
end

@doc md"""
    vector_ulong_isnull(v) -> Cint

C signature:
`int gsl_vector_ulong_isnull (const gsl_vector_ulong * v)`
"""
function vector_ulong_isnull(v)
    ccall((:gsl_vector_ulong_isnull, libgsl), Cint, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_ispos(v) -> Cint

C signature:
`int gsl_vector_ulong_ispos (const gsl_vector_ulong * v)`
"""
function vector_ulong_ispos(v)
    ccall((:gsl_vector_ulong_ispos, libgsl), Cint, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_isneg(v) -> Cint

C signature:
`int gsl_vector_ulong_isneg (const gsl_vector_ulong * v)`
"""
function vector_ulong_isneg(v)
    ccall((:gsl_vector_ulong_isneg, libgsl), Cint, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_isnonneg(v) -> Cint

C signature:
`int gsl_vector_ulong_isnonneg (const gsl_vector_ulong * v)`
"""
function vector_ulong_isnonneg(v)
    ccall((:gsl_vector_ulong_isnonneg, libgsl), Cint, (Ptr{gsl_vector_ulong},), v)
end

@doc md"""
    vector_ulong_get(v, i) -> Culong

C signature:
`unsigned long gsl_vector_ulong_get (const gsl_vector_ulong * v, const size_t i)`
"""
function vector_ulong_get(v, i)
    ccall((:gsl_vector_ulong_get, libgsl), Culong, (Ref{gsl_vector_ulong}, Csize_t), v, i)
end

@doc md"""
    vector_ulong_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_ulong_set (gsl_vector_ulong * v, const size_t i, unsigned long x)`
"""
function vector_ulong_set(v, i, x)
    ccall((:gsl_vector_ulong_set, libgsl), Cvoid, (Ref{gsl_vector_ulong}, Csize_t, Culong), v, i, x)
end

@doc md"""
    vector_ulong_ptr(v, i) -> Ptr{Culong}

C signature:
`unsigned long * gsl_vector_ulong_ptr (gsl_vector_ulong * v, const size_t i)`
"""
function vector_ulong_ptr(v, i)
    ccall((:gsl_vector_ulong_ptr, libgsl), Ptr{Culong}, (Ref{gsl_vector_ulong}, Csize_t), v, i)
end

@doc md"""
    vector_ulong_const_ptr(v, i) -> Ptr{Culong}

C signature:
`const unsigned long * gsl_vector_ulong_const_ptr (const gsl_vector_ulong * v, const size_t i)`
"""
function vector_ulong_const_ptr(v, i)
    ccall((:gsl_vector_ulong_const_ptr, libgsl), Ptr{Culong}, (Ref{gsl_vector_ulong}, Csize_t), v, i)
end

