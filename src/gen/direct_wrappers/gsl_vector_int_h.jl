#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_int.h #########################################################


@doc md"""
    vector_int_alloc(n) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int *gsl_vector_int_alloc (const size_t n)`
"""
function vector_int_alloc(n)
    ccall((:gsl_vector_int_alloc, libgsl), Ptr{gsl_vector_int}, (Csize_t,), n)
end

@doc md"""
    vector_int_calloc(n) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int *gsl_vector_int_calloc (const size_t n)`
"""
function vector_int_calloc(n)
    ccall((:gsl_vector_int_calloc, libgsl), Ptr{gsl_vector_int}, (Csize_t,), n)
end

@doc md"""
    vector_int_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int *gsl_vector_int_alloc_from_block (gsl_block_int * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_int_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_int_alloc_from_block, libgsl), Ptr{gsl_vector_int}, (Ref{gsl_block_int}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_int_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int *gsl_vector_int_alloc_from_vector (gsl_vector_int * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_int_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_int_alloc_from_vector, libgsl), Ptr{gsl_vector_int}, (Ref{gsl_vector_int}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_int_free(v) -> Cvoid

C signature:
`void gsl_vector_int_free (gsl_vector_int * v)`
"""
function vector_int_free(v)
    ccall((:gsl_vector_int_free, libgsl), Cvoid, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_view_array(v, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_vector_int_view_array (int *v, size_t n)`
"""
function vector_int_view_array(v, n)
    ccall((:gsl_vector_int_view_array, libgsl), _gsl_vector_int_view, (Ref{Cint}, Csize_t), v, n)
end

@doc md"""
    vector_int_view_array_with_stride(base, stride, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_vector_int_view_array_with_stride (int *base, size_t stride, size_t n)`
"""
function vector_int_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_int_view_array_with_stride, libgsl), _gsl_vector_int_view, (Ref{Cint}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_int_const_view_array(v, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_vector_int_const_view_array (const int *v, size_t n)`
"""
function vector_int_const_view_array(v, n)
    ccall((:gsl_vector_int_const_view_array, libgsl), _gsl_vector_int_const_view, (Ref{Cint}, Csize_t), v, n)
end

@doc md"""
    vector_int_const_view_array_with_stride(base, stride, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_vector_int_const_view_array_with_stride (const int *base, size_t stride, size_t n)`
"""
function vector_int_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_int_const_view_array_with_stride, libgsl), _gsl_vector_int_const_view, (Ref{Cint}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_int_subvector(v, i, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_vector_int_subvector (gsl_vector_int *v, size_t i, size_t n)`
"""
function vector_int_subvector(v, i, n)
    ccall((:gsl_vector_int_subvector, libgsl), _gsl_vector_int_view, (Ref{gsl_vector_int}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_int_subvector_with_stride(v, i, stride, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_vector_int_subvector_with_stride (gsl_vector_int *v, size_t i, size_t stride, size_t n)`
"""
function vector_int_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_int_subvector_with_stride, libgsl), _gsl_vector_int_view, (Ref{gsl_vector_int}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_int_const_subvector(v, i, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_vector_int_const_subvector (const gsl_vector_int *v, size_t i, size_t n)`
"""
function vector_int_const_subvector(v, i, n)
    ccall((:gsl_vector_int_const_subvector, libgsl), _gsl_vector_int_const_view, (Ref{gsl_vector_int}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_int_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_vector_int_const_subvector_with_stride (const gsl_vector_int *v, size_t i, size_t stride, size_t n)`
"""
function vector_int_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_int_const_subvector_with_stride, libgsl), _gsl_vector_int_const_view, (Ref{gsl_vector_int}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_int_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_int_set_zero (gsl_vector_int * v)`
"""
function vector_int_set_zero(v)
    ccall((:gsl_vector_int_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_int_set_all (gsl_vector_int * v, int x)`
"""
function vector_int_set_all(v, x)
    ccall((:gsl_vector_int_set_all, libgsl), Cvoid, (Ref{gsl_vector_int}, Cint), v, x)
end

@doc md"""
    vector_int_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_int_set_basis (gsl_vector_int * v, size_t i)`
"""
function vector_int_set_basis(v, i)
    ccall((:gsl_vector_int_set_basis, libgsl), Cint, (Ref{gsl_vector_int}, Csize_t), v, i)
end

@doc md"""
    vector_int_fread(stream, v) -> Cint

C signature:
`int gsl_vector_int_fread (FILE * stream, gsl_vector_int * v)`
"""
function vector_int_fread(stream, v)
    ccall((:gsl_vector_int_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_int}), stream, v)
end

@doc md"""
    vector_int_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_int_fwrite (FILE * stream, const gsl_vector_int * v)`
"""
function vector_int_fwrite(stream, v)
    ccall((:gsl_vector_int_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_int}), stream, v)
end

@doc md"""
    vector_int_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_int_fscanf (FILE * stream, gsl_vector_int * v)`
"""
function vector_int_fscanf(stream, v)
    ccall((:gsl_vector_int_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_int}), stream, v)
end

@doc md"""
    vector_int_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_int_fprintf (FILE * stream, const gsl_vector_int * v, const char *format)`
"""
function vector_int_fprintf(stream, v, format)
    ccall((:gsl_vector_int_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_int}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_int_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_int_memcpy (gsl_vector_int * dest, const gsl_vector_int * src)`
"""
function vector_int_memcpy(dest, src)
    ccall((:gsl_vector_int_memcpy, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), dest, src)
end

@doc md"""
    vector_int_reverse(v) -> Cint

C signature:
`int gsl_vector_int_reverse (gsl_vector_int * v)`
"""
function vector_int_reverse(v)
    ccall((:gsl_vector_int_reverse, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_swap(v, w) -> Cint

C signature:
`int gsl_vector_int_swap (gsl_vector_int * v, gsl_vector_int * w)`
"""
function vector_int_swap(v, w)
    ccall((:gsl_vector_int_swap, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), v, w)
end

@doc md"""
    vector_int_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_int_swap_elements (gsl_vector_int * v, const size_t i, const size_t j)`
"""
function vector_int_swap_elements(v, i, j)
    ccall((:gsl_vector_int_swap_elements, libgsl), Cint, (Ref{gsl_vector_int}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_int_max(v) -> Cint

C signature:
`int gsl_vector_int_max (const gsl_vector_int * v)`
"""
function vector_int_max(v)
    ccall((:gsl_vector_int_max, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_min(v) -> Cint

C signature:
`int gsl_vector_int_min (const gsl_vector_int * v)`
"""
function vector_int_min(v)
    ccall((:gsl_vector_int_min, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_int_minmax (const gsl_vector_int * v, int * min_out, int * max_out)`
"""
function vector_int_minmax(v, min_out, max_out)
    ccall((:gsl_vector_int_minmax, libgsl), Cvoid, (Ref{gsl_vector_int}, Ref{Cint}, Ref{Cint}), v, min_out, max_out)
end

@doc md"""
    vector_int_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_int_max_index (const gsl_vector_int * v)`
"""
function vector_int_max_index(v)
    ccall((:gsl_vector_int_max_index, libgsl), Csize_t, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_int_min_index (const gsl_vector_int * v)`
"""
function vector_int_min_index(v)
    ccall((:gsl_vector_int_min_index, libgsl), Csize_t, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_int_minmax_index (const gsl_vector_int * v, size_t * imin, size_t * imax)`
"""
function vector_int_minmax_index(v, imin, imax)
    ccall((:gsl_vector_int_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_int}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_int_add(a, b) -> Cint

C signature:
`int gsl_vector_int_add (gsl_vector_int * a, const gsl_vector_int * b)`
"""
function vector_int_add(a, b)
    ccall((:gsl_vector_int_add, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), a, b)
end

@doc md"""
    vector_int_sub(a, b) -> Cint

C signature:
`int gsl_vector_int_sub (gsl_vector_int * a, const gsl_vector_int * b)`
"""
function vector_int_sub(a, b)
    ccall((:gsl_vector_int_sub, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), a, b)
end

@doc md"""
    vector_int_mul(a, b) -> Cint

C signature:
`int gsl_vector_int_mul (gsl_vector_int * a, const gsl_vector_int * b)`
"""
function vector_int_mul(a, b)
    ccall((:gsl_vector_int_mul, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), a, b)
end

@doc md"""
    vector_int_div(a, b) -> Cint

C signature:
`int gsl_vector_int_div (gsl_vector_int * a, const gsl_vector_int * b)`
"""
function vector_int_div(a, b)
    ccall((:gsl_vector_int_div, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), a, b)
end

@doc md"""
    vector_int_scale(a, x) -> Cint

C signature:
`int gsl_vector_int_scale (gsl_vector_int * a, const double x)`
"""
function vector_int_scale(a, x)
    ccall((:gsl_vector_int_scale, libgsl), Cint, (Ref{gsl_vector_int}, Cdouble), a, x)
end

@doc md"""
    vector_int_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_int_add_constant (gsl_vector_int * a, const double x)`
"""
function vector_int_add_constant(a, x)
    ccall((:gsl_vector_int_add_constant, libgsl), Cint, (Ref{gsl_vector_int}, Cdouble), a, x)
end

@doc md"""
    vector_int_equal(u, v) -> Cint

C signature:
`int gsl_vector_int_equal (const gsl_vector_int * u, const gsl_vector_int * v)`
"""
function vector_int_equal(u, v)
    ccall((:gsl_vector_int_equal, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_vector_int}), u, v)
end

@doc md"""
    vector_int_isnull(v) -> Cint

C signature:
`int gsl_vector_int_isnull (const gsl_vector_int * v)`
"""
function vector_int_isnull(v)
    ccall((:gsl_vector_int_isnull, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_ispos(v) -> Cint

C signature:
`int gsl_vector_int_ispos (const gsl_vector_int * v)`
"""
function vector_int_ispos(v)
    ccall((:gsl_vector_int_ispos, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_isneg(v) -> Cint

C signature:
`int gsl_vector_int_isneg (const gsl_vector_int * v)`
"""
function vector_int_isneg(v)
    ccall((:gsl_vector_int_isneg, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_isnonneg(v) -> Cint

C signature:
`int gsl_vector_int_isnonneg (const gsl_vector_int * v)`
"""
function vector_int_isnonneg(v)
    ccall((:gsl_vector_int_isnonneg, libgsl), Cint, (Ptr{gsl_vector_int},), v)
end

@doc md"""
    vector_int_get(v, i) -> Cint

C signature:
`int gsl_vector_int_get (const gsl_vector_int * v, const size_t i)`
"""
function vector_int_get(v, i)
    ccall((:gsl_vector_int_get, libgsl), Cint, (Ref{gsl_vector_int}, Csize_t), v, i)
end

@doc md"""
    vector_int_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_int_set (gsl_vector_int * v, const size_t i, int x)`
"""
function vector_int_set(v, i, x)
    ccall((:gsl_vector_int_set, libgsl), Cvoid, (Ref{gsl_vector_int}, Csize_t, Cint), v, i, x)
end

@doc md"""
    vector_int_ptr(v, i) -> Ptr{Cint}

C signature:
`int * gsl_vector_int_ptr (gsl_vector_int * v, const size_t i)`
"""
function vector_int_ptr(v, i)
    ccall((:gsl_vector_int_ptr, libgsl), Ptr{Cint}, (Ref{gsl_vector_int}, Csize_t), v, i)
end

@doc md"""
    vector_int_const_ptr(v, i) -> Ptr{Cint}

C signature:
`const int * gsl_vector_int_const_ptr (const gsl_vector_int * v, const size_t i)`
"""
function vector_int_const_ptr(v, i)
    ccall((:gsl_vector_int_const_ptr, libgsl), Ptr{Cint}, (Ref{gsl_vector_int}, Csize_t), v, i)
end

