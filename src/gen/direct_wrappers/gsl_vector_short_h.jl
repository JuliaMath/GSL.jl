#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_short.h #######################################################


@doc md"""
    vector_short_alloc(n) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short *gsl_vector_short_alloc (const size_t n)`
"""
function vector_short_alloc(n)
    ccall((:gsl_vector_short_alloc, libgsl), Ptr{gsl_vector_short}, (Csize_t,), n)
end

@doc md"""
    vector_short_calloc(n) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short *gsl_vector_short_calloc (const size_t n)`
"""
function vector_short_calloc(n)
    ccall((:gsl_vector_short_calloc, libgsl), Ptr{gsl_vector_short}, (Csize_t,), n)
end

@doc md"""
    vector_short_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short *gsl_vector_short_alloc_from_block (gsl_block_short * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_short_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_short_alloc_from_block, libgsl), Ptr{gsl_vector_short}, (Ref{gsl_block_short}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_short_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short *gsl_vector_short_alloc_from_vector (gsl_vector_short * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_short_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_short_alloc_from_vector, libgsl), Ptr{gsl_vector_short}, (Ref{gsl_vector_short}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_short_free(v) -> Cvoid

C signature:
`void gsl_vector_short_free (gsl_vector_short * v)`
"""
function vector_short_free(v)
    ccall((:gsl_vector_short_free, libgsl), Cvoid, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_view_array(v, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_vector_short_view_array (short *v, size_t n)`
"""
function vector_short_view_array(v, n)
    ccall((:gsl_vector_short_view_array, libgsl), _gsl_vector_short_view, (Ref{Cshort}, Csize_t), v, n)
end

@doc md"""
    vector_short_view_array_with_stride(base, stride, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_vector_short_view_array_with_stride (short *base, size_t stride, size_t n)`
"""
function vector_short_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_short_view_array_with_stride, libgsl), _gsl_vector_short_view, (Ref{Cshort}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_short_const_view_array(v, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_vector_short_const_view_array (const short *v, size_t n)`
"""
function vector_short_const_view_array(v, n)
    ccall((:gsl_vector_short_const_view_array, libgsl), _gsl_vector_short_const_view, (Ref{Cshort}, Csize_t), v, n)
end

@doc md"""
    vector_short_const_view_array_with_stride(base, stride, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_vector_short_const_view_array_with_stride (const short *base, size_t stride, size_t n)`
"""
function vector_short_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_short_const_view_array_with_stride, libgsl), _gsl_vector_short_const_view, (Ref{Cshort}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_short_subvector(v, i, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_vector_short_subvector (gsl_vector_short *v, size_t i, size_t n)`
"""
function vector_short_subvector(v, i, n)
    ccall((:gsl_vector_short_subvector, libgsl), _gsl_vector_short_view, (Ref{gsl_vector_short}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_short_subvector_with_stride(v, i, stride, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_vector_short_subvector_with_stride (gsl_vector_short *v, size_t i, size_t stride, size_t n)`
"""
function vector_short_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_short_subvector_with_stride, libgsl), _gsl_vector_short_view, (Ref{gsl_vector_short}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_short_const_subvector(v, i, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_vector_short_const_subvector (const gsl_vector_short *v, size_t i, size_t n)`
"""
function vector_short_const_subvector(v, i, n)
    ccall((:gsl_vector_short_const_subvector, libgsl), _gsl_vector_short_const_view, (Ref{gsl_vector_short}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_short_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_vector_short_const_subvector_with_stride (const gsl_vector_short *v, size_t i, size_t stride, size_t n)`
"""
function vector_short_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_short_const_subvector_with_stride, libgsl), _gsl_vector_short_const_view, (Ref{gsl_vector_short}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_short_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_short_set_zero (gsl_vector_short * v)`
"""
function vector_short_set_zero(v)
    ccall((:gsl_vector_short_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_short_set_all (gsl_vector_short * v, short x)`
"""
function vector_short_set_all(v, x)
    ccall((:gsl_vector_short_set_all, libgsl), Cvoid, (Ref{gsl_vector_short}, Cshort), v, x)
end

@doc md"""
    vector_short_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_short_set_basis (gsl_vector_short * v, size_t i)`
"""
function vector_short_set_basis(v, i)
    ccall((:gsl_vector_short_set_basis, libgsl), Cint, (Ref{gsl_vector_short}, Csize_t), v, i)
end

@doc md"""
    vector_short_fread(stream, v) -> Cint

C signature:
`int gsl_vector_short_fread (FILE * stream, gsl_vector_short * v)`
"""
function vector_short_fread(stream, v)
    ccall((:gsl_vector_short_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_short}), stream, v)
end

@doc md"""
    vector_short_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_short_fwrite (FILE * stream, const gsl_vector_short * v)`
"""
function vector_short_fwrite(stream, v)
    ccall((:gsl_vector_short_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_short}), stream, v)
end

@doc md"""
    vector_short_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_short_fscanf (FILE * stream, gsl_vector_short * v)`
"""
function vector_short_fscanf(stream, v)
    ccall((:gsl_vector_short_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_short}), stream, v)
end

@doc md"""
    vector_short_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_short_fprintf (FILE * stream, const gsl_vector_short * v, const char *format)`
"""
function vector_short_fprintf(stream, v, format)
    ccall((:gsl_vector_short_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_short}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_short_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_short_memcpy (gsl_vector_short * dest, const gsl_vector_short * src)`
"""
function vector_short_memcpy(dest, src)
    ccall((:gsl_vector_short_memcpy, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), dest, src)
end

@doc md"""
    vector_short_reverse(v) -> Cint

C signature:
`int gsl_vector_short_reverse (gsl_vector_short * v)`
"""
function vector_short_reverse(v)
    ccall((:gsl_vector_short_reverse, libgsl), Cint, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_swap(v, w) -> Cint

C signature:
`int gsl_vector_short_swap (gsl_vector_short * v, gsl_vector_short * w)`
"""
function vector_short_swap(v, w)
    ccall((:gsl_vector_short_swap, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), v, w)
end

@doc md"""
    vector_short_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_short_swap_elements (gsl_vector_short * v, const size_t i, const size_t j)`
"""
function vector_short_swap_elements(v, i, j)
    ccall((:gsl_vector_short_swap_elements, libgsl), Cint, (Ref{gsl_vector_short}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_short_max(v) -> Cshort

C signature:
`short gsl_vector_short_max (const gsl_vector_short * v)`
"""
function vector_short_max(v)
    ccall((:gsl_vector_short_max, libgsl), Cshort, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_min(v) -> Cshort

C signature:
`short gsl_vector_short_min (const gsl_vector_short * v)`
"""
function vector_short_min(v)
    ccall((:gsl_vector_short_min, libgsl), Cshort, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_short_minmax (const gsl_vector_short * v, short * min_out, short * max_out)`
"""
function vector_short_minmax(v, min_out, max_out)
    ccall((:gsl_vector_short_minmax, libgsl), Cvoid, (Ref{gsl_vector_short}, Ref{Cshort}, Ref{Cshort}), v, min_out, max_out)
end

@doc md"""
    vector_short_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_short_max_index (const gsl_vector_short * v)`
"""
function vector_short_max_index(v)
    ccall((:gsl_vector_short_max_index, libgsl), Csize_t, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_short_min_index (const gsl_vector_short * v)`
"""
function vector_short_min_index(v)
    ccall((:gsl_vector_short_min_index, libgsl), Csize_t, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_short_minmax_index (const gsl_vector_short * v, size_t * imin, size_t * imax)`
"""
function vector_short_minmax_index(v, imin, imax)
    ccall((:gsl_vector_short_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_short}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_short_add(a, b) -> Cint

C signature:
`int gsl_vector_short_add (gsl_vector_short * a, const gsl_vector_short * b)`
"""
function vector_short_add(a, b)
    ccall((:gsl_vector_short_add, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), a, b)
end

@doc md"""
    vector_short_sub(a, b) -> Cint

C signature:
`int gsl_vector_short_sub (gsl_vector_short * a, const gsl_vector_short * b)`
"""
function vector_short_sub(a, b)
    ccall((:gsl_vector_short_sub, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), a, b)
end

@doc md"""
    vector_short_mul(a, b) -> Cint

C signature:
`int gsl_vector_short_mul (gsl_vector_short * a, const gsl_vector_short * b)`
"""
function vector_short_mul(a, b)
    ccall((:gsl_vector_short_mul, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), a, b)
end

@doc md"""
    vector_short_div(a, b) -> Cint

C signature:
`int gsl_vector_short_div (gsl_vector_short * a, const gsl_vector_short * b)`
"""
function vector_short_div(a, b)
    ccall((:gsl_vector_short_div, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), a, b)
end

@doc md"""
    vector_short_scale(a, x) -> Cint

C signature:
`int gsl_vector_short_scale (gsl_vector_short * a, const short x)`
"""
function vector_short_scale(a, x)
    ccall((:gsl_vector_short_scale, libgsl), Cint, (Ref{gsl_vector_short}, Cshort), a, x)
end

@doc md"""
    vector_short_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_short_add_constant (gsl_vector_short * a, const double x)`
"""
function vector_short_add_constant(a, x)
    ccall((:gsl_vector_short_add_constant, libgsl), Cint, (Ref{gsl_vector_short}, Cdouble), a, x)
end

@doc md"""
    vector_short_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_short_axpby (const short alpha, const gsl_vector_short * x, const short beta, gsl_vector_short * y)`
"""
function vector_short_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_short_axpby, libgsl), Cint, (Cshort, Ref{gsl_vector_short}, Cshort, Ref{gsl_vector_short}), alpha, x, beta, y)
end

@doc md"""
    vector_short_equal(u, v) -> Cint

C signature:
`int gsl_vector_short_equal (const gsl_vector_short * u, const gsl_vector_short * v)`
"""
function vector_short_equal(u, v)
    ccall((:gsl_vector_short_equal, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_vector_short}), u, v)
end

@doc md"""
    vector_short_isnull(v) -> Cint

C signature:
`int gsl_vector_short_isnull (const gsl_vector_short * v)`
"""
function vector_short_isnull(v)
    ccall((:gsl_vector_short_isnull, libgsl), Cint, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_ispos(v) -> Cint

C signature:
`int gsl_vector_short_ispos (const gsl_vector_short * v)`
"""
function vector_short_ispos(v)
    ccall((:gsl_vector_short_ispos, libgsl), Cint, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_isneg(v) -> Cint

C signature:
`int gsl_vector_short_isneg (const gsl_vector_short * v)`
"""
function vector_short_isneg(v)
    ccall((:gsl_vector_short_isneg, libgsl), Cint, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_isnonneg(v) -> Cint

C signature:
`int gsl_vector_short_isnonneg (const gsl_vector_short * v)`
"""
function vector_short_isnonneg(v)
    ccall((:gsl_vector_short_isnonneg, libgsl), Cint, (Ptr{gsl_vector_short},), v)
end

@doc md"""
    vector_short_get(v, i) -> Cshort

C signature:
`short gsl_vector_short_get (const gsl_vector_short * v, const size_t i)`
"""
function vector_short_get(v, i)
    ccall((:gsl_vector_short_get, libgsl), Cshort, (Ref{gsl_vector_short}, Csize_t), v, i)
end

@doc md"""
    vector_short_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_short_set (gsl_vector_short * v, const size_t i, short x)`
"""
function vector_short_set(v, i, x)
    ccall((:gsl_vector_short_set, libgsl), Cvoid, (Ref{gsl_vector_short}, Csize_t, Cshort), v, i, x)
end

@doc md"""
    vector_short_ptr(v, i) -> Ptr{Cshort}

C signature:
`short * gsl_vector_short_ptr (gsl_vector_short * v, const size_t i)`
"""
function vector_short_ptr(v, i)
    ccall((:gsl_vector_short_ptr, libgsl), Ptr{Cshort}, (Ref{gsl_vector_short}, Csize_t), v, i)
end

@doc md"""
    vector_short_const_ptr(v, i) -> Ptr{Cshort}

C signature:
`const short * gsl_vector_short_const_ptr (const gsl_vector_short * v, const size_t i)`
"""
function vector_short_const_ptr(v, i)
    ccall((:gsl_vector_short_const_ptr, libgsl), Ptr{Cshort}, (Ref{gsl_vector_short}, Csize_t), v, i)
end

