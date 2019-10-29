#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_char.h ########################################################


@doc md"""
    vector_char_alloc(n) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char *gsl_vector_char_alloc (const size_t n)`
"""
function vector_char_alloc(n)
    ccall((:gsl_vector_char_alloc, libgsl), Ptr{gsl_vector_char}, (Csize_t,), n)
end

@doc md"""
    vector_char_calloc(n) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char *gsl_vector_char_calloc (const size_t n)`
"""
function vector_char_calloc(n)
    ccall((:gsl_vector_char_calloc, libgsl), Ptr{gsl_vector_char}, (Csize_t,), n)
end

@doc md"""
    vector_char_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char *gsl_vector_char_alloc_from_block (gsl_block_char * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_char_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_char_alloc_from_block, libgsl), Ptr{gsl_vector_char}, (Ref{gsl_block_char}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_char_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char *gsl_vector_char_alloc_from_vector (gsl_vector_char * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_char_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_char_alloc_from_vector, libgsl), Ptr{gsl_vector_char}, (Ref{gsl_vector_char}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_char_free(v) -> Cvoid

C signature:
`void gsl_vector_char_free (gsl_vector_char * v)`
"""
function vector_char_free(v)
    ccall((:gsl_vector_char_free, libgsl), Cvoid, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_view_array(v, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_vector_char_view_array (char *v, size_t n)`
"""
function vector_char_view_array(v, n)
    ccall((:gsl_vector_char_view_array, libgsl), _gsl_vector_char_view, (Ref{Cchar}, Csize_t), v, n)
end

@doc md"""
    vector_char_view_array_with_stride(base, stride, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_vector_char_view_array_with_stride (char *base, size_t stride, size_t n)`
"""
function vector_char_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_char_view_array_with_stride, libgsl), _gsl_vector_char_view, (Ref{Cchar}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_char_const_view_array(v, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_vector_char_const_view_array (const char *v, size_t n)`
"""
function vector_char_const_view_array(v, n)
    ccall((:gsl_vector_char_const_view_array, libgsl), _gsl_vector_char_const_view, (Ref{Cchar}, Csize_t), v, n)
end

@doc md"""
    vector_char_const_view_array_with_stride(base, stride, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_vector_char_const_view_array_with_stride (const char *base, size_t stride, size_t n)`
"""
function vector_char_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_char_const_view_array_with_stride, libgsl), _gsl_vector_char_const_view, (Ref{Cchar}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_char_subvector(v, i, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_vector_char_subvector (gsl_vector_char *v, size_t i, size_t n)`
"""
function vector_char_subvector(v, i, n)
    ccall((:gsl_vector_char_subvector, libgsl), _gsl_vector_char_view, (Ref{gsl_vector_char}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_char_subvector_with_stride(v, i, stride, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_vector_char_subvector_with_stride (gsl_vector_char *v, size_t i, size_t stride, size_t n)`
"""
function vector_char_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_char_subvector_with_stride, libgsl), _gsl_vector_char_view, (Ref{gsl_vector_char}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_char_const_subvector(v, i, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_vector_char_const_subvector (const gsl_vector_char *v, size_t i, size_t n)`
"""
function vector_char_const_subvector(v, i, n)
    ccall((:gsl_vector_char_const_subvector, libgsl), _gsl_vector_char_const_view, (Ref{gsl_vector_char}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_char_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_vector_char_const_subvector_with_stride (const gsl_vector_char *v, size_t i, size_t stride, size_t n)`
"""
function vector_char_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_char_const_subvector_with_stride, libgsl), _gsl_vector_char_const_view, (Ref{gsl_vector_char}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_char_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_char_set_zero (gsl_vector_char * v)`
"""
function vector_char_set_zero(v)
    ccall((:gsl_vector_char_set_zero, libgsl), Cvoid, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_char_set_all (gsl_vector_char * v, char x)`
"""
function vector_char_set_all(v, x)
    ccall((:gsl_vector_char_set_all, libgsl), Cvoid, (Ref{gsl_vector_char}, Cchar), v, x)
end

@doc md"""
    vector_char_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_char_set_basis (gsl_vector_char * v, size_t i)`
"""
function vector_char_set_basis(v, i)
    ccall((:gsl_vector_char_set_basis, libgsl), Cint, (Ref{gsl_vector_char}, Csize_t), v, i)
end

@doc md"""
    vector_char_fread(stream, v) -> Cint

C signature:
`int gsl_vector_char_fread (FILE * stream, gsl_vector_char * v)`
"""
function vector_char_fread(stream, v)
    ccall((:gsl_vector_char_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_char}), stream, v)
end

@doc md"""
    vector_char_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_char_fwrite (FILE * stream, const gsl_vector_char * v)`
"""
function vector_char_fwrite(stream, v)
    ccall((:gsl_vector_char_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_char}), stream, v)
end

@doc md"""
    vector_char_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_char_fscanf (FILE * stream, gsl_vector_char * v)`
"""
function vector_char_fscanf(stream, v)
    ccall((:gsl_vector_char_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_char}), stream, v)
end

@doc md"""
    vector_char_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_char_fprintf (FILE * stream, const gsl_vector_char * v, const char *format)`
"""
function vector_char_fprintf(stream, v, format)
    ccall((:gsl_vector_char_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector_char}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_char_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_char_memcpy (gsl_vector_char * dest, const gsl_vector_char * src)`
"""
function vector_char_memcpy(dest, src)
    ccall((:gsl_vector_char_memcpy, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), dest, src)
end

@doc md"""
    vector_char_reverse(v) -> Cint

C signature:
`int gsl_vector_char_reverse (gsl_vector_char * v)`
"""
function vector_char_reverse(v)
    ccall((:gsl_vector_char_reverse, libgsl), Cint, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_swap(v, w) -> Cint

C signature:
`int gsl_vector_char_swap (gsl_vector_char * v, gsl_vector_char * w)`
"""
function vector_char_swap(v, w)
    ccall((:gsl_vector_char_swap, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), v, w)
end

@doc md"""
    vector_char_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_char_swap_elements (gsl_vector_char * v, const size_t i, const size_t j)`
"""
function vector_char_swap_elements(v, i, j)
    ccall((:gsl_vector_char_swap_elements, libgsl), Cint, (Ref{gsl_vector_char}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_char_max(v) -> Cchar

C signature:
`char gsl_vector_char_max (const gsl_vector_char * v)`
"""
function vector_char_max(v)
    ccall((:gsl_vector_char_max, libgsl), Cchar, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_min(v) -> Cchar

C signature:
`char gsl_vector_char_min (const gsl_vector_char * v)`
"""
function vector_char_min(v)
    ccall((:gsl_vector_char_min, libgsl), Cchar, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_char_minmax (const gsl_vector_char * v, char * min_out, char * max_out)`
"""
function vector_char_minmax(v, min_out, max_out)
    ccall((:gsl_vector_char_minmax, libgsl), Cvoid, (Ref{gsl_vector_char}, Ref{Cchar}, Ref{Cchar}), v, min_out, max_out)
end

@doc md"""
    vector_char_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_char_max_index (const gsl_vector_char * v)`
"""
function vector_char_max_index(v)
    ccall((:gsl_vector_char_max_index, libgsl), Csize_t, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_char_min_index (const gsl_vector_char * v)`
"""
function vector_char_min_index(v)
    ccall((:gsl_vector_char_min_index, libgsl), Csize_t, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_char_minmax_index (const gsl_vector_char * v, size_t * imin, size_t * imax)`
"""
function vector_char_minmax_index(v, imin, imax)
    ccall((:gsl_vector_char_minmax_index, libgsl), Cvoid, (Ref{gsl_vector_char}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_char_add(a, b) -> Cint

C signature:
`int gsl_vector_char_add (gsl_vector_char * a, const gsl_vector_char * b)`
"""
function vector_char_add(a, b)
    ccall((:gsl_vector_char_add, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), a, b)
end

@doc md"""
    vector_char_sub(a, b) -> Cint

C signature:
`int gsl_vector_char_sub (gsl_vector_char * a, const gsl_vector_char * b)`
"""
function vector_char_sub(a, b)
    ccall((:gsl_vector_char_sub, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), a, b)
end

@doc md"""
    vector_char_mul(a, b) -> Cint

C signature:
`int gsl_vector_char_mul (gsl_vector_char * a, const gsl_vector_char * b)`
"""
function vector_char_mul(a, b)
    ccall((:gsl_vector_char_mul, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), a, b)
end

@doc md"""
    vector_char_div(a, b) -> Cint

C signature:
`int gsl_vector_char_div (gsl_vector_char * a, const gsl_vector_char * b)`
"""
function vector_char_div(a, b)
    ccall((:gsl_vector_char_div, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), a, b)
end

@doc md"""
    vector_char_scale(a, x) -> Cint

C signature:
`int gsl_vector_char_scale (gsl_vector_char * a, const char x)`
"""
function vector_char_scale(a, x)
    ccall((:gsl_vector_char_scale, libgsl), Cint, (Ref{gsl_vector_char}, Cchar), a, x)
end

@doc md"""
    vector_char_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_char_add_constant (gsl_vector_char * a, const double x)`
"""
function vector_char_add_constant(a, x)
    ccall((:gsl_vector_char_add_constant, libgsl), Cint, (Ref{gsl_vector_char}, Cdouble), a, x)
end

@doc md"""
    vector_char_axpby(alpha, x, beta, y) -> Cint

C signature:
`int gsl_vector_char_axpby (const char alpha, const gsl_vector_char * x, const char beta, gsl_vector_char * y)`
"""
function vector_char_axpby(alpha, x, beta, y)
    ccall((:gsl_vector_char_axpby, libgsl), Cint, (Cchar, Ref{gsl_vector_char}, Cchar, Ref{gsl_vector_char}), alpha, x, beta, y)
end

@doc md"""
    vector_char_equal(u, v) -> Cint

C signature:
`int gsl_vector_char_equal (const gsl_vector_char * u, const gsl_vector_char * v)`
"""
function vector_char_equal(u, v)
    ccall((:gsl_vector_char_equal, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_vector_char}), u, v)
end

@doc md"""
    vector_char_isnull(v) -> Cint

C signature:
`int gsl_vector_char_isnull (const gsl_vector_char * v)`
"""
function vector_char_isnull(v)
    ccall((:gsl_vector_char_isnull, libgsl), Cint, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_ispos(v) -> Cint

C signature:
`int gsl_vector_char_ispos (const gsl_vector_char * v)`
"""
function vector_char_ispos(v)
    ccall((:gsl_vector_char_ispos, libgsl), Cint, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_isneg(v) -> Cint

C signature:
`int gsl_vector_char_isneg (const gsl_vector_char * v)`
"""
function vector_char_isneg(v)
    ccall((:gsl_vector_char_isneg, libgsl), Cint, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_isnonneg(v) -> Cint

C signature:
`int gsl_vector_char_isnonneg (const gsl_vector_char * v)`
"""
function vector_char_isnonneg(v)
    ccall((:gsl_vector_char_isnonneg, libgsl), Cint, (Ptr{gsl_vector_char},), v)
end

@doc md"""
    vector_char_get(v, i) -> Cchar

C signature:
`char gsl_vector_char_get (const gsl_vector_char * v, const size_t i)`
"""
function vector_char_get(v, i)
    ccall((:gsl_vector_char_get, libgsl), Cchar, (Ref{gsl_vector_char}, Csize_t), v, i)
end

@doc md"""
    vector_char_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_char_set (gsl_vector_char * v, const size_t i, char x)`
"""
function vector_char_set(v, i, x)
    ccall((:gsl_vector_char_set, libgsl), Cvoid, (Ref{gsl_vector_char}, Csize_t, Cchar), v, i, x)
end

@doc md"""
    vector_char_ptr(v, i) -> Ptr{Cchar}

C signature:
`char * gsl_vector_char_ptr (gsl_vector_char * v, const size_t i)`
"""
function vector_char_ptr(v, i)
    ccall((:gsl_vector_char_ptr, libgsl), Ptr{Cchar}, (Ref{gsl_vector_char}, Csize_t), v, i)
end

@doc md"""
    vector_char_const_ptr(v, i) -> Ptr{Cchar}

C signature:
`const char * gsl_vector_char_const_ptr (const gsl_vector_char * v, const size_t i)`
"""
function vector_char_const_ptr(v, i)
    ccall((:gsl_vector_char_const_ptr, libgsl), Ptr{Cchar}, (Ref{gsl_vector_char}, Csize_t), v, i)
end

