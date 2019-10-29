#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_long.h ########################################################


@doc md"""
    vector_long_alloc(n) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long *gsl_vector_long_alloc (const size_t n)`
"""
function vector_long_alloc(n)
    ccall((:gsl_vector_long_alloc, libgsl), Ptr{gsl_vector_long}, (Csize_t,), n)
end

@doc md"""
    vector_long_calloc(n) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long *gsl_vector_long_calloc (const size_t n)`
"""
function vector_long_calloc(n)
    ccall((:gsl_vector_long_calloc, libgsl), Ptr{gsl_vector_long}, (Csize_t,), n)
end

@doc md"""
    vector_long_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long *gsl_vector_long_alloc_from_block (gsl_block_long * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_long_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_long_alloc_from_block, libgsl), Ptr{gsl_vector_long}, (Ref{gsl_block_long}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_long_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long *gsl_vector_long_alloc_from_vector (gsl_vector_long * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_long_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_long_alloc_from_vector, libgsl), Ptr{gsl_vector_long}, (Ref{gsl_vector_long}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_long_free(v) -> Cvoid

C signature:
`void gsl_vector_long_free (gsl_vector_long * v)`
"""
function vector_long_free(v)
    ccall((:gsl_vector_long_free, libgsl), Cvoid, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_view_array(v, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_vector_long_view_array (long *v, size_t n)`
"""
function vector_long_view_array(v, n)
    ccall((:gsl_vector_long_view_array, libgsl), _gsl_vector_long_view, (Ref{Clong}, Csize_t), v, n)
end

@doc md"""
    vector_long_view_array_with_stride(base, stride, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_vector_long_view_array_with_stride (long *base, size_t stride, size_t n)`
"""
function vector_long_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_long_view_array_with_stride, libgsl), _gsl_vector_long_view, (Ref{Clong}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_long_const_view_array(v, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_vector_long_const_view_array (const long *v, size_t n)`
"""
function vector_long_const_view_array(v, n)
    ccall((:gsl_vector_long_const_view_array, libgsl), _gsl_vector_long_const_view, (Ref{Clong}, Csize_t), v, n)
end

@doc md"""
    vector_long_const_view_array_with_stride(base, stride, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_vector_long_const_view_array_with_stride (const long *base, size_t stride, size_t n)`
"""
function vector_long_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_long_const_view_array_with_stride, libgsl), _gsl_vector_long_const_view, (Ref{Clong}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_long_subvector(v, i, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_vector_long_subvector (gsl_vector_long *v, size_t i, size_t n)`
"""
function vector_long_subvector(v, i, n)
    ccall((:gsl_vector_long_subvector, libgsl), _gsl_vector_long_view, (Ref{gsl_vector_long}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_long_subvector_with_stride(v, i, stride, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_vector_long_subvector_with_stride (gsl_vector_long *v, size_t i, size_t stride, size_t n)`
"""
function vector_long_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_long_subvector_with_stride, libgsl), _gsl_vector_long_view, (Ref{gsl_vector_long}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_long_const_subvector(v, i, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_vector_long_const_subvector (const gsl_vector_long *v, size_t i, size_t n)`
"""
function vector_long_const_subvector(v, i, n)
    ccall((:gsl_vector_long_const_subvector, libgsl), _gsl_vector_long_const_view, (Ref{gsl_vector_long}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_long_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_vector_long_const_subvector_with_stride (const gsl_vector_long *v, size_t i, size_t stride, size_t n)`
"""
function vector_long_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_long_const_subvector_with_stride, libgsl), _gsl_vector_long_const_view, (Ref{gsl_vector_long}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_long_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_long_set_zero (gsl_vector_long * v)`
"""
function vector_long_set_zero(v)
    ccall((:gsl_vector_long_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_long_set_all (gsl_vector_long * v, long x)`
"""
function vector_long_set_all(v, x)
    ccall((:gsl_vector_long_set_all, libgsl), Cvoid, (Ref{gsl_vector_long}, Clong), v, x)
end

@doc md"""
    vector_long_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_long_set_basis (gsl_vector_long * v, size_t i)`
"""
function vector_long_set_basis(v, i)
    ccall((:gsl_vector_long_set_basis, libgsl), Cint, (Ref{gsl_vector_long}, Csize_t), v, i)
end

@doc md"""
    vector_long_fread(stream, v) -> Cint

C signature:
`int gsl_vector_long_fread (FILE * stream, gsl_vector_long * v)`
"""
function vector_long_fread(stream, v)
    ccall((:gsl_vector_long_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long}), stream, v)
end

@doc md"""
    vector_long_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_long_fwrite (FILE * stream, const gsl_vector_long * v)`
"""
function vector_long_fwrite(stream, v)
    ccall((:gsl_vector_long_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long}), stream, v)
end

@doc md"""
    vector_long_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_long_fscanf (FILE * stream, gsl_vector_long * v)`
"""
function vector_long_fscanf(stream, v)
    ccall((:gsl_vector_long_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long}), stream, v)
end

@doc md"""
    vector_long_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_long_fprintf (FILE * stream, const gsl_vector_long * v, const char *format)`
"""
function vector_long_fprintf(stream, v, format)
    ccall((:gsl_vector_long_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_long_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_long_memcpy (gsl_vector_long * dest, const gsl_vector_long * src)`
"""
function vector_long_memcpy(dest, src)
    ccall((:gsl_vector_long_memcpy, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), dest, src)
end

@doc md"""
    vector_long_reverse(v) -> Cint

C signature:
`int gsl_vector_long_reverse (gsl_vector_long * v)`
"""
function vector_long_reverse(v)
    ccall((:gsl_vector_long_reverse, libgsl), Cint, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_swap(v, w) -> Cint

C signature:
`int gsl_vector_long_swap (gsl_vector_long * v, gsl_vector_long * w)`
"""
function vector_long_swap(v, w)
    ccall((:gsl_vector_long_swap, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), v, w)
end

@doc md"""
    vector_long_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_long_swap_elements (gsl_vector_long * v, const size_t i, const size_t j)`
"""
function vector_long_swap_elements(v, i, j)
    ccall((:gsl_vector_long_swap_elements, libgsl), Cint, (Ref{gsl_vector_long}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_long_max(v) -> Clong

C signature:
`long gsl_vector_long_max (const gsl_vector_long * v)`
"""
function vector_long_max(v)
    ccall((:gsl_vector_long_max, libgsl), Clong, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_min(v) -> Clong

C signature:
`long gsl_vector_long_min (const gsl_vector_long * v)`
"""
function vector_long_min(v)
    ccall((:gsl_vector_long_min, libgsl), Clong, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_long_minmax (const gsl_vector_long * v, long * min_out, long * max_out)`
"""
function vector_long_minmax(v, min_out, max_out)
    ccall((:gsl_vector_long_minmax, libgsl), Cvoid, (Ref{gsl_vector_long}, Ref{Clong}, Ref{Clong}), v, min_out, max_out)
end

@doc md"""
    vector_long_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_long_max_index (const gsl_vector_long * v)`
"""
function vector_long_max_index(v)
    ccall((:gsl_vector_long_max_index, libgsl), Csize_t, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_long_min_index (const gsl_vector_long * v)`
"""
function vector_long_min_index(v)
    ccall((:gsl_vector_long_min_index, libgsl), Csize_t, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_long_minmax_index (const gsl_vector_long * v, size_t * imin, size_t * imax)`
"""
function vector_long_minmax_index(v, imin, imax)
    ccall((:gsl_vector_long_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_long}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_long_add(a, b) -> Cint

C signature:
`int gsl_vector_long_add (gsl_vector_long * a, const gsl_vector_long * b)`
"""
function vector_long_add(a, b)
    ccall((:gsl_vector_long_add, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), a, b)
end

@doc md"""
    vector_long_sub(a, b) -> Cint

C signature:
`int gsl_vector_long_sub (gsl_vector_long * a, const gsl_vector_long * b)`
"""
function vector_long_sub(a, b)
    ccall((:gsl_vector_long_sub, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), a, b)
end

@doc md"""
    vector_long_mul(a, b) -> Cint

C signature:
`int gsl_vector_long_mul (gsl_vector_long * a, const gsl_vector_long * b)`
"""
function vector_long_mul(a, b)
    ccall((:gsl_vector_long_mul, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), a, b)
end

@doc md"""
    vector_long_div(a, b) -> Cint

C signature:
`int gsl_vector_long_div (gsl_vector_long * a, const gsl_vector_long * b)`
"""
function vector_long_div(a, b)
    ccall((:gsl_vector_long_div, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), a, b)
end

@doc md"""
    vector_long_scale(a, x) -> Cint

C signature:
`int gsl_vector_long_scale (gsl_vector_long * a, const long x)`
"""
function vector_long_scale(a, x)
    ccall((:gsl_vector_long_scale, libgsl), Cint, (Ref{gsl_vector_long}, Clong), a, x)
end

@doc md"""
    vector_long_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_long_add_constant (gsl_vector_long * a, const double x)`
"""
function vector_long_add_constant(a, x)
    ccall((:gsl_vector_long_add_constant, libgsl), Cint, (Ref{gsl_vector_long}, Cdouble), a, x)
end

@doc md"""
    vector_long_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_long_axpby (const long alpha, const gsl_vector_long * x, const long beta, gsl_vector_long * y)`
"""
function vector_long_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_long_axpby, libgsl), Cint, (Clong, Ref{gsl_vector_long}, Clong, Ref{gsl_vector_long}), alpha, x, beta, y)
end

@doc md"""
    vector_long_equal(u, v) -> Cint

C signature:
`int gsl_vector_long_equal (const gsl_vector_long * u, const gsl_vector_long * v)`
"""
function vector_long_equal(u, v)
    ccall((:gsl_vector_long_equal, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_vector_long}), u, v)
end

@doc md"""
    vector_long_isnull(v) -> Cint

C signature:
`int gsl_vector_long_isnull (const gsl_vector_long * v)`
"""
function vector_long_isnull(v)
    ccall((:gsl_vector_long_isnull, libgsl), Cint, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_ispos(v) -> Cint

C signature:
`int gsl_vector_long_ispos (const gsl_vector_long * v)`
"""
function vector_long_ispos(v)
    ccall((:gsl_vector_long_ispos, libgsl), Cint, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_isneg(v) -> Cint

C signature:
`int gsl_vector_long_isneg (const gsl_vector_long * v)`
"""
function vector_long_isneg(v)
    ccall((:gsl_vector_long_isneg, libgsl), Cint, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_isnonneg(v) -> Cint

C signature:
`int gsl_vector_long_isnonneg (const gsl_vector_long * v)`
"""
function vector_long_isnonneg(v)
    ccall((:gsl_vector_long_isnonneg, libgsl), Cint, (Ptr{gsl_vector_long},), v)
end

@doc md"""
    vector_long_get(v, i) -> Clong

C signature:
`long gsl_vector_long_get (const gsl_vector_long * v, const size_t i)`
"""
function vector_long_get(v, i)
    ccall((:gsl_vector_long_get, libgsl), Clong, (Ref{gsl_vector_long}, Csize_t), v, i)
end

@doc md"""
    vector_long_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_long_set (gsl_vector_long * v, const size_t i, long x)`
"""
function vector_long_set(v, i, x)
    ccall((:gsl_vector_long_set, libgsl), Cvoid, (Ref{gsl_vector_long}, Csize_t, Clong), v, i, x)
end

@doc md"""
    vector_long_ptr(v, i) -> Ptr{Clong}

C signature:
`long * gsl_vector_long_ptr (gsl_vector_long * v, const size_t i)`
"""
function vector_long_ptr(v, i)
    ccall((:gsl_vector_long_ptr, libgsl), Ptr{Clong}, (Ref{gsl_vector_long}, Csize_t), v, i)
end

@doc md"""
    vector_long_const_ptr(v, i) -> Ptr{Clong}

C signature:
`const long * gsl_vector_long_const_ptr (const gsl_vector_long * v, const size_t i)`
"""
function vector_long_const_ptr(v, i)
    ccall((:gsl_vector_long_const_ptr, libgsl), Ptr{Clong}, (Ref{gsl_vector_long}, Csize_t), v, i)
end

