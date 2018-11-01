#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_double.h ######################################################


"""
    gsl_vector_alloc(n) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc (const size_t n)`
"""
function gsl_vector_alloc(n)
    ccall((:gsl_vector_alloc, libgsl), Ptr{gsl_vector}, (Csize_t,), n)
end

"""
    gsl_vector_calloc(n) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_calloc (const size_t n)`
"""
function gsl_vector_calloc(n)
    ccall((:gsl_vector_calloc, libgsl), Ptr{gsl_vector}, (Csize_t,), n)
end

"""
    gsl_vector_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc_from_block (gsl_block * b, const size_t offset, const size_t n, const size_t stride)`
"""
function gsl_vector_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_alloc_from_block, libgsl), Ptr{gsl_vector}, (Ref{gsl_block}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

"""
    gsl_vector_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc_from_vector (gsl_vector * v, const size_t offset, const size_t n, const size_t stride)`
"""
function gsl_vector_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_alloc_from_vector, libgsl), Ptr{gsl_vector}, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

"""
    gsl_vector_free(v) -> Cvoid

C signature:
`void gsl_vector_free (gsl_vector * v)`
"""
function gsl_vector_free(v)
    ccall((:gsl_vector_free, libgsl), Cvoid, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_view_array(v, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_view_array (double *v, size_t n)`
"""
function gsl_vector_view_array(v, n)
    ccall((:gsl_vector_view_array, libgsl), _gsl_vector_view, (Ref{Cdouble}, Csize_t), v, n)
end

"""
    gsl_vector_view_array_with_stride(base, stride, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_view_array_with_stride (double *base, size_t stride, size_t n)`
"""
function gsl_vector_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_view_array_with_stride, libgsl), _gsl_vector_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

"""
    gsl_vector_const_view_array(v, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_view_array (const double *v, size_t n)`
"""
function gsl_vector_const_view_array(v, n)
    ccall((:gsl_vector_const_view_array, libgsl), _gsl_vector_const_view, (Ref{Cdouble}, Csize_t), v, n)
end

"""
    gsl_vector_const_view_array_with_stride(base, stride, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_view_array_with_stride (const double *base, size_t stride, size_t n)`
"""
function gsl_vector_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_const_view_array_with_stride, libgsl), _gsl_vector_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

"""
    gsl_vector_subvector(v, i, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_subvector (gsl_vector *v, size_t i, size_t n)`
"""
function gsl_vector_subvector(v, i, n)
    ccall((:gsl_vector_subvector, libgsl), _gsl_vector_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, n)
end

"""
    gsl_vector_subvector_with_stride(v, i, stride, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_subvector_with_stride (gsl_vector *v, size_t i, size_t stride, size_t n)`
"""
function gsl_vector_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_subvector_with_stride, libgsl), _gsl_vector_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

"""
    gsl_vector_const_subvector(v, i, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_subvector (const gsl_vector *v, size_t i, size_t n)`
"""
function gsl_vector_const_subvector(v, i, n)
    ccall((:gsl_vector_const_subvector, libgsl), _gsl_vector_const_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, n)
end

"""
    gsl_vector_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_subvector_with_stride (const gsl_vector *v, size_t i, size_t stride, size_t n)`
"""
function gsl_vector_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_const_subvector_with_stride, libgsl), _gsl_vector_const_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

"""
    gsl_vector_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_set_zero (gsl_vector * v)`
"""
function gsl_vector_set_zero(v)
    ccall((:gsl_vector_set_zero, libgsl), Cvoid, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_set_all (gsl_vector * v, double x)`
"""
function gsl_vector_set_all(v, x)
    ccall((:gsl_vector_set_all, libgsl), Cvoid, (Ref{gsl_vector}, Cdouble), v, x)
end

"""
    gsl_vector_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_set_basis (gsl_vector * v, size_t i)`
"""
function gsl_vector_set_basis(v, i)
    ccall((:gsl_vector_set_basis, libgsl), Cint, (Ref{gsl_vector}, Csize_t), v, i)
end

"""
    gsl_vector_fread(stream, v) -> Cint

C signature:
`int gsl_vector_fread (FILE * stream, gsl_vector * v)`
"""
function gsl_vector_fread(stream, v)
    ccall((:gsl_vector_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

"""
    gsl_vector_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_fwrite (FILE * stream, const gsl_vector * v)`
"""
function gsl_vector_fwrite(stream, v)
    ccall((:gsl_vector_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

"""
    gsl_vector_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_fscanf (FILE * stream, gsl_vector * v)`
"""
function gsl_vector_fscanf(stream, v)
    ccall((:gsl_vector_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

"""
    gsl_vector_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_fprintf (FILE * stream, const gsl_vector * v, const char *format)`
"""
function gsl_vector_fprintf(stream, v, format)
    ccall((:gsl_vector_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}, Ref{Cchar}), stream, v, format)
end

"""
    gsl_vector_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_memcpy (gsl_vector * dest, const gsl_vector * src)`
"""
function gsl_vector_memcpy(dest, src)
    ccall((:gsl_vector_memcpy, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), dest, src)
end

"""
    gsl_vector_reverse(v) -> Cint

C signature:
`int gsl_vector_reverse (gsl_vector * v)`
"""
function gsl_vector_reverse(v)
    ccall((:gsl_vector_reverse, libgsl), Cint, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_swap(v, w) -> Cint

C signature:
`int gsl_vector_swap (gsl_vector * v, gsl_vector * w)`
"""
function gsl_vector_swap(v, w)
    ccall((:gsl_vector_swap, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), v, w)
end

"""
    gsl_vector_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_swap_elements (gsl_vector * v, const size_t i, const size_t j)`
"""
function gsl_vector_swap_elements(v, i, j)
    ccall((:gsl_vector_swap_elements, libgsl), Cint, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, j)
end

"""
    gsl_vector_max(v) -> Cdouble

C signature:
`double gsl_vector_max (const gsl_vector * v)`
"""
function gsl_vector_max(v)
    ccall((:gsl_vector_max, libgsl), Cdouble, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_min(v) -> Cdouble

C signature:
`double gsl_vector_min (const gsl_vector * v)`
"""
function gsl_vector_min(v)
    ccall((:gsl_vector_min, libgsl), Cdouble, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_minmax (const gsl_vector * v, double * min_out, double * max_out)`
"""
function gsl_vector_minmax(v, min_out, max_out)
    ccall((:gsl_vector_minmax, libgsl), Cvoid, (Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}), v, min_out, max_out)
end

"""
    gsl_vector_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_max_index (const gsl_vector * v)`
"""
function gsl_vector_max_index(v)
    ccall((:gsl_vector_max_index, libgsl), Csize_t, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_min_index (const gsl_vector * v)`
"""
function gsl_vector_min_index(v)
    ccall((:gsl_vector_min_index, libgsl), Csize_t, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_minmax_index (const gsl_vector * v, size_t * imin, size_t * imax)`
"""
function gsl_vector_minmax_index(v, imin, imax)
    ccall((:gsl_vector_minmax_index, libgsl), Cvoid, (Ref{gsl_vector}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

"""
    gsl_vector_add(a, b) -> Cint

C signature:
`int gsl_vector_add (gsl_vector * a, const gsl_vector * b)`
"""
function gsl_vector_add(a, b)
    ccall((:gsl_vector_add, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

"""
    gsl_vector_sub(a, b) -> Cint

C signature:
`int gsl_vector_sub (gsl_vector * a, const gsl_vector * b)`
"""
function gsl_vector_sub(a, b)
    ccall((:gsl_vector_sub, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

"""
    gsl_vector_mul(a, b) -> Cint

C signature:
`int gsl_vector_mul (gsl_vector * a, const gsl_vector * b)`
"""
function gsl_vector_mul(a, b)
    ccall((:gsl_vector_mul, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

"""
    gsl_vector_div(a, b) -> Cint

C signature:
`int gsl_vector_div (gsl_vector * a, const gsl_vector * b)`
"""
function gsl_vector_div(a, b)
    ccall((:gsl_vector_div, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

"""
    gsl_vector_scale(a, x) -> Cint

C signature:
`int gsl_vector_scale (gsl_vector * a, const double x)`
"""
function gsl_vector_scale(a, x)
    ccall((:gsl_vector_scale, libgsl), Cint, (Ref{gsl_vector}, Cdouble), a, x)
end

"""
    gsl_vector_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_add_constant (gsl_vector * a, const double x)`
"""
function gsl_vector_add_constant(a, x)
    ccall((:gsl_vector_add_constant, libgsl), Cint, (Ref{gsl_vector}, Cdouble), a, x)
end

"""
    gsl_vector_equal(u, v) -> Cint

C signature:
`int gsl_vector_equal (const gsl_vector * u, const gsl_vector * v)`
"""
function gsl_vector_equal(u, v)
    ccall((:gsl_vector_equal, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), u, v)
end

"""
    gsl_vector_isnull(v) -> Cint

C signature:
`int gsl_vector_isnull (const gsl_vector * v)`
"""
function gsl_vector_isnull(v)
    ccall((:gsl_vector_isnull, libgsl), Cint, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_ispos(v) -> Cint

C signature:
`int gsl_vector_ispos (const gsl_vector * v)`
"""
function gsl_vector_ispos(v)
    ccall((:gsl_vector_ispos, libgsl), Cint, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_isneg(v) -> Cint

C signature:
`int gsl_vector_isneg (const gsl_vector * v)`
"""
function gsl_vector_isneg(v)
    ccall((:gsl_vector_isneg, libgsl), Cint, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_isnonneg(v) -> Cint

C signature:
`int gsl_vector_isnonneg (const gsl_vector * v)`
"""
function gsl_vector_isnonneg(v)
    ccall((:gsl_vector_isnonneg, libgsl), Cint, (Ptr{gsl_vector},), v)
end

"""
    gsl_vector_get(v, i) -> Cdouble

C signature:
`double gsl_vector_get (const gsl_vector * v, const size_t i)`
"""
function gsl_vector_get(v, i)
    ccall((:gsl_vector_get, libgsl), Cdouble, (Ref{gsl_vector}, Csize_t), v, i)
end

"""
    gsl_vector_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_set (gsl_vector * v, const size_t i, double x)`
"""
function gsl_vector_set(v, i, x)
    ccall((:gsl_vector_set, libgsl), Cvoid, (Ref{gsl_vector}, Csize_t, Cdouble), v, i, x)
end

"""
    gsl_vector_ptr(v, i) -> Ptr{Cdouble}

C signature:
`double * gsl_vector_ptr (gsl_vector * v, const size_t i)`
"""
function gsl_vector_ptr(v, i)
    ccall((:gsl_vector_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector}, Csize_t), v, i)
end

"""
    gsl_vector_const_ptr(v, i) -> Ptr{Cdouble}

C signature:
`const double * gsl_vector_const_ptr (const gsl_vector * v, const size_t i)`
"""
function gsl_vector_const_ptr(v, i)
    ccall((:gsl_vector_const_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector}, Csize_t), v, i)
end

