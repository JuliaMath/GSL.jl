#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_uchar.h #######################################################


@doc md"""
    vector_uchar_alloc(n) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar *gsl_vector_uchar_alloc (const size_t n)`
"""
function vector_uchar_alloc(n)
    ccall((:gsl_vector_uchar_alloc, libgsl), Ptr{gsl_vector_uchar}, (Csize_t,), n)
end

@doc md"""
    vector_uchar_calloc(n) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar *gsl_vector_uchar_calloc (const size_t n)`
"""
function vector_uchar_calloc(n)
    ccall((:gsl_vector_uchar_calloc, libgsl), Ptr{gsl_vector_uchar}, (Csize_t,), n)
end

@doc md"""
    vector_uchar_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar *gsl_vector_uchar_alloc_from_block (gsl_block_uchar * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_uchar_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_uchar_alloc_from_block, libgsl), Ptr{gsl_vector_uchar}, (Ref{gsl_block_uchar}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_uchar_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar *gsl_vector_uchar_alloc_from_vector (gsl_vector_uchar * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_uchar_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_uchar_alloc_from_vector, libgsl), Ptr{gsl_vector_uchar}, (Ref{gsl_vector_uchar}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_uchar_free(v) -> Cvoid

C signature:
`void gsl_vector_uchar_free (gsl_vector_uchar * v)`
"""
function vector_uchar_free(v)
    ccall((:gsl_vector_uchar_free, libgsl), Cvoid, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_view_array(v, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_vector_uchar_view_array (unsigned char *v, size_t n)`
"""
function vector_uchar_view_array(v, n)
    ccall((:gsl_vector_uchar_view_array, libgsl), _gsl_vector_uchar_view, (Ref{Cuchar}, Csize_t), v, n)
end

@doc md"""
    vector_uchar_view_array_with_stride(base, stride, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_vector_uchar_view_array_with_stride (unsigned char *base, size_t stride, size_t n)`
"""
function vector_uchar_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_uchar_view_array_with_stride, libgsl), _gsl_vector_uchar_view, (Ref{Cuchar}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_uchar_const_view_array(v, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_vector_uchar_const_view_array (const unsigned char *v, size_t n)`
"""
function vector_uchar_const_view_array(v, n)
    ccall((:gsl_vector_uchar_const_view_array, libgsl), _gsl_vector_uchar_const_view, (Ref{Cuchar}, Csize_t), v, n)
end

@doc md"""
    vector_uchar_const_view_array_with_stride(base, stride, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_vector_uchar_const_view_array_with_stride (const unsigned char *base, size_t stride, size_t n)`
"""
function vector_uchar_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_uchar_const_view_array_with_stride, libgsl), _gsl_vector_uchar_const_view, (Ref{Cuchar}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_uchar_subvector(v, i, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_vector_uchar_subvector (gsl_vector_uchar *v, size_t i, size_t n)`
"""
function vector_uchar_subvector(v, i, n)
    ccall((:gsl_vector_uchar_subvector, libgsl), _gsl_vector_uchar_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_uchar_subvector_with_stride(v, i, stride, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_vector_uchar_subvector_with_stride (gsl_vector_uchar *v, size_t i, size_t stride, size_t n)`
"""
function vector_uchar_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_uchar_subvector_with_stride, libgsl), _gsl_vector_uchar_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_uchar_const_subvector(v, i, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_vector_uchar_const_subvector (const gsl_vector_uchar *v, size_t i, size_t n)`
"""
function vector_uchar_const_subvector(v, i, n)
    ccall((:gsl_vector_uchar_const_subvector, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_uchar_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_vector_uchar_const_subvector_with_stride (const gsl_vector_uchar *v, size_t i, size_t stride, size_t n)`
"""
function vector_uchar_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_uchar_const_subvector_with_stride, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_uchar_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_uchar_set_zero (gsl_vector_uchar * v)`
"""
function vector_uchar_set_zero(v)
    ccall((:gsl_vector_uchar_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_uchar_set_all (gsl_vector_uchar * v, unsigned char x)`
"""
function vector_uchar_set_all(v, x)
    ccall((:gsl_vector_uchar_set_all, libgsl), Cvoid, (Ref{gsl_vector_uchar}, Cuchar), v, x)
end

@doc md"""
    vector_uchar_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_uchar_set_basis (gsl_vector_uchar * v, size_t i)`
"""
function vector_uchar_set_basis(v, i)
    ccall((:gsl_vector_uchar_set_basis, libgsl), Cint, (Ref{gsl_vector_uchar}, Csize_t), v, i)
end

@doc md"""
    vector_uchar_fread(stream, v) -> Cint

C signature:
`int gsl_vector_uchar_fread (FILE * stream, gsl_vector_uchar * v)`
"""
function vector_uchar_fread(stream, v)
    ccall((:gsl_vector_uchar_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uchar}), stream, v)
end

@doc md"""
    vector_uchar_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_uchar_fwrite (FILE * stream, const gsl_vector_uchar * v)`
"""
function vector_uchar_fwrite(stream, v)
    ccall((:gsl_vector_uchar_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uchar}), stream, v)
end

@doc md"""
    vector_uchar_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_uchar_fscanf (FILE * stream, gsl_vector_uchar * v)`
"""
function vector_uchar_fscanf(stream, v)
    ccall((:gsl_vector_uchar_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uchar}), stream, v)
end

@doc md"""
    vector_uchar_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_uchar_fprintf (FILE * stream, const gsl_vector_uchar * v, const char *format)`
"""
function vector_uchar_fprintf(stream, v, format)
    ccall((:gsl_vector_uchar_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uchar}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_uchar_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_uchar_memcpy (gsl_vector_uchar * dest, const gsl_vector_uchar * src)`
"""
function vector_uchar_memcpy(dest, src)
    ccall((:gsl_vector_uchar_memcpy, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), dest, src)
end

@doc md"""
    vector_uchar_reverse(v) -> Cint

C signature:
`int gsl_vector_uchar_reverse (gsl_vector_uchar * v)`
"""
function vector_uchar_reverse(v)
    ccall((:gsl_vector_uchar_reverse, libgsl), Cint, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_swap(v, w) -> Cint

C signature:
`int gsl_vector_uchar_swap (gsl_vector_uchar * v, gsl_vector_uchar * w)`
"""
function vector_uchar_swap(v, w)
    ccall((:gsl_vector_uchar_swap, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), v, w)
end

@doc md"""
    vector_uchar_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_uchar_swap_elements (gsl_vector_uchar * v, const size_t i, const size_t j)`
"""
function vector_uchar_swap_elements(v, i, j)
    ccall((:gsl_vector_uchar_swap_elements, libgsl), Cint, (Ref{gsl_vector_uchar}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_uchar_max(v) -> Cuchar

C signature:
`unsigned char gsl_vector_uchar_max (const gsl_vector_uchar * v)`
"""
function vector_uchar_max(v)
    ccall((:gsl_vector_uchar_max, libgsl), Cuchar, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_min(v) -> Cuchar

C signature:
`unsigned char gsl_vector_uchar_min (const gsl_vector_uchar * v)`
"""
function vector_uchar_min(v)
    ccall((:gsl_vector_uchar_min, libgsl), Cuchar, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_uchar_minmax (const gsl_vector_uchar * v, unsigned char * min_out, unsigned char * max_out)`
"""
function vector_uchar_minmax(v, min_out, max_out)
    ccall((:gsl_vector_uchar_minmax, libgsl), Cvoid, (Ref{gsl_vector_uchar}, Ref{Cuchar}, Ref{Cuchar}), v, min_out, max_out)
end

@doc md"""
    vector_uchar_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_uchar_max_index (const gsl_vector_uchar * v)`
"""
function vector_uchar_max_index(v)
    ccall((:gsl_vector_uchar_max_index, libgsl), Csize_t, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_uchar_min_index (const gsl_vector_uchar * v)`
"""
function vector_uchar_min_index(v)
    ccall((:gsl_vector_uchar_min_index, libgsl), Csize_t, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_uchar_minmax_index (const gsl_vector_uchar * v, size_t * imin, size_t * imax)`
"""
function vector_uchar_minmax_index(v, imin, imax)
    ccall((:gsl_vector_uchar_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_uchar}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_uchar_add(a, b) -> Cint

C signature:
`int gsl_vector_uchar_add (gsl_vector_uchar * a, const gsl_vector_uchar * b)`
"""
function vector_uchar_add(a, b)
    ccall((:gsl_vector_uchar_add, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), a, b)
end

@doc md"""
    vector_uchar_sub(a, b) -> Cint

C signature:
`int gsl_vector_uchar_sub (gsl_vector_uchar * a, const gsl_vector_uchar * b)`
"""
function vector_uchar_sub(a, b)
    ccall((:gsl_vector_uchar_sub, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), a, b)
end

@doc md"""
    vector_uchar_mul(a, b) -> Cint

C signature:
`int gsl_vector_uchar_mul (gsl_vector_uchar * a, const gsl_vector_uchar * b)`
"""
function vector_uchar_mul(a, b)
    ccall((:gsl_vector_uchar_mul, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), a, b)
end

@doc md"""
    vector_uchar_div(a, b) -> Cint

C signature:
`int gsl_vector_uchar_div (gsl_vector_uchar * a, const gsl_vector_uchar * b)`
"""
function vector_uchar_div(a, b)
    ccall((:gsl_vector_uchar_div, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), a, b)
end

@doc md"""
    vector_uchar_scale(a, x) -> Cint

C signature:
`int gsl_vector_uchar_scale (gsl_vector_uchar * a, const unsigned char x)`
"""
function vector_uchar_scale(a, x)
    ccall((:gsl_vector_uchar_scale, libgsl), Cint, (Ref{gsl_vector_uchar}, Cuchar), a, x)
end

@doc md"""
    vector_uchar_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_uchar_add_constant (gsl_vector_uchar * a, const double x)`
"""
function vector_uchar_add_constant(a, x)
    ccall((:gsl_vector_uchar_add_constant, libgsl), Cint, (Ref{gsl_vector_uchar}, Cdouble), a, x)
end

@doc md"""
    vector_uchar_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_uchar_axpby (const unsigned char alpha, const gsl_vector_uchar * x, const unsigned char beta, gsl_vector_uchar * y)`
"""
function vector_uchar_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_uchar_axpby, libgsl), Cint, (Cuchar, Ref{gsl_vector_uchar}, Cuchar, Ref{gsl_vector_uchar}), alpha, x, beta, y)
end

@doc md"""
    vector_uchar_equal(u, v) -> Cint

C signature:
`int gsl_vector_uchar_equal (const gsl_vector_uchar * u, const gsl_vector_uchar * v)`
"""
function vector_uchar_equal(u, v)
    ccall((:gsl_vector_uchar_equal, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_vector_uchar}), u, v)
end

@doc md"""
    vector_uchar_isnull(v) -> Cint

C signature:
`int gsl_vector_uchar_isnull (const gsl_vector_uchar * v)`
"""
function vector_uchar_isnull(v)
    ccall((:gsl_vector_uchar_isnull, libgsl), Cint, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_ispos(v) -> Cint

C signature:
`int gsl_vector_uchar_ispos (const gsl_vector_uchar * v)`
"""
function vector_uchar_ispos(v)
    ccall((:gsl_vector_uchar_ispos, libgsl), Cint, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_isneg(v) -> Cint

C signature:
`int gsl_vector_uchar_isneg (const gsl_vector_uchar * v)`
"""
function vector_uchar_isneg(v)
    ccall((:gsl_vector_uchar_isneg, libgsl), Cint, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_isnonneg(v) -> Cint

C signature:
`int gsl_vector_uchar_isnonneg (const gsl_vector_uchar * v)`
"""
function vector_uchar_isnonneg(v)
    ccall((:gsl_vector_uchar_isnonneg, libgsl), Cint, (Ptr{gsl_vector_uchar},), v)
end

@doc md"""
    vector_uchar_get(v, i) -> Cuchar

C signature:
`unsigned char gsl_vector_uchar_get (const gsl_vector_uchar * v, const size_t i)`
"""
function vector_uchar_get(v, i)
    ccall((:gsl_vector_uchar_get, libgsl), Cuchar, (Ref{gsl_vector_uchar}, Csize_t), v, i)
end

@doc md"""
    vector_uchar_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_uchar_set (gsl_vector_uchar * v, const size_t i, unsigned char x)`
"""
function vector_uchar_set(v, i, x)
    ccall((:gsl_vector_uchar_set, libgsl), Cvoid, (Ref{gsl_vector_uchar}, Csize_t, Cuchar), v, i, x)
end

@doc md"""
    vector_uchar_ptr(v, i) -> Ptr{Cuchar}

C signature:
`unsigned char * gsl_vector_uchar_ptr (gsl_vector_uchar * v, const size_t i)`
"""
function vector_uchar_ptr(v, i)
    ccall((:gsl_vector_uchar_ptr, libgsl), Ptr{Cuchar}, (Ref{gsl_vector_uchar}, Csize_t), v, i)
end

@doc md"""
    vector_uchar_const_ptr(v, i) -> Ptr{Cuchar}

C signature:
`const unsigned char * gsl_vector_uchar_const_ptr (const gsl_vector_uchar * v, const size_t i)`
"""
function vector_uchar_const_ptr(v, i)
    ccall((:gsl_vector_uchar_const_ptr, libgsl), Ptr{Cuchar}, (Ref{gsl_vector_uchar}, Csize_t), v, i)
end

