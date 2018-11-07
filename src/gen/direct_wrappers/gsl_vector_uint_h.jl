#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_uint.h ########################################################


@doc md"""
    vector_uint_alloc(n) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint *gsl_vector_uint_alloc (const size_t n)`
"""
function vector_uint_alloc(n)
    ccall((:gsl_vector_uint_alloc, libgsl), Ptr{gsl_vector_uint}, (Csize_t,), n)
end

@doc md"""
    vector_uint_calloc(n) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint *gsl_vector_uint_calloc (const size_t n)`
"""
function vector_uint_calloc(n)
    ccall((:gsl_vector_uint_calloc, libgsl), Ptr{gsl_vector_uint}, (Csize_t,), n)
end

@doc md"""
    vector_uint_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint *gsl_vector_uint_alloc_from_block (gsl_block_uint * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_uint_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_uint_alloc_from_block, libgsl), Ptr{gsl_vector_uint}, (Ref{gsl_block_uint}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_uint_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint *gsl_vector_uint_alloc_from_vector (gsl_vector_uint * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_uint_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_uint_alloc_from_vector, libgsl), Ptr{gsl_vector_uint}, (Ref{gsl_vector_uint}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_uint_free(v) -> Cvoid

C signature:
`void gsl_vector_uint_free (gsl_vector_uint * v)`
"""
function vector_uint_free(v)
    ccall((:gsl_vector_uint_free, libgsl), Cvoid, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_view_array(v, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_vector_uint_view_array (unsigned int *v, size_t n)`
"""
function vector_uint_view_array(v, n)
    ccall((:gsl_vector_uint_view_array, libgsl), _gsl_vector_uint_view, (Ref{Cuint}, Csize_t), v, n)
end

@doc md"""
    vector_uint_view_array_with_stride(base, stride, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_vector_uint_view_array_with_stride (unsigned int *base, size_t stride, size_t n)`
"""
function vector_uint_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_uint_view_array_with_stride, libgsl), _gsl_vector_uint_view, (Ref{Cuint}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_uint_const_view_array(v, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_vector_uint_const_view_array (const unsigned int *v, size_t n)`
"""
function vector_uint_const_view_array(v, n)
    ccall((:gsl_vector_uint_const_view_array, libgsl), _gsl_vector_uint_const_view, (Ref{Cuint}, Csize_t), v, n)
end

@doc md"""
    vector_uint_const_view_array_with_stride(base, stride, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_vector_uint_const_view_array_with_stride (const unsigned int *base, size_t stride, size_t n)`
"""
function vector_uint_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_uint_const_view_array_with_stride, libgsl), _gsl_vector_uint_const_view, (Ref{Cuint}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_uint_subvector(v, i, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_vector_uint_subvector (gsl_vector_uint *v, size_t i, size_t n)`
"""
function vector_uint_subvector(v, i, n)
    ccall((:gsl_vector_uint_subvector, libgsl), _gsl_vector_uint_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_uint_subvector_with_stride(v, i, stride, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_vector_uint_subvector_with_stride (gsl_vector_uint *v, size_t i, size_t stride, size_t n)`
"""
function vector_uint_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_uint_subvector_with_stride, libgsl), _gsl_vector_uint_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_uint_const_subvector(v, i, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_vector_uint_const_subvector (const gsl_vector_uint *v, size_t i, size_t n)`
"""
function vector_uint_const_subvector(v, i, n)
    ccall((:gsl_vector_uint_const_subvector, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_uint_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_vector_uint_const_subvector_with_stride (const gsl_vector_uint *v, size_t i, size_t stride, size_t n)`
"""
function vector_uint_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_uint_const_subvector_with_stride, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_uint_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_uint_set_zero (gsl_vector_uint * v)`
"""
function vector_uint_set_zero(v)
    ccall((:gsl_vector_uint_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_uint_set_all (gsl_vector_uint * v, unsigned int x)`
"""
function vector_uint_set_all(v, x)
    ccall((:gsl_vector_uint_set_all, libgsl), Cvoid, (Ref{gsl_vector_uint}, Cuint), v, x)
end

@doc md"""
    vector_uint_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_uint_set_basis (gsl_vector_uint * v, size_t i)`
"""
function vector_uint_set_basis(v, i)
    ccall((:gsl_vector_uint_set_basis, libgsl), Cint, (Ref{gsl_vector_uint}, Csize_t), v, i)
end

@doc md"""
    vector_uint_fread(stream, v) -> Cint

C signature:
`int gsl_vector_uint_fread (FILE * stream, gsl_vector_uint * v)`
"""
function vector_uint_fread(stream, v)
    ccall((:gsl_vector_uint_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uint}), stream, v)
end

@doc md"""
    vector_uint_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_uint_fwrite (FILE * stream, const gsl_vector_uint * v)`
"""
function vector_uint_fwrite(stream, v)
    ccall((:gsl_vector_uint_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uint}), stream, v)
end

@doc md"""
    vector_uint_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_uint_fscanf (FILE * stream, gsl_vector_uint * v)`
"""
function vector_uint_fscanf(stream, v)
    ccall((:gsl_vector_uint_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uint}), stream, v)
end

@doc md"""
    vector_uint_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_uint_fprintf (FILE * stream, const gsl_vector_uint * v, const char *format)`
"""
function vector_uint_fprintf(stream, v, format)
    ccall((:gsl_vector_uint_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_uint}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_uint_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_uint_memcpy (gsl_vector_uint * dest, const gsl_vector_uint * src)`
"""
function vector_uint_memcpy(dest, src)
    ccall((:gsl_vector_uint_memcpy, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), dest, src)
end

@doc md"""
    vector_uint_reverse(v) -> Cint

C signature:
`int gsl_vector_uint_reverse (gsl_vector_uint * v)`
"""
function vector_uint_reverse(v)
    ccall((:gsl_vector_uint_reverse, libgsl), Cint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_swap(v, w) -> Cint

C signature:
`int gsl_vector_uint_swap (gsl_vector_uint * v, gsl_vector_uint * w)`
"""
function vector_uint_swap(v, w)
    ccall((:gsl_vector_uint_swap, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), v, w)
end

@doc md"""
    vector_uint_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_uint_swap_elements (gsl_vector_uint * v, const size_t i, const size_t j)`
"""
function vector_uint_swap_elements(v, i, j)
    ccall((:gsl_vector_uint_swap_elements, libgsl), Cint, (Ref{gsl_vector_uint}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_uint_max(v) -> Cuint

C signature:
`unsigned int gsl_vector_uint_max (const gsl_vector_uint * v)`
"""
function vector_uint_max(v)
    ccall((:gsl_vector_uint_max, libgsl), Cuint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_min(v) -> Cuint

C signature:
`unsigned int gsl_vector_uint_min (const gsl_vector_uint * v)`
"""
function vector_uint_min(v)
    ccall((:gsl_vector_uint_min, libgsl), Cuint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_uint_minmax (const gsl_vector_uint * v, unsigned int * min_out, unsigned int * max_out)`
"""
function vector_uint_minmax(v, min_out, max_out)
    ccall((:gsl_vector_uint_minmax, libgsl), Cvoid, (Ref{gsl_vector_uint}, Ref{Cuint}, Ref{Cuint}), v, min_out, max_out)
end

@doc md"""
    vector_uint_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_uint_max_index (const gsl_vector_uint * v)`
"""
function vector_uint_max_index(v)
    ccall((:gsl_vector_uint_max_index, libgsl), Csize_t, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_uint_min_index (const gsl_vector_uint * v)`
"""
function vector_uint_min_index(v)
    ccall((:gsl_vector_uint_min_index, libgsl), Csize_t, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_uint_minmax_index (const gsl_vector_uint * v, size_t * imin, size_t * imax)`
"""
function vector_uint_minmax_index(v, imin, imax)
    ccall((:gsl_vector_uint_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_uint}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_uint_add(a, b) -> Cint

C signature:
`int gsl_vector_uint_add (gsl_vector_uint * a, const gsl_vector_uint * b)`
"""
function vector_uint_add(a, b)
    ccall((:gsl_vector_uint_add, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), a, b)
end

@doc md"""
    vector_uint_sub(a, b) -> Cint

C signature:
`int gsl_vector_uint_sub (gsl_vector_uint * a, const gsl_vector_uint * b)`
"""
function vector_uint_sub(a, b)
    ccall((:gsl_vector_uint_sub, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), a, b)
end

@doc md"""
    vector_uint_mul(a, b) -> Cint

C signature:
`int gsl_vector_uint_mul (gsl_vector_uint * a, const gsl_vector_uint * b)`
"""
function vector_uint_mul(a, b)
    ccall((:gsl_vector_uint_mul, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), a, b)
end

@doc md"""
    vector_uint_div(a, b) -> Cint

C signature:
`int gsl_vector_uint_div (gsl_vector_uint * a, const gsl_vector_uint * b)`
"""
function vector_uint_div(a, b)
    ccall((:gsl_vector_uint_div, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), a, b)
end

@doc md"""
    vector_uint_scale(a, x) -> Cint

C signature:
`int gsl_vector_uint_scale (gsl_vector_uint * a, const double x)`
"""
function vector_uint_scale(a, x)
    ccall((:gsl_vector_uint_scale, libgsl), Cint, (Ref{gsl_vector_uint}, Cdouble), a, x)
end

@doc md"""
    vector_uint_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_uint_add_constant (gsl_vector_uint * a, const double x)`
"""
function vector_uint_add_constant(a, x)
    ccall((:gsl_vector_uint_add_constant, libgsl), Cint, (Ref{gsl_vector_uint}, Cdouble), a, x)
end

@doc md"""
    vector_uint_equal(u, v) -> Cint

C signature:
`int gsl_vector_uint_equal (const gsl_vector_uint * u, const gsl_vector_uint * v)`
"""
function vector_uint_equal(u, v)
    ccall((:gsl_vector_uint_equal, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_vector_uint}), u, v)
end

@doc md"""
    vector_uint_isnull(v) -> Cint

C signature:
`int gsl_vector_uint_isnull (const gsl_vector_uint * v)`
"""
function vector_uint_isnull(v)
    ccall((:gsl_vector_uint_isnull, libgsl), Cint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_ispos(v) -> Cint

C signature:
`int gsl_vector_uint_ispos (const gsl_vector_uint * v)`
"""
function vector_uint_ispos(v)
    ccall((:gsl_vector_uint_ispos, libgsl), Cint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_isneg(v) -> Cint

C signature:
`int gsl_vector_uint_isneg (const gsl_vector_uint * v)`
"""
function vector_uint_isneg(v)
    ccall((:gsl_vector_uint_isneg, libgsl), Cint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_isnonneg(v) -> Cint

C signature:
`int gsl_vector_uint_isnonneg (const gsl_vector_uint * v)`
"""
function vector_uint_isnonneg(v)
    ccall((:gsl_vector_uint_isnonneg, libgsl), Cint, (Ptr{gsl_vector_uint},), v)
end

@doc md"""
    vector_uint_get(v, i) -> Cuint

C signature:
`unsigned int gsl_vector_uint_get (const gsl_vector_uint * v, const size_t i)`
"""
function vector_uint_get(v, i)
    ccall((:gsl_vector_uint_get, libgsl), Cuint, (Ref{gsl_vector_uint}, Csize_t), v, i)
end

@doc md"""
    vector_uint_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_uint_set (gsl_vector_uint * v, const size_t i, unsigned int x)`
"""
function vector_uint_set(v, i, x)
    ccall((:gsl_vector_uint_set, libgsl), Cvoid, (Ref{gsl_vector_uint}, Csize_t, Cuint), v, i, x)
end

@doc md"""
    vector_uint_ptr(v, i) -> Ptr{Cuint}

C signature:
`unsigned int * gsl_vector_uint_ptr (gsl_vector_uint * v, const size_t i)`
"""
function vector_uint_ptr(v, i)
    ccall((:gsl_vector_uint_ptr, libgsl), Ptr{Cuint}, (Ref{gsl_vector_uint}, Csize_t), v, i)
end

@doc md"""
    vector_uint_const_ptr(v, i) -> Ptr{Cuint}

C signature:
`const unsigned int * gsl_vector_uint_const_ptr (const gsl_vector_uint * v, const size_t i)`
"""
function vector_uint_const_ptr(v, i)
    ccall((:gsl_vector_uint_const_ptr, libgsl), Ptr{Cuint}, (Ref{gsl_vector_uint}, Csize_t), v, i)
end

