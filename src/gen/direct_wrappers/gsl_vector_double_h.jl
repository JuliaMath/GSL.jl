#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_vector_double.h ######################################################


@doc md"""
    vector_alloc(n) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc (const size_t n)`

GSL documentation:

### `gsl_vector * gsl_vector_alloc (size_t n)`

> This function creates a vector of length n, returning a pointer to a
> newly initialized vector struct. A new block is allocated for the
> elements of the vector, and stored in the `block` component of the
> vector struct. The block is "owned" by the vector, and will be
> deallocated when the vector is deallocated. Zero-sized requests are
> valid and return a non-null result.

"""
function vector_alloc(n)
    ccall((:gsl_vector_alloc, libgsl), Ptr{gsl_vector}, (Csize_t,), n)
end

@doc md"""
    vector_calloc(n) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_calloc (const size_t n)`

GSL documentation:

### `gsl_vector * gsl_vector_calloc (size_t n)`

> This function allocates memory for a vector of length `n` and
> initializes all the elements of the vector to zero.

"""
function vector_calloc(n)
    ccall((:gsl_vector_calloc, libgsl), Ptr{gsl_vector}, (Csize_t,), n)
end

@doc md"""
    vector_alloc_from_block(b, offset, n, stride) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc_from_block (gsl_block * b, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_alloc_from_block(b, offset, n, stride)
    ccall((:gsl_vector_alloc_from_block, libgsl), Ptr{gsl_vector}, (Ref{gsl_block}, Csize_t, Csize_t, Csize_t), b, offset, n, stride)
end

@doc md"""
    vector_alloc_from_vector(v, offset, n, stride) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_vector_alloc_from_vector (gsl_vector * v, const size_t offset, const size_t n, const size_t stride)`
"""
function vector_alloc_from_vector(v, offset, n, stride)
    ccall((:gsl_vector_alloc_from_vector, libgsl), Ptr{gsl_vector}, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, offset, n, stride)
end

@doc md"""
    vector_free(v) -> Cvoid

C signature:
`void gsl_vector_free (gsl_vector * v)`

GSL documentation:

### `void gsl_vector_free (gsl_vector * v)`

> This function frees a previously allocated vector `v`. If the vector
> was created using `gsl_vector_alloc` then the block underlying the
> vector will also be deallocated. If the vector has been created from
> another object then the memory is still owned by that object and will
> not be deallocated.

"""
function vector_free(v)
    ccall((:gsl_vector_free, libgsl), Cvoid, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_view_array(v, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_view_array (double *v, size_t n)`

GSL documentation:

### `gsl_vector_view gsl_vector_view_array (double * base, size_t n)`

> gsl\_vector\_const\_view gsl\_vector\_const\_view\_array (const double
> \* base, size\_t n)

> These functions return a vector view of an array. The start of the new
> vector is given by `base` and has `n` elements. Mathematically, the
> `i`-th element of the new vector `v'` is given by:
>
>     v'(i) = base[i]
>
> where the index `i` runs from 0 to `n - 1`.
>
> The array containing the elements of `v` is not owned by the new
> vector view. When the view goes out of scope the original array will
> continue to exist. The original memory can only be deallocated by
> freeing the original pointer `base`. Of course, the original array
> should not be deallocated while the view is still in use.
>
> The function `gsl_vector_const_view_array` is equivalent to
> `gsl_vector_view_array` but can be used for arrays which are declared
> `const`.

"""
function vector_view_array(v, n)
    ccall((:gsl_vector_view_array, libgsl), _gsl_vector_view, (Ref{Cdouble}, Csize_t), v, n)
end

@doc md"""
    vector_view_array_with_stride(base, stride, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_view_array_with_stride (double *base, size_t stride, size_t n)`

GSL documentation:

### `gsl_vector_view gsl_vector_view_array_with_stride (double * base, size_t stride, size_t n)`

> gsl\_vector\_const\_view gsl\_vector\_const\_view\_array\_with\_stride
> (const double \* base, size\_t stride, size\_t n)

> These functions return a vector view of an array `base` with an
> additional stride argument. The subvector is formed in the same way as
> for `gsl_vector_view_array` but the new vector has `n` elements with a
> step-size of `stride` from one element to the next in the original
> array. Mathematically, the `i`-th element of the new vector `v'` is
> given by:
>
>     v'(i) = base[i*stride]
>
> where the index `i` runs from 0 to `n - 1`.
>
> Note that the view gives direct access to the underlying elements of
> the original array. A vector view can be passed to any subroutine
> which takes a vector argument just as a directly allocated vector
> would be, using `&view.vector`.
>
> The function `gsl_vector_const_view_array_with_stride` is equivalent
> to `gsl_vector_view_array_with_stride` but can be used for arrays
> which are declared `const`.

"""
function vector_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_view_array_with_stride, libgsl), _gsl_vector_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_const_view_array(v, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_view_array (const double *v, size_t n)`
"""
function vector_const_view_array(v, n)
    ccall((:gsl_vector_const_view_array, libgsl), _gsl_vector_const_view, (Ref{Cdouble}, Csize_t), v, n)
end

@doc md"""
    vector_const_view_array_with_stride(base, stride, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_view_array_with_stride (const double *base, size_t stride, size_t n)`
"""
function vector_const_view_array_with_stride(base, stride, n)
    ccall((:gsl_vector_const_view_array_with_stride, libgsl), _gsl_vector_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, stride, n)
end

@doc md"""
    vector_subvector(v, i, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_subvector (gsl_vector *v, size_t i, size_t n)`

GSL documentation:

### `gsl_vector_view gsl_vector_subvector (gsl_vector * v, size_t offset, size_t n)`

> gsl\_vector\_const\_view gsl\_vector\_const\_subvector (const
> gsl\_vector \* v, size\_t offset, size\_t n)

> These functions return a vector view of a subvector of another vector
> `v`. The start of the new vector is offset by `offset` elements from
> the start of the original vector. The new vector has `n` elements.
> Mathematically, the `i`-th element of the new vector `v'` is given by:
>
>     v'(i) = v->data[(offset + i)*v->stride]
>
> where the index `i` runs from 0 to `n - 1`.
>
> The `data` pointer of the returned vector struct is set to null if the
> combined parameters (`offset`, `n`) overrun the end of the original
> vector.
>
> The new vector is only a view of the block underlying the original
> vector, `v`. The block containing the elements of `v` is not owned by
> the new vector. When the view goes out of scope the original vector
> `v` and its block will continue to exist. The original memory can only
> be deallocated by freeing the original vector. Of course, the original
> vector should not be deallocated while the view is still in use.
>
> The function `gsl_vector_const_subvector` is equivalent to
> `gsl_vector_subvector` but can be used for vectors which are declared
> `const`.

"""
function vector_subvector(v, i, n)
    ccall((:gsl_vector_subvector, libgsl), _gsl_vector_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_subvector_with_stride(v, i, stride, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_vector_subvector_with_stride (gsl_vector *v, size_t i, size_t stride, size_t n)`

GSL documentation:

### `gsl_vector_view gsl_vector_subvector_with_stride (gsl_vector * v, size_t offset, size_t stride, size_t n)`

> gsl\_vector\_const\_view gsl\_vector\_const\_subvector\_with\_stride
> (const gsl\_vector \* v, size\_t offset, size\_t stride, size\_t n)

> These functions return a vector view of a subvector of another vector
> `v` with an additional stride argument. The subvector is formed in the
> same way as for `gsl_vector_subvector` but the new vector has `n`
> elements with a step-size of `stride` from one element to the next in
> the original vector. Mathematically, the `i`-th element of the new
> vector `v'` is given by:
>
>     v'(i) = v->data[(offset + i*stride)*v->stride]
>
> where the index `i` runs from 0 to `n - 1`.
>
> Note that subvector views give direct access to the underlying
> elements of the original vector. For example, the following code will
> zero the even elements of the vector `v` of length `n`, while leaving
> the odd elements untouched:
>
>     gsl_vector_view v_even = gsl_vector_subvector_with_stride (v, 0, 2, n/2);
>     gsl_vector_set_zero (&v_even.vector);
>
> A vector view can be passed to any subroutine which takes a vector
> argument just as a directly allocated vector would be, using
> `&view.vector`. For example, the following code computes the norm of
> the odd elements of `v` using the BLAS routine `dnrm2`:
>
>     gsl_vector_view v_odd = gsl_vector_subvector_with_stride (v, 1, 2, n/2);
>     double r = gsl_blas_dnrm2 (&v_odd.vector);
>
> The function `gsl_vector_const_subvector_with_stride` is equivalent to
> `gsl_vector_subvector_with_stride` but can be used for vectors which
> are declared `const`.

"""
function vector_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_subvector_with_stride, libgsl), _gsl_vector_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_const_subvector(v, i, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_subvector (const gsl_vector *v, size_t i, size_t n)`
"""
function vector_const_subvector(v, i, n)
    ccall((:gsl_vector_const_subvector, libgsl), _gsl_vector_const_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, n)
end

@doc md"""
    vector_const_subvector_with_stride(v, i, stride, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_vector_const_subvector_with_stride (const gsl_vector *v, size_t i, size_t stride, size_t n)`
"""
function vector_const_subvector_with_stride(v, i, stride, n)
    ccall((:gsl_vector_const_subvector_with_stride, libgsl), _gsl_vector_const_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, i, stride, n)
end

@doc md"""
    vector_set_zero(v) -> Cvoid

C signature:
`void gsl_vector_set_zero (gsl_vector * v)`

GSL documentation:

### `void gsl_vector_set_zero (gsl_vector * v)`

> This function sets all the elements of the vector `v` to zero.

"""
function vector_set_zero(v)
    ccall((:gsl_vector_set_zero, libgsl), Cvoid, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_set_all(v, x) -> Cvoid

C signature:
`void gsl_vector_set_all (gsl_vector * v, double x)`

GSL documentation:

### `void gsl_vector_set_all (gsl_vector * v, double x)`

> This function sets all the elements of the vector `v` to the value
> `x`.

"""
function vector_set_all(v, x)
    ccall((:gsl_vector_set_all, libgsl), Cvoid, (Ref{gsl_vector}, Cdouble), v, x)
end

@doc md"""
    vector_set_basis(v, i) -> Cint

C signature:
`int gsl_vector_set_basis (gsl_vector * v, size_t i)`

GSL documentation:

### `int gsl_vector_set_basis (gsl_vector * v, size_t i)`

> This function makes a basis vector by setting all the elements of the
> vector `v` to zero except for the `i`-th element which is set to one.

"""
function vector_set_basis(v, i)
    ccall((:gsl_vector_set_basis, libgsl), Cint, (Ref{gsl_vector}, Csize_t), v, i)
end

@doc md"""
    vector_fread(stream, v) -> Cint

C signature:
`int gsl_vector_fread (FILE * stream, gsl_vector * v)`

GSL documentation:

### `int gsl_vector_fread (FILE * stream, gsl_vector * v)`

> This function reads into the vector `v` from the open stream `stream`
> in binary format. The vector `v` must be preallocated with the correct
> length since the function uses the size of `v` to determine how many
> bytes to read. The return value is 0 for success and `GSL_EFAILED` if
> there was a problem reading from the file. The data is assumed to have
> been written in the native binary format on the same architecture.

"""
function vector_fread(stream, v)
    ccall((:gsl_vector_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

@doc md"""
    vector_fwrite(stream, v) -> Cint

C signature:
`int gsl_vector_fwrite (FILE * stream, const gsl_vector * v)`

GSL documentation:

### `int gsl_vector_fwrite (FILE * stream, const gsl_vector * v)`

> This function writes the elements of the vector `v` to the stream
> `stream` in binary format. The return value is 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file. Since the
> data is written in the native binary format it may not be portable
> between different architectures.

"""
function vector_fwrite(stream, v)
    ccall((:gsl_vector_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

@doc md"""
    vector_fscanf(stream, v) -> Cint

C signature:
`int gsl_vector_fscanf (FILE * stream, gsl_vector * v)`

GSL documentation:

### `int gsl_vector_fscanf (FILE * stream, gsl_vector * v)`

> This function reads formatted data from the stream `stream` into the
> vector `v`. The vector `v` must be preallocated with the correct
> length since the function uses the size of `v` to determine how many
> numbers to read. The function returns 0 for success and `GSL_EFAILED`
> if there was a problem reading from the file.

"""
function vector_fscanf(stream, v)
    ccall((:gsl_vector_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}), stream, v)
end

@doc md"""
    vector_fprintf(stream, v, format) -> Cint

C signature:
`int gsl_vector_fprintf (FILE * stream, const gsl_vector * v, const char *format)`

GSL documentation:

### `int gsl_vector_fprintf (FILE * stream, const gsl_vector * v, const char * format)`

> This function writes the elements of the vector `v` line-by-line to
> the stream `stream` using the format specifier `format`, which should
> be one of the `%g`, `%e` or `%f` formats for floating point numbers
> and `%d` for integers. The function returns 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file.

"""
function vector_fprintf(stream, v, format)
    ccall((:gsl_vector_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_vector}, Ref{Cchar}), stream, v, format)
end

@doc md"""
    vector_memcpy(dest, src) -> Cint

C signature:
`int gsl_vector_memcpy (gsl_vector * dest, const gsl_vector * src)`

GSL documentation:

### `int gsl_vector_memcpy (gsl_vector * dest, const gsl_vector * src)`

> This function copies the elements of the vector `src` into the vector
> `dest`. The two vectors must have the same length.

"""
function vector_memcpy(dest, src)
    ccall((:gsl_vector_memcpy, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), dest, src)
end

@doc md"""
    vector_reverse(v) -> Cint

C signature:
`int gsl_vector_reverse (gsl_vector * v)`

GSL documentation:

### `int gsl_vector_reverse (gsl_vector * v)`

> This function reverses the order of the elements of the vector `v`.

"""
function vector_reverse(v)
    ccall((:gsl_vector_reverse, libgsl), Cint, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_swap(v, w) -> Cint

C signature:
`int gsl_vector_swap (gsl_vector * v, gsl_vector * w)`

GSL documentation:

### `int gsl_vector_swap (gsl_vector * v, gsl_vector * w)`

> This function exchanges the elements of the vectors `v` and `w` by
> copying. The two vectors must have the same length.

"""
function vector_swap(v, w)
    ccall((:gsl_vector_swap, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), v, w)
end

@doc md"""
    vector_swap_elements(v, i, j) -> Cint

C signature:
`int gsl_vector_swap_elements (gsl_vector * v, const size_t i, const size_t j)`

GSL documentation:

### `int gsl_vector_swap_elements (gsl_vector * v, size_t i, size_t j)`

> This function exchanges the `i`-th and `j`-th elements of the vector
> `v` in-place.

"""
function vector_swap_elements(v, i, j)
    ccall((:gsl_vector_swap_elements, libgsl), Cint, (Ref{gsl_vector}, Csize_t, Csize_t), v, i, j)
end

@doc md"""
    vector_max(v) -> Cdouble

C signature:
`double gsl_vector_max (const gsl_vector * v)`

GSL documentation:

### `double gsl_vector_max (const gsl_vector * v)`

> This function returns the maximum value in the vector `v`.

"""
function vector_max(v)
    ccall((:gsl_vector_max, libgsl), Cdouble, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_min(v) -> Cdouble

C signature:
`double gsl_vector_min (const gsl_vector * v)`

GSL documentation:

### `double gsl_vector_min (const gsl_vector * v)`

> This function returns the minimum value in the vector `v`.

"""
function vector_min(v)
    ccall((:gsl_vector_min, libgsl), Cdouble, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_minmax(v, min_out, max_out) -> Cvoid

C signature:
`void gsl_vector_minmax (const gsl_vector * v, double * min_out, double * max_out)`

GSL documentation:

### `void gsl_vector_minmax (const gsl_vector * v, double * min_out, double * max_out)`

> This function returns the minimum and maximum values in the vector
> `v`, storing them in `min_out` and `max_out`.

"""
function vector_minmax(v, min_out, max_out)
    ccall((:gsl_vector_minmax, libgsl), Cvoid, (Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}), v, min_out, max_out)
end

@doc md"""
    vector_max_index(v) -> Csize_t

C signature:
`size_t gsl_vector_max_index (const gsl_vector * v)`

GSL documentation:

### `size_t gsl_vector_max_index (const gsl_vector * v)`

> This function returns the index of the maximum value in the vector
> `v`. When there are several equal maximum elements then the lowest
> index is returned.

"""
function vector_max_index(v)
    ccall((:gsl_vector_max_index, libgsl), Csize_t, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_min_index(v) -> Csize_t

C signature:
`size_t gsl_vector_min_index (const gsl_vector * v)`

GSL documentation:

### `size_t gsl_vector_min_index (const gsl_vector * v)`

> This function returns the index of the minimum value in the vector
> `v`. When there are several equal minimum elements then the lowest
> index is returned.

"""
function vector_min_index(v)
    ccall((:gsl_vector_min_index, libgsl), Csize_t, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_minmax_index(v, imin, imax) -> Cvoid

C signature:
`void gsl_vector_minmax_index (const gsl_vector * v, size_t * imin, size_t * imax)`

GSL documentation:

### `void gsl_vector_minmax_index (const gsl_vector * v, size_t * imin, size_t * imax)`

> This function returns the indices of the minimum and maximum values in
> the vector `v`, storing them in `imin` and `imax`. When there are
> several equal minimum or maximum elements then the lowest indices are
> returned.

"""
function vector_minmax_index(v, imin, imax)
    ccall((:gsl_vector_minmax_index, libgsl), Cvoid, (Ref{gsl_vector}, Ref{Csize_t}, Ref{Csize_t}), v, imin, imax)
end

@doc md"""
    vector_add(a, b) -> Cint

C signature:
`int gsl_vector_add (gsl_vector * a, const gsl_vector * b)`

GSL documentation:

### `int gsl_vector_add (gsl_vector * a, const gsl_vector * b)`

> This function adds the elements of vector `b` to the elements of
> vector `a`. The result $a_i \leftarrow a_i + b_i$ is stored in `a` and
> `b` remains unchanged. The two vectors must have the same length.

"""
function vector_add(a, b)
    ccall((:gsl_vector_add, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

@doc md"""
    vector_sub(a, b) -> Cint

C signature:
`int gsl_vector_sub (gsl_vector * a, const gsl_vector * b)`

GSL documentation:

### `int gsl_vector_sub (gsl_vector * a, const gsl_vector * b)`

> This function subtracts the elements of vector `b` from the elements
> of vector `a`. The result $a_i \leftarrow a_i - b_i$ is stored in `a`
> and `b` remains unchanged. The two vectors must have the same length.

"""
function vector_sub(a, b)
    ccall((:gsl_vector_sub, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

@doc md"""
    vector_mul(a, b) -> Cint

C signature:
`int gsl_vector_mul (gsl_vector * a, const gsl_vector * b)`

GSL documentation:

### `int gsl_vector_mul (gsl_vector * a, const gsl_vector * b)`

> This function multiplies the elements of vector `a` by the elements of
> vector `b`. The result $a_i \leftarrow a_i * b_i$ is stored in `a` and
> `b` remains unchanged. The two vectors must have the same length.

"""
function vector_mul(a, b)
    ccall((:gsl_vector_mul, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

@doc md"""
    vector_div(a, b) -> Cint

C signature:
`int gsl_vector_div (gsl_vector * a, const gsl_vector * b)`

GSL documentation:

### `int gsl_vector_div (gsl_vector * a, const gsl_vector * b)`

> This function divides the elements of vector `a` by the elements of
> vector `b`. The result $a_i \leftarrow a_i / b_i$ is stored in `a` and
> `b` remains unchanged. The two vectors must have the same length.

"""
function vector_div(a, b)
    ccall((:gsl_vector_div, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), a, b)
end

@doc md"""
    vector_scale(a, x) -> Cint

C signature:
`int gsl_vector_scale (gsl_vector * a, const double x)`

GSL documentation:

### `int gsl_vector_scale (gsl_vector * a, const double x)`

> This function multiplies the elements of vector `a` by the constant
> factor `x`. The result $a_i \leftarrow x a_i$ is stored in `a`.

"""
function vector_scale(a, x)
    ccall((:gsl_vector_scale, libgsl), Cint, (Ref{gsl_vector}, Cdouble), a, x)
end

@doc md"""
    vector_add_constant(a, x) -> Cint

C signature:
`int gsl_vector_add_constant (gsl_vector * a, const double x)`

GSL documentation:

### `int gsl_vector_add_constant (gsl_vector * a, const double x)`

> This function adds the constant value `x` to the elements of the
> vector `a`. The result $a_i \leftarrow a_i + x$ is stored in `a`.

"""
function vector_add_constant(a, x)
    ccall((:gsl_vector_add_constant, libgsl), Cint, (Ref{gsl_vector}, Cdouble), a, x)
end

@doc md"""
    vector_equal(u, v) -> Cint

C signature:
`int gsl_vector_equal (const gsl_vector * u, const gsl_vector * v)`

GSL documentation:

### `int gsl_vector_equal (const gsl_vector * u, const gsl_vector * v)`

> This function returns 1 if the vectors `u` and `v` are equal (by
> comparison of element values) and 0 otherwise.

"""
function vector_equal(u, v)
    ccall((:gsl_vector_equal, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), u, v)
end

@doc md"""
    vector_isnull(v) -> Cint

C signature:
`int gsl_vector_isnull (const gsl_vector * v)`

GSL documentation:

### `int gsl_vector_isnull (const gsl_vector * v)`

> int gsl\_vector\_ispos (const gsl\_vector \* v) int gsl\_vector\_isneg
> (const gsl\_vector \* v) int gsl\_vector\_isnonneg (const gsl\_vector
> \* v)

> These functions return 1 if all the elements of the vector `v` are
> zero, strictly positive, strictly negative, or non-negative
> respectively, and 0 otherwise.

"""
function vector_isnull(v)
    ccall((:gsl_vector_isnull, libgsl), Cint, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_ispos(v) -> Cint

C signature:
`int gsl_vector_ispos (const gsl_vector * v)`
"""
function vector_ispos(v)
    ccall((:gsl_vector_ispos, libgsl), Cint, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_isneg(v) -> Cint

C signature:
`int gsl_vector_isneg (const gsl_vector * v)`
"""
function vector_isneg(v)
    ccall((:gsl_vector_isneg, libgsl), Cint, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_isnonneg(v) -> Cint

C signature:
`int gsl_vector_isnonneg (const gsl_vector * v)`
"""
function vector_isnonneg(v)
    ccall((:gsl_vector_isnonneg, libgsl), Cint, (Ptr{gsl_vector},), v)
end

@doc md"""
    vector_get(v, i) -> Cdouble

C signature:
`double gsl_vector_get (const gsl_vector * v, const size_t i)`

GSL documentation:

### `double gsl_vector_get (const gsl_vector * v, const size_t i)`

> This function returns the `i`-th element of a vector `v`. If `i` lies
> outside the allowed range of 0 to `size - 1` then the error handler is
> invoked and 0 is returned.

"""
function vector_get(v, i)
    ccall((:gsl_vector_get, libgsl), Cdouble, (Ref{gsl_vector}, Csize_t), v, i)
end

@doc md"""
    vector_set(v, i, x) -> Cvoid

C signature:
`void gsl_vector_set (gsl_vector * v, const size_t i, double x)`

GSL documentation:

### `void gsl_vector_set (gsl_vector * v, const size_t i, double x)`

> This function sets the value of the `i`-th element of a vector `v` to
> `x`. If `i` lies outside the allowed range of 0 to `size - 1` then the
> error handler is invoked.

"""
function vector_set(v, i, x)
    ccall((:gsl_vector_set, libgsl), Cvoid, (Ref{gsl_vector}, Csize_t, Cdouble), v, i, x)
end

@doc md"""
    vector_ptr(v, i) -> Ptr{Cdouble}

C signature:
`double * gsl_vector_ptr (gsl_vector * v, const size_t i)`

GSL documentation:

### `double * gsl_vector_ptr (gsl_vector * v, size_t i)`

> const double \* gsl\_vector\_const\_ptr (const gsl\_vector \* v,
> size\_t i)

> These functions return a pointer to the `i`-th element of a vector
> `v`. If `i` lies outside the allowed range of 0 to `size - 1` then the
> error handler is invoked and a null pointer is returned.

"""
function vector_ptr(v, i)
    ccall((:gsl_vector_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector}, Csize_t), v, i)
end

@doc md"""
    vector_const_ptr(v, i) -> Ptr{Cdouble}

C signature:
`const double * gsl_vector_const_ptr (const gsl_vector * v, const size_t i)`
"""
function vector_const_ptr(v, i)
    ccall((:gsl_vector_const_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_vector}, Csize_t), v, i)
end

