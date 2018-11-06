#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_ushort.h ######################################################


@doc md"""
    vector_ushort_alloc(n) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort *gsl_vector_ushort_alloc (const size_t n)`
"""
function vector_ushort_alloc(n)
    ccall((:gsl_vector_ushort_alloc, libgsl), Ptr{gsl_vector_ushort}, (Csize_t,), n)
end

@doc md"""
    vector_ushort_calloc(n) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort *gsl_vector_ushort_calloc (const size_t n)`
"""
function vector_ushort_calloc(n)
    ccall((:gsl_vector_ushort_calloc, libgsl), Ptr{gsl_vector_ushort}, (Csize_t,), n)
end

@doc md"""
    vector_ushort_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort *gsl_vector_ushort_alloc_from_block (gsl_block_ushort * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_ushort_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_ushort_alloc_from_block, libgsl), Ptr{gsl_vector_ushort}, (Ref{gsl_block_ushort}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_ushort_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort *gsl_vector_ushort_alloc_from_vector (gsl_vector_ushort * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_ushort_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_ushort_alloc_from_vector, libgsl), Ptr{gsl_vector_ushort}, (Ref{gsl_vector_ushort}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_ushort_free(v) -> Cvoid

C signature:
`void gsl_vector_ushort_free (gsl_vector_ushort * v)`
"""
function vector_ushort_free(v)
    ccall((:gsl_vector_ushort_free, libgsl), Cvoid, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_view_array(v, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_vector_ushort_view_array (unsigned short *v, size_t n)`
"""
function vector_ushort_view_array(v, n)
    ccall((:gsl_vector_ushort_view_array, libgsl), _gsl_vector_ushort_view, (Ref{Cushort}, Csize_t), v, n)
end

@doc md"""
    vector_ushort_view_array_with_stride(base, stride, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_vector_ushort_view_array_with_stride (unsigned short *base, size_t stride, size_t n)`
"""
function vector_ushort_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_ushort_view_array_with_stride, libgsl), _gsl_vector_ushort_view, (Ref{Cushort}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_ushort_const_view_array(v, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_vector_ushort_const_view_array (const unsigned short *v, size_t n)`
"""
function vector_ushort_const_view_array(v, n)
    ccall((:gsl_vector_ushort_const_view_array, libgsl), _gsl_vector_ushort_const_view, (Ref{Cushort}, Csize_t), v, n)
end

@doc md"""
    vector_ushort_const_view_array_with_stride(base, stride, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_vector_ushort_const_view_array_with_stride (const unsigned short *base, size_t stride, size_t n)`
"""
function vector_ushort_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_ushort_const_view_array_with_stride, libgsl), _gsl_vector_ushort_const_view, (Ref{Cushort}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_ushort_subvector(v, i, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_vector_ushort_subvector (gsl_vector_ushort *v, size_t i, size_t n)`
"""
function vector_ushort_subvector(v, i, n)
    ccall((:gsl_vector_ushort_subvector, libgsl), _gsl_vector_ushort_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_ushort_subvector_with_stride(v, i, stride, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_vector_ushort_subvector_with_stride (gsl_vector_ushort *v, size_t i, size_t stride, size_t n)`
"""
function vector_ushort_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_ushort_subvector_with_stride, libgsl), _gsl_vector_ushort_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_ushort_const_subvector(v, i, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_vector_ushort_const_subvector (const gsl_vector_ushort *v, size_t i, size_t n)`
"""
function vector_ushort_const_subvector(v, i, n)
    ccall((:gsl_vector_ushort_const_subvector, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_ushort_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_vector_ushort_const_subvector_with_stride (const gsl_vector_ushort *v, size_t i, size_t stride, size_t n)`
"""
function vector_ushort_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_ushort_const_subvector_with_stride, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_ushort_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_ushort_set_zero (gsl_vector_ushort * v)`
"""
function vector_ushort_set_zero(v)
    ccall((:gsl_vector_ushort_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_ushort_set_all (gsl_vector_ushort * v, unsigned short x)`
"""
function vector_ushort_set_all(v, x)
    ccall((:gsl_vector_ushort_set_all, libgsl), Cvoid, (Ref{gsl_vector_ushort}, Cushort), v, x)
end

@doc md"""
    vector_ushort_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_ushort_set_basis (gsl_vector_ushort * v, size_t i)`
"""
function vector_ushort_set_basis(v, i)
    ccall((:gsl_vector_ushort_set_basis, libgsl), Cint, (Ref{gsl_vector_ushort}, Csize_t), v, i)
end

@doc md"""
    vector_ushort_fread(stream, v) -> Cint

C signature:
`int gsl_vector_ushort_fread (FILE * stream, gsl_vector_ushort * v)`
"""
function vector_ushort_fread(stream, v)
    ccall((:gsl_vector_ushort_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ushort}), stream, v)
end

@doc md"""
    vector_ushort_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_ushort_fwrite (FILE * stream, const gsl_vector_ushort * v)`
"""
function vector_ushort_fwrite(stream, v)
    ccall((:gsl_vector_ushort_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ushort}), stream, v)
end

@doc md"""
    vector_ushort_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_ushort_fscanf (FILE * stream, gsl_vector_ushort * v)`
"""
function vector_ushort_fscanf(stream, v)
    ccall((:gsl_vector_ushort_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ushort}), stream, v)
end

@doc md"""
    vector_ushort_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_ushort_fprintf (FILE * stream, const gsl_vector_ushort * v, const char *format)`
"""
function vector_ushort_fprintf(stream, v, format)
    ccall((:gsl_vector_ushort_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_ushort}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_ushort_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_ushort_memcpy (gsl_vector_ushort * dest, const gsl_vector_ushort * src)`
"""
function vector_ushort_memcpy(dest, src)
    ccall((:gsl_vector_ushort_memcpy, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), dest, src)
end

@doc md"""
    vector_ushort_reverse(v) -> Cint

C signature:
`int gsl_vector_ushort_reverse (gsl_vector_ushort * v)`
"""
function vector_ushort_reverse(v)
    ccall((:gsl_vector_ushort_reverse, libgsl), Cint, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_swap(v, w) -> Cint

C signature:
`int gsl_vector_ushort_swap (gsl_vector_ushort * v, gsl_vector_ushort * w)`
"""
function vector_ushort_swap(v, w)
    ccall((:gsl_vector_ushort_swap, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), v, w)
end

@doc md"""
    vector_ushort_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_ushort_swap_elements (gsl_vector_ushort * v, const size_t i, const size_t j)`
"""
function vector_ushort_swap_elements(v, i, j)
    ccall((:gsl_vector_ushort_swap_elements, libgsl), Cint, (Ref{gsl_vector_ushort}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_ushort_max(v) -> Cushort

C signature:
`unsigned short gsl_vector_ushort_max (const gsl_vector_ushort * v)`
"""
function vector_ushort_max(v)
    ccall((:gsl_vector_ushort_max, libgsl), Cushort, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_min(v) -> Cushort

C signature:
`unsigned short gsl_vector_ushort_min (const gsl_vector_ushort * v)`
"""
function vector_ushort_min(v)
    ccall((:gsl_vector_ushort_min, libgsl), Cushort, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_ushort_minmax (const gsl_vector_ushort * v, unsigned short * min_out, unsigned short * max_out)`
"""
function vector_ushort_minmax(v, min_out, max_out)
    ccall((:gsl_vector_ushort_minmax, libgsl), Cvoid, (Ref{gsl_vector_ushort}, Ref{Cushort}, Ref{Cushort}), v, min_out, max_out)
end

@doc md"""
    vector_ushort_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_ushort_max_index (const gsl_vector_ushort * v)`
"""
function vector_ushort_max_index(v)
    ccall((:gsl_vector_ushort_max_index, libgsl), Csize_t, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_ushort_min_index (const gsl_vector_ushort * v)`
"""
function vector_ushort_min_index(v)
    ccall((:gsl_vector_ushort_min_index, libgsl), Csize_t, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_ushort_minmax_index (const gsl_vector_ushort * v, size_t * imin, size_t * imax)`
"""
function vector_ushort_minmax_index(v, imin, imax)
    ccall((:gsl_vector_ushort_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_ushort}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_ushort_add(a, b) -> Cint

C signature:
`int gsl_vector_ushort_add (gsl_vector_ushort * a, const gsl_vector_ushort * b)`
"""
function vector_ushort_add(a, b)
    ccall((:gsl_vector_ushort_add, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), a, b)
end

@doc md"""
    vector_ushort_sub(a, b) -> Cint

C signature:
`int gsl_vector_ushort_sub (gsl_vector_ushort * a, const gsl_vector_ushort * b)`
"""
function vector_ushort_sub(a, b)
    ccall((:gsl_vector_ushort_sub, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), a, b)
end

@doc md"""
    vector_ushort_mul(a, b) -> Cint

C signature:
`int gsl_vector_ushort_mul (gsl_vector_ushort * a, const gsl_vector_ushort * b)`
"""
function vector_ushort_mul(a, b)
    ccall((:gsl_vector_ushort_mul, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), a, b)
end

@doc md"""
    vector_ushort_div(a, b) -> Cint

C signature:
`int gsl_vector_ushort_div (gsl_vector_ushort * a, const gsl_vector_ushort * b)`
"""
function vector_ushort_div(a, b)
    ccall((:gsl_vector_ushort_div, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), a, b)
end

@doc md"""
    vector_ushort_scale(a, x) -> Cint

C signature:
`int gsl_vector_ushort_scale (gsl_vector_ushort * a, const double x)`
"""
function vector_ushort_scale(a, x)
    ccall((:gsl_vector_ushort_scale, libgsl), Cint, (Ref{gsl_vector_ushort}, Cdouble), a, x)
end

@doc md"""
    vector_ushort_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_ushort_add_constant (gsl_vector_ushort * a, const double x)`
"""
function vector_ushort_add_constant(a, x)
    ccall((:gsl_vector_ushort_add_constant, libgsl), Cint, (Ref{gsl_vector_ushort}, Cdouble), a, x)
end

@doc md"""
    vector_ushort_equal(u, v) -> Cint

C signature:
`int gsl_vector_ushort_equal (const gsl_vector_ushort * u, const gsl_vector_ushort * v)`
"""
function vector_ushort_equal(u, v)
    ccall((:gsl_vector_ushort_equal, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_vector_ushort}), u, v)
end

@doc md"""
    vector_ushort_isnull(v) -> Cint

C signature:
`int gsl_vector_ushort_isnull (const gsl_vector_ushort * v)`
"""
function vector_ushort_isnull(v)
    ccall((:gsl_vector_ushort_isnull, libgsl), Cint, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_ispos(v) -> Cint

C signature:
`int gsl_vector_ushort_ispos (const gsl_vector_ushort * v)`
"""
function vector_ushort_ispos(v)
    ccall((:gsl_vector_ushort_ispos, libgsl), Cint, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_isneg(v) -> Cint

C signature:
`int gsl_vector_ushort_isneg (const gsl_vector_ushort * v)`
"""
function vector_ushort_isneg(v)
    ccall((:gsl_vector_ushort_isneg, libgsl), Cint, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_isnonneg(v) -> Cint

C signature:
`int gsl_vector_ushort_isnonneg (const gsl_vector_ushort * v)`
"""
function vector_ushort_isnonneg(v)
    ccall((:gsl_vector_ushort_isnonneg, libgsl), Cint, (Ptr{gsl_vector_ushort},), v)
end

@doc md"""
    vector_ushort_get(v, i) -> Cushort

C signature:
`unsigned short gsl_vector_ushort_get (const gsl_vector_ushort * v, const size_t i)`
"""
function vector_ushort_get(v, i)
    ccall((:gsl_vector_ushort_get, libgsl), Cushort, (Ref{gsl_vector_ushort}, Csize_t), v, i)
end

@doc md"""
    vector_ushort_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_ushort_set (gsl_vector_ushort * v, const size_t i, unsigned short x)`
"""
function vector_ushort_set(v, i, x)
    ccall((:gsl_vector_ushort_set, libgsl), Cvoid, (Ref{gsl_vector_ushort}, Csize_t, Cushort), v, i, x)
end

@doc md"""
    vector_ushort_ptr(v, i) -> Ptr{Cushort}

C signature:
`unsigned short * gsl_vector_ushort_ptr (gsl_vector_ushort * v, const size_t i)`
"""
function vector_ushort_ptr(v, i)
    ccall((:gsl_vector_ushort_ptr, libgsl), Ptr{Cushort}, (Ref{gsl_vector_ushort}, Csize_t), v, i)
end

@doc md"""
    vector_ushort_const_ptr(v, i) -> Ptr{Cushort}

C signature:
`const unsigned short * gsl_vector_ushort_const_ptr (const gsl_vector_ushort * v, const size_t i)`
"""
function vector_ushort_const_ptr(v, i)
    ccall((:gsl_vector_ushort_const_ptr, libgsl), Ptr{Cushort}, (Ref{gsl_vector_ushort}, Csize_t), v, i)
end

