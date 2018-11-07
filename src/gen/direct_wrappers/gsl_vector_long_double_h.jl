#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_long_double.h #################################################


@doc md"""
    vector_long_double_alloc(n) -> Ptr{gsl_vector_long_double}

C signature:
`gsl_vector_long_double *gsl_vector_long_double_alloc (const size_t n)`
"""
function vector_long_double_alloc(n)
    ccall((:gsl_vector_long_double_alloc, libgsl), Ptr{gsl_vector_long_double}, (Csize_t,), n)
end

@doc md"""
    vector_long_double_calloc(n) -> Ptr{gsl_vector_long_double}

C signature:
`gsl_vector_long_double *gsl_vector_long_double_calloc (const size_t n)`
"""
function vector_long_double_calloc(n)
    ccall((:gsl_vector_long_double_calloc, libgsl), Ptr{gsl_vector_long_double}, (Csize_t,), n)
end

@doc md"""
    vector_long_double_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_long_double}

C signature:
`gsl_vector_long_double *gsl_vector_long_double_alloc_from_block (gsl_block_long_double * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_long_double_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_long_double_alloc_from_block, libgsl), Ptr{gsl_vector_long_double}, (Ref{gsl_block_long_double}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_long_double_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_long_double}

C signature:
`gsl_vector_long_double *gsl_vector_long_double_alloc_from_vector (gsl_vector_long_double * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_long_double_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_long_double_alloc_from_vector, libgsl), Ptr{gsl_vector_long_double}, (Ref{gsl_vector_long_double}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_long_double_free(v) -> Cvoid

C signature:
`void gsl_vector_long_double_free (gsl_vector_long_double * v)`
"""
function vector_long_double_free(v)
    ccall((:gsl_vector_long_double_free, libgsl), Cvoid, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_view_array(v, n) -> _gsl_vector_long_double_view

C signature:
`_gsl_vector_long_double_view gsl_vector_long_double_view_array (long double *v, size_t n)`
"""
function vector_long_double_view_array(v, n)
    ccall((:gsl_vector_long_double_view_array, libgsl), _gsl_vector_long_double_view, (Ref{Cdouble}, Csize_t), v, n)
end

@doc md"""
    vector_long_double_view_array_with_stride(base, stride, n) -> _gsl_vector_long_double_view

C signature:
`_gsl_vector_long_double_view gsl_vector_long_double_view_array_with_stride (long double *base, size_t stride, size_t n)`
"""
function vector_long_double_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_long_double_view_array_with_stride, libgsl), _gsl_vector_long_double_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_long_double_const_view_array(v, n) -> _gsl_vector_long_double_const_view

C signature:
`_gsl_vector_long_double_const_view gsl_vector_long_double_const_view_array (const long double *v, size_t n)`
"""
function vector_long_double_const_view_array(v, n)
    ccall((:gsl_vector_long_double_const_view_array, libgsl), _gsl_vector_long_double_const_view, (Ref{Cdouble}, Csize_t), v, n)
end

@doc md"""
    vector_long_double_const_view_array_with_stride(base, stride, n) -> _gsl_vector_long_double_const_view

C signature:
`_gsl_vector_long_double_const_view gsl_vector_long_double_const_view_array_with_stride (const long double *base, size_t stride, size_t n)`
"""
function vector_long_double_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_long_double_const_view_array_with_stride, libgsl), _gsl_vector_long_double_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_long_double_subvector(v, i, n) -> _gsl_vector_long_double_view

C signature:
`_gsl_vector_long_double_view gsl_vector_long_double_subvector (gsl_vector_long_double *v, size_t i, size_t n)`
"""
function vector_long_double_subvector(v, i, n)
    ccall((:gsl_vector_long_double_subvector, libgsl), _gsl_vector_long_double_view, (Ref{gsl_vector_long_double}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_long_double_subvector_with_stride(v, i, stride, n) -> _gsl_vector_long_double_view

C signature:
`_gsl_vector_long_double_view gsl_vector_long_double_subvector_with_stride (gsl_vector_long_double *v, size_t i, size_t stride, size_t n)`
"""
function vector_long_double_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_long_double_subvector_with_stride, libgsl), _gsl_vector_long_double_view, (Ref{gsl_vector_long_double}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_long_double_const_subvector(v, i, n) -> _gsl_vector_long_double_const_view

C signature:
`_gsl_vector_long_double_const_view gsl_vector_long_double_const_subvector (const gsl_vector_long_double *v, size_t i, size_t n)`
"""
function vector_long_double_const_subvector(v, i, n)
    ccall((:gsl_vector_long_double_const_subvector, libgsl), _gsl_vector_long_double_const_view, (Ref{gsl_vector_long_double}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_long_double_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_long_double_const_view

C signature:
`_gsl_vector_long_double_const_view gsl_vector_long_double_const_subvector_with_stride (const gsl_vector_long_double *v, size_t i, size_t stride, size_t n)`
"""
function vector_long_double_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_long_double_const_subvector_with_stride, libgsl), _gsl_vector_long_double_const_view, (Ref{gsl_vector_long_double}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_long_double_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_long_double_set_zero (gsl_vector_long_double * v)`
"""
function vector_long_double_set_zero(v)
    ccall((:gsl_vector_long_double_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_long_double_set_all (gsl_vector_long_double * v, long double x)`
"""
function vector_long_double_set_all(v, x)
    ccall((:gsl_vector_long_double_set_all, libgsl), Cvoid, (Ref{gsl_vector_long_double}, Cdouble), v, x)
end

@doc md"""
    vector_long_double_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_long_double_set_basis (gsl_vector_long_double * v, size_t i)`
"""
function vector_long_double_set_basis(v, i)
    ccall((:gsl_vector_long_double_set_basis, libgsl), Cint, (Ref{gsl_vector_long_double}, Csize_t), v, i)
end

@doc md"""
    vector_long_double_fread(stream, v) -> Cint

C signature:
`int gsl_vector_long_double_fread (FILE * stream, gsl_vector_long_double * v)`
"""
function vector_long_double_fread(stream, v)
    ccall((:gsl_vector_long_double_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long_double}), stream, v)
end

@doc md"""
    vector_long_double_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_long_double_fwrite (FILE * stream, const gsl_vector_long_double * v)`
"""
function vector_long_double_fwrite(stream, v)
    ccall((:gsl_vector_long_double_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long_double}), stream, v)
end

@doc md"""
    vector_long_double_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_long_double_fscanf (FILE * stream, gsl_vector_long_double * v)`
"""
function vector_long_double_fscanf(stream, v)
    ccall((:gsl_vector_long_double_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long_double}), stream, v)
end

@doc md"""
    vector_long_double_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_long_double_fprintf (FILE * stream, const gsl_vector_long_double * v, const char *format)`
"""
function vector_long_double_fprintf(stream, v, format)
    ccall((:gsl_vector_long_double_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_long_double}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_long_double_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_long_double_memcpy (gsl_vector_long_double * dest, const gsl_vector_long_double * src)`
"""
function vector_long_double_memcpy(dest, src)
    ccall((:gsl_vector_long_double_memcpy, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), dest, src)
end

@doc md"""
    vector_long_double_reverse(v) -> Cint

C signature:
`int gsl_vector_long_double_reverse (gsl_vector_long_double * v)`
"""
function vector_long_double_reverse(v)
    ccall((:gsl_vector_long_double_reverse, libgsl), Cint, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_swap(v, w) -> Cint

C signature:
`int gsl_vector_long_double_swap (gsl_vector_long_double * v, gsl_vector_long_double * w)`
"""
function vector_long_double_swap(v, w)
    ccall((:gsl_vector_long_double_swap, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), v, w)
end

@doc md"""
    vector_long_double_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_long_double_swap_elements (gsl_vector_long_double * v, const size_t i, const size_t j)`
"""
function vector_long_double_swap_elements(v, i, j)
    ccall((:gsl_vector_long_double_swap_elements, libgsl), Cint, (Ref{gsl_vector_long_double}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_long_double_max(v) -> Cdouble

C signature:
`long double gsl_vector_long_double_max (const gsl_vector_long_double * v)`
"""
function vector_long_double_max(v)
    ccall((:gsl_vector_long_double_max, libgsl), Cdouble, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_min(v) -> Cdouble

C signature:
`long double gsl_vector_long_double_min (const gsl_vector_long_double * v)`
"""
function vector_long_double_min(v)
    ccall((:gsl_vector_long_double_min, libgsl), Cdouble, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_long_double_minmax (const gsl_vector_long_double * v, long double * min_out, long double * max_out)`
"""
function vector_long_double_minmax(v, min_out, max_out)
    ccall((:gsl_vector_long_double_minmax, libgsl), Cvoid, (Ref{gsl_vector_long_double}, Ref{Cdouble}, Ref{Cdouble}), v, min_out, max_out)
end

@doc md"""
    vector_long_double_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_long_double_max_index (const gsl_vector_long_double * v)`
"""
function vector_long_double_max_index(v)
    ccall((:gsl_vector_long_double_max_index, libgsl), Csize_t, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_long_double_min_index (const gsl_vector_long_double * v)`
"""
function vector_long_double_min_index(v)
    ccall((:gsl_vector_long_double_min_index, libgsl), Csize_t, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_long_double_minmax_index (const gsl_vector_long_double * v, size_t * imin, size_t * imax)`
"""
function vector_long_double_minmax_index(v, imin, imax)
    ccall((:gsl_vector_long_double_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_long_double}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_long_double_add(a, b) -> Cint

C signature:
`int gsl_vector_long_double_add (gsl_vector_long_double * a, const gsl_vector_long_double * b)`
"""
function vector_long_double_add(a, b)
    ccall((:gsl_vector_long_double_add, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), a, b)
end

@doc md"""
    vector_long_double_sub(a, b) -> Cint

C signature:
`int gsl_vector_long_double_sub (gsl_vector_long_double * a, const gsl_vector_long_double * b)`
"""
function vector_long_double_sub(a, b)
    ccall((:gsl_vector_long_double_sub, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), a, b)
end

@doc md"""
    vector_long_double_mul(a, b) -> Cint

C signature:
`int gsl_vector_long_double_mul (gsl_vector_long_double * a, const gsl_vector_long_double * b)`
"""
function vector_long_double_mul(a, b)
    ccall((:gsl_vector_long_double_mul, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), a, b)
end

@doc md"""
    vector_long_double_div(a, b) -> Cint

C signature:
`int gsl_vector_long_double_div (gsl_vector_long_double * a, const gsl_vector_long_double * b)`
"""
function vector_long_double_div(a, b)
    ccall((:gsl_vector_long_double_div, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), a, b)
end

@doc md"""
    vector_long_double_scale(a, x) -> Cint

C signature:
`int gsl_vector_long_double_scale (gsl_vector_long_double * a, const double x)`
"""
function vector_long_double_scale(a, x)
    ccall((:gsl_vector_long_double_scale, libgsl), Cint, (Ref{gsl_vector_long_double}, Cdouble), a, x)
end

@doc md"""
    vector_long_double_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_long_double_add_constant (gsl_vector_long_double * a, const double x)`
"""
function vector_long_double_add_constant(a, x)
    ccall((:gsl_vector_long_double_add_constant, libgsl), Cint, (Ref{gsl_vector_long_double}, Cdouble), a, x)
end

@doc md"""
    vector_long_double_equal(u, v) -> Cint

C signature:
`int gsl_vector_long_double_equal (const gsl_vector_long_double * u, const gsl_vector_long_double * v)`
"""
function vector_long_double_equal(u, v)
    ccall((:gsl_vector_long_double_equal, libgsl), Cint, (Ref{gsl_vector_long_double}, Ref{gsl_vector_long_double}), u, v)
end

@doc md"""
    vector_long_double_isnull(v) -> Cint

C signature:
`int gsl_vector_long_double_isnull (const gsl_vector_long_double * v)`
"""
function vector_long_double_isnull(v)
    ccall((:gsl_vector_long_double_isnull, libgsl), Cint, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_ispos(v) -> Cint

C signature:
`int gsl_vector_long_double_ispos (const gsl_vector_long_double * v)`
"""
function vector_long_double_ispos(v)
    ccall((:gsl_vector_long_double_ispos, libgsl), Cint, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_isneg(v) -> Cint

C signature:
`int gsl_vector_long_double_isneg (const gsl_vector_long_double * v)`
"""
function vector_long_double_isneg(v)
    ccall((:gsl_vector_long_double_isneg, libgsl), Cint, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_isnonneg(v) -> Cint

C signature:
`int gsl_vector_long_double_isnonneg (const gsl_vector_long_double * v)`
"""
function vector_long_double_isnonneg(v)
    ccall((:gsl_vector_long_double_isnonneg, libgsl), Cint, (Ptr{gsl_vector_long_double},), v)
end

@doc md"""
    vector_long_double_get(v, i) -> Cdouble

C signature:
`long double gsl_vector_long_double_get (const gsl_vector_long_double * v, const size_t i)`
"""
function vector_long_double_get(v, i)
    ccall((:gsl_vector_long_double_get, libgsl), Cdouble, (Ref{gsl_vector_long_double}, Csize_t), v, i)
end

@doc md"""
    vector_long_double_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_long_double_set (gsl_vector_long_double * v, const size_t i, long double x)`
"""
function vector_long_double_set(v, i, x)
    ccall((:gsl_vector_long_double_set, libgsl), Cvoid, (Ref{gsl_vector_long_double}, Csize_t, Cdouble), v, i, x)
end

@doc md"""
    vector_long_double_ptr(v, i) -> Ptr{Cdouble}

C signature:
`long double * gsl_vector_long_double_ptr (gsl_vector_long_double * v, const size_t i)`
"""
function vector_long_double_ptr(v, i)
    ccall((:gsl_vector_long_double_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector_long_double}, Csize_t), v, i)
end

@doc md"""
    vector_long_double_const_ptr(v, i) -> Ptr{Cdouble}

C signature:
`const long double * gsl_vector_long_double_const_ptr (const gsl_vector_long_double * v, const size_t i)`
"""
function vector_long_double_const_ptr(v, i)
    ccall((:gsl_vector_long_double_const_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector_long_double}, Csize_t), v, i)
end

