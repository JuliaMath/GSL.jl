#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_float.h #######################################################


@doc md"""
    vector_float_alloc(n) -> Ptr{gsl_vector_float}

C signature:
`gsl_vector_float *gsl_vector_float_alloc (const size_t n)`
"""
function vector_float_alloc(n)
    ccall((:gsl_vector_float_alloc, libgsl), Ptr{gsl_vector_float}, (Csize_t,), n)
end

@doc md"""
    vector_float_calloc(n) -> Ptr{gsl_vector_float}

C signature:
`gsl_vector_float *gsl_vector_float_calloc (const size_t n)`
"""
function vector_float_calloc(n)
    ccall((:gsl_vector_float_calloc, libgsl), Ptr{gsl_vector_float}, (Csize_t,), n)
end

@doc md"""
    vector_float_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_float}

C signature:
`gsl_vector_float *gsl_vector_float_alloc_from_block (gsl_block_float * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_float_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_float_alloc_from_block, libgsl), Ptr{gsl_vector_float}, (Ref{gsl_block_float}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_float_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_float}

C signature:
`gsl_vector_float *gsl_vector_float_alloc_from_vector (gsl_vector_float * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_float_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_float_alloc_from_vector, libgsl), Ptr{gsl_vector_float}, (Ref{gsl_vector_float}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_float_free(v) -> Cvoid

C signature:
`void gsl_vector_float_free (gsl_vector_float * v)`
"""
function vector_float_free(v)
    ccall((:gsl_vector_float_free, libgsl), Cvoid, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_view_array(v, n) -> _gsl_vector_float_view

C signature:
`_gsl_vector_float_view gsl_vector_float_view_array (float *v, size_t n)`
"""
function vector_float_view_array(v, n)
    ccall((:gsl_vector_float_view_array, libgsl), _gsl_vector_float_view, (Ref{Cfloat}, Csize_t), v, n)
end

@doc md"""
    vector_float_view_array_with_stride(base, stride, n) -> _gsl_vector_float_view

C signature:
`_gsl_vector_float_view gsl_vector_float_view_array_with_stride (float *base, size_t stride, size_t n)`
"""
function vector_float_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_float_view_array_with_stride, libgsl), _gsl_vector_float_view, (Ref{Cfloat}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_float_const_view_array(v, n) -> _gsl_vector_float_const_view

C signature:
`_gsl_vector_float_const_view gsl_vector_float_const_view_array (const float *v, size_t n)`
"""
function vector_float_const_view_array(v, n)
    ccall((:gsl_vector_float_const_view_array, libgsl), _gsl_vector_float_const_view, (Ref{Cfloat}, Csize_t), v, n)
end

@doc md"""
    vector_float_const_view_array_with_stride(base, stride, n) -> _gsl_vector_float_const_view

C signature:
`_gsl_vector_float_const_view gsl_vector_float_const_view_array_with_stride (const float *base, size_t stride, size_t n)`
"""
function vector_float_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_float_const_view_array_with_stride, libgsl), _gsl_vector_float_const_view, (Ref{Cfloat}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_float_subvector(v, i, n) -> _gsl_vector_float_view

C signature:
`_gsl_vector_float_view gsl_vector_float_subvector (gsl_vector_float *v, size_t i, size_t n)`
"""
function vector_float_subvector(v, i, n)
    ccall((:gsl_vector_float_subvector, libgsl), _gsl_vector_float_view, (Ref{gsl_vector_float}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_float_subvector_with_stride(v, i, stride, n) -> _gsl_vector_float_view

C signature:
`_gsl_vector_float_view gsl_vector_float_subvector_with_stride (gsl_vector_float *v, size_t i, size_t stride, size_t n)`
"""
function vector_float_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_float_subvector_with_stride, libgsl), _gsl_vector_float_view, (Ref{gsl_vector_float}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_float_const_subvector(v, i, n) -> _gsl_vector_float_const_view

C signature:
`_gsl_vector_float_const_view gsl_vector_float_const_subvector (const gsl_vector_float *v, size_t i, size_t n)`
"""
function vector_float_const_subvector(v, i, n)
    ccall((:gsl_vector_float_const_subvector, libgsl), _gsl_vector_float_const_view, (Ref{gsl_vector_float}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_float_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_float_const_view

C signature:
`_gsl_vector_float_const_view gsl_vector_float_const_subvector_with_stride (const gsl_vector_float *v, size_t i, size_t stride, size_t n)`
"""
function vector_float_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_float_const_subvector_with_stride, libgsl), _gsl_vector_float_const_view, (Ref{gsl_vector_float}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_float_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_float_set_zero (gsl_vector_float * v)`
"""
function vector_float_set_zero(v)
    ccall((:gsl_vector_float_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_float_set_all (gsl_vector_float * v, float x)`
"""
function vector_float_set_all(v, x)
    ccall((:gsl_vector_float_set_all, libgsl), Cvoid, (Ref{gsl_vector_float}, Cfloat), v, x)
end

@doc md"""
    vector_float_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_float_set_basis (gsl_vector_float * v, size_t i)`
"""
function vector_float_set_basis(v, i)
    ccall((:gsl_vector_float_set_basis, libgsl), Cint, (Ref{gsl_vector_float}, Csize_t), v, i)
end

@doc md"""
    vector_float_fread(stream, v) -> Cint

C signature:
`int gsl_vector_float_fread (FILE * stream, gsl_vector_float * v)`
"""
function vector_float_fread(stream, v)
    ccall((:gsl_vector_float_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_float}), stream, v)
end

@doc md"""
    vector_float_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_float_fwrite (FILE * stream, const gsl_vector_float * v)`
"""
function vector_float_fwrite(stream, v)
    ccall((:gsl_vector_float_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_float}), stream, v)
end

@doc md"""
    vector_float_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_float_fscanf (FILE * stream, gsl_vector_float * v)`
"""
function vector_float_fscanf(stream, v)
    ccall((:gsl_vector_float_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_float}), stream, v)
end

@doc md"""
    vector_float_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_float_fprintf (FILE * stream, const gsl_vector_float * v, const char *format)`
"""
function vector_float_fprintf(stream, v, format)
    ccall((:gsl_vector_float_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_float}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_float_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_float_memcpy (gsl_vector_float * dest, const gsl_vector_float * src)`
"""
function vector_float_memcpy(dest, src)
    ccall((:gsl_vector_float_memcpy, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), dest, src)
end

@doc md"""
    vector_float_reverse(v) -> Cint

C signature:
`int gsl_vector_float_reverse (gsl_vector_float * v)`
"""
function vector_float_reverse(v)
    ccall((:gsl_vector_float_reverse, libgsl), Cint, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_swap(v, w) -> Cint

C signature:
`int gsl_vector_float_swap (gsl_vector_float * v, gsl_vector_float * w)`
"""
function vector_float_swap(v, w)
    ccall((:gsl_vector_float_swap, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), v, w)
end

@doc md"""
    vector_float_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_float_swap_elements (gsl_vector_float * v, const size_t i, const size_t j)`
"""
function vector_float_swap_elements(v, i, j)
    ccall((:gsl_vector_float_swap_elements, libgsl), Cint, (Ref{gsl_vector_float}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_float_max(v) -> Cfloat

C signature:
`float gsl_vector_float_max (const gsl_vector_float * v)`
"""
function vector_float_max(v)
    ccall((:gsl_vector_float_max, libgsl), Cfloat, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_min(v) -> Cfloat

C signature:
`float gsl_vector_float_min (const gsl_vector_float * v)`
"""
function vector_float_min(v)
    ccall((:gsl_vector_float_min, libgsl), Cfloat, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_float_minmax (const gsl_vector_float * v, float * min_out, float * max_out)`
"""
function vector_float_minmax(v, min_out, max_out)
    ccall((:gsl_vector_float_minmax, libgsl), Cvoid, (Ref{gsl_vector_float}, Ref{Cfloat}, Ref{Cfloat}), v, min_out, max_out)
end

@doc md"""
    vector_float_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_float_max_index (const gsl_vector_float * v)`
"""
function vector_float_max_index(v)
    ccall((:gsl_vector_float_max_index, libgsl), Csize_t, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_float_min_index (const gsl_vector_float * v)`
"""
function vector_float_min_index(v)
    ccall((:gsl_vector_float_min_index, libgsl), Csize_t, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_float_minmax_index (const gsl_vector_float * v, size_t * imin, size_t * imax)`
"""
function vector_float_minmax_index(v, imin, imax)
    ccall((:gsl_vector_float_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_float}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_float_add(a, b) -> Cint

C signature:
`int gsl_vector_float_add (gsl_vector_float * a, const gsl_vector_float * b)`
"""
function vector_float_add(a, b)
    ccall((:gsl_vector_float_add, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), a, b)
end

@doc md"""
    vector_float_sub(a, b) -> Cint

C signature:
`int gsl_vector_float_sub (gsl_vector_float * a, const gsl_vector_float * b)`
"""
function vector_float_sub(a, b)
    ccall((:gsl_vector_float_sub, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), a, b)
end

@doc md"""
    vector_float_mul(a, b) -> Cint

C signature:
`int gsl_vector_float_mul (gsl_vector_float * a, const gsl_vector_float * b)`
"""
function vector_float_mul(a, b)
    ccall((:gsl_vector_float_mul, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), a, b)
end

@doc md"""
    vector_float_div(a, b) -> Cint

C signature:
`int gsl_vector_float_div (gsl_vector_float * a, const gsl_vector_float * b)`
"""
function vector_float_div(a, b)
    ccall((:gsl_vector_float_div, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), a, b)
end

@doc md"""
    vector_float_scale(a, x) -> Cint

C signature:
`int gsl_vector_float_scale (gsl_vector_float * a, const float x)`
"""
function vector_float_scale(a, x)
    ccall((:gsl_vector_float_scale, libgsl), Cint, (Ref{gsl_vector_float}, Cfloat), a, x)
end

@doc md"""
    vector_float_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_float_add_constant (gsl_vector_float * a, const double x)`
"""
function vector_float_add_constant(a, x)
    ccall((:gsl_vector_float_add_constant, libgsl), Cint, (Ref{gsl_vector_float}, Cdouble), a, x)
end

@doc md"""
    vector_float_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_float_axpby (const float alpha, const gsl_vector_float * x, const float beta, gsl_vector_float * y)`
"""
function vector_float_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_float_axpby, libgsl), Cint, (Cfloat, Ref{gsl_vector_float}, Cfloat, Ref{gsl_vector_float}), alpha, x, beta, y)
end

@doc md"""
    vector_float_equal(u, v) -> Cint

C signature:
`int gsl_vector_float_equal (const gsl_vector_float * u, const gsl_vector_float * v)`
"""
function vector_float_equal(u, v)
    ccall((:gsl_vector_float_equal, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), u, v)
end

@doc md"""
    vector_float_isnull(v) -> Cint

C signature:
`int gsl_vector_float_isnull (const gsl_vector_float * v)`
"""
function vector_float_isnull(v)
    ccall((:gsl_vector_float_isnull, libgsl), Cint, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_ispos(v) -> Cint

C signature:
`int gsl_vector_float_ispos (const gsl_vector_float * v)`
"""
function vector_float_ispos(v)
    ccall((:gsl_vector_float_ispos, libgsl), Cint, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_isneg(v) -> Cint

C signature:
`int gsl_vector_float_isneg (const gsl_vector_float * v)`
"""
function vector_float_isneg(v)
    ccall((:gsl_vector_float_isneg, libgsl), Cint, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_isnonneg(v) -> Cint

C signature:
`int gsl_vector_float_isnonneg (const gsl_vector_float * v)`
"""
function vector_float_isnonneg(v)
    ccall((:gsl_vector_float_isnonneg, libgsl), Cint, (Ptr{gsl_vector_float},), v)
end

@doc md"""
    vector_float_get(v, i) -> Cfloat

C signature:
`float gsl_vector_float_get (const gsl_vector_float * v, const size_t i)`
"""
function vector_float_get(v, i)
    ccall((:gsl_vector_float_get, libgsl), Cfloat, (Ref{gsl_vector_float}, Csize_t), v, i)
end

@doc md"""
    vector_float_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_float_set (gsl_vector_float * v, const size_t i, float x)`
"""
function vector_float_set(v, i, x)
    ccall((:gsl_vector_float_set, libgsl), Cvoid, (Ref{gsl_vector_float}, Csize_t, Cfloat), v, i, x)
end

@doc md"""
    vector_float_ptr(v, i) -> Ptr{Cfloat}

C signature:
`float * gsl_vector_float_ptr (gsl_vector_float * v, const size_t i)`
"""
function vector_float_ptr(v, i)
    ccall((:gsl_vector_float_ptr, libgsl), Ptr{Cfloat}, (Ref{gsl_vector_float}, Csize_t), v, i)
end

@doc md"""
    vector_float_const_ptr(v, i) -> Ptr{Cfloat}

C signature:
`const float * gsl_vector_float_const_ptr (const gsl_vector_float * v, const size_t i)`
"""
function vector_float_const_ptr(v, i)
    ccall((:gsl_vector_float_const_ptr, libgsl), Ptr{Cfloat}, (Ref{gsl_vector_float}, Csize_t), v, i)
end

