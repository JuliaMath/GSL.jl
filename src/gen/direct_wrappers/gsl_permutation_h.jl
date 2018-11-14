#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permutation.h ########################################################


@doc md"""
    permutation_alloc(n) -> Ptr{gsl_permutation}

C signature:
`gsl_permutation *gsl_permutation_alloc (const size_t n)`

GSL documentation:

### `gsl_permutation * gsl_permutation_alloc (size_t n)`

> This function allocates memory for a new permutation of size `n`. The
> permutation is not initialized and its elements are undefined. Use the
> function `gsl_permutation_calloc` if you want to create a permutation
> which is initialized to the identity. A null pointer is returned if
> insufficient memory is available to create the permutation.

"""
function permutation_alloc(n)
    ccall((:gsl_permutation_alloc, libgsl), Ptr{gsl_permutation}, (Csize_t,), n)
end

@doc md"""
    permutation_calloc(n) -> Ptr{gsl_permutation}

C signature:
`gsl_permutation *gsl_permutation_calloc (const size_t n)`

GSL documentation:

### `gsl_permutation * gsl_permutation_calloc (size_t n)`

> This function allocates memory for a new permutation of size `n` and
> initializes it to the identity. A null pointer is returned if
> insufficient memory is available to create the permutation.

"""
function permutation_calloc(n)
    ccall((:gsl_permutation_calloc, libgsl), Ptr{gsl_permutation}, (Csize_t,), n)
end

@doc md"""
    permutation_init(p) -> Cvoid

C signature:
`void gsl_permutation_init (gsl_permutation * p)`

GSL documentation:

### `void gsl_permutation_init (gsl_permutation * p)`

> This function initializes the permutation `p` to the identity, i.e.
> $(0, 1, 2, \dots, n - 1)$.

"""
function permutation_init(p)
    ccall((:gsl_permutation_init, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_free(p) -> Cvoid

C signature:
`void gsl_permutation_free (gsl_permutation * p)`

GSL documentation:

### `void gsl_permutation_free (gsl_permutation * p)`

> This function frees all the memory used by the permutation `p`.

"""
function permutation_free(p)
    ccall((:gsl_permutation_free, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_memcpy(dest, src) -> Cint

C signature:
`int gsl_permutation_memcpy (gsl_permutation * dest, const gsl_permutation * src)`

GSL documentation:

### `int gsl_permutation_memcpy (gsl_permutation * dest, const gsl_permutation * src)`

> This function copies the elements of the permutation `src` into the
> permutation `dest`. The two permutations must have the same size.

"""
function permutation_memcpy(dest, src)
    ccall((:gsl_permutation_memcpy, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), dest, src)
end

@doc md"""
    permutation_fread(stream, p) -> Cint

C signature:
`int gsl_permutation_fread (FILE * stream, gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_fread (FILE * stream, gsl_permutation * p)`

> This function reads into the permutation `p` from the open stream
> `stream` in binary format. The permutation `p` must be preallocated
> with the correct length since the function uses the size of `p` to
> determine how many bytes to read. The function returns `GSL_EFAILED`
> if there was a problem reading from the file. The data is assumed to
> have been written in the native binary format on the same
> architecture.

"""
function permutation_fread(stream, p)
    ccall((:gsl_permutation_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

@doc md"""
    permutation_fwrite(stream, p) -> Cint

C signature:
`int gsl_permutation_fwrite (FILE * stream, const gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_fwrite (FILE * stream, const gsl_permutation * p)`

> This function writes the elements of the permutation `p` to the stream
> `stream` in binary format. The function returns `GSL_EFAILED` if there
> was a problem writing to the file. Since the data is written in the
> native binary format it may not be portable between different
> architectures.

"""
function permutation_fwrite(stream, p)
    ccall((:gsl_permutation_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

@doc md"""
    permutation_fscanf(stream, p) -> Cint

C signature:
`int gsl_permutation_fscanf (FILE * stream, gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_fscanf (FILE * stream, gsl_permutation * p)`

> This function reads formatted data from the stream `stream` into the
> permutation `p`. The permutation `p` must be preallocated with the
> correct length since the function uses the size of `p` to determine
> how many numbers to read. The function returns `GSL_EFAILED` if there
> was a problem reading from the file.

"""
function permutation_fscanf(stream, p)
    ccall((:gsl_permutation_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

@doc md"""
    permutation_fprintf(stream, p, format) -> Cint

C signature:
`int gsl_permutation_fprintf (FILE * stream, const gsl_permutation * p, const char *format)`

GSL documentation:

### `int gsl_permutation_fprintf (FILE * stream, const gsl_permutation * p, const char * format)`

> This function writes the elements of the permutation `p` line-by-line
> to the stream `stream` using the format specifier `format`, which
> should be suitable for a type of `size_t`. In ISO C99 the type
> modifier `z` represents `size_t`, so `"%zu\n"` is a suitable format.
> The function returns `GSL_EFAILED` if there was a problem writing to
> the file.

"""
function permutation_fprintf(stream, p, format)
    ccall((:gsl_permutation_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}, Ref{Cchar}), stream, p, format)
end

@doc md"""
    permutation_size(p) -> Csize_t

C signature:
`size_t gsl_permutation_size (const gsl_permutation * p)`

GSL documentation:

### `size_t gsl_permutation_size (const gsl_permutation * p)`

> This function returns the size of the permutation `p`.

"""
function permutation_size(p)
    ccall((:gsl_permutation_size, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_data(p) -> Ptr{Csize_t}

C signature:
`size_t * gsl_permutation_data (const gsl_permutation * p)`

GSL documentation:

### `size_t * gsl_permutation_data (const gsl_permutation * p)`

> This function returns a pointer to the array of elements in the
> permutation `p`.

"""
function permutation_data(p)
    ccall((:gsl_permutation_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_swap(p, i, j) -> Cint

C signature:
`int gsl_permutation_swap (gsl_permutation * p, const size_t i, const size_t j)`

GSL documentation:

### `int gsl_permutation_swap (gsl_permutation * p, const size_t i, const size_t j)`

> This function exchanges the `i`-th and `j`-th elements of the
> permutation `p`.

"""
function permutation_swap(p, i, j)
    ccall((:gsl_permutation_swap, libgsl), Cint, (Ref{gsl_permutation}, Csize_t, Csize_t), p, i, j)
end

@doc md"""
    permutation_valid(p) -> Cint

C signature:
`int gsl_permutation_valid (const gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_valid (const gsl_permutation * p)`

> This function checks that the permutation `p` is valid. The `n`
> elements should contain each of the numbers 0 to `n - 1` once and only
> once.

"""
function permutation_valid(p)
    ccall((:gsl_permutation_valid, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_reverse(p) -> Cvoid

C signature:
`void gsl_permutation_reverse (gsl_permutation * p)`

GSL documentation:

### `void gsl_permutation_reverse (gsl_permutation * p)`

> This function reverses the elements of the permutation `p`.

"""
function permutation_reverse(p)
    ccall((:gsl_permutation_reverse, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_inverse(inv, p) -> Cint

C signature:
`int gsl_permutation_inverse (gsl_permutation * inv, const gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_inverse (gsl_permutation * inv, const gsl_permutation * p)`

> This function computes the inverse of the permutation `p`, storing the
> result in `inv`.

"""
function permutation_inverse(inv, p)
    ccall((:gsl_permutation_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), inv, p)
end

@doc md"""
    permutation_next(p) -> Cint

C signature:
`int gsl_permutation_next (gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_next (gsl_permutation * p)`

> This function advances the permutation `p` to the next permutation in
> lexicographic order and returns `GSL_SUCCESS`. If no further
> permutations are available it returns `GSL_FAILURE` and leaves `p`
> unmodified. Starting with the identity permutation and repeatedly
> applying this function will iterate through all possible permutations
> of a given order.

"""
function permutation_next(p)
    ccall((:gsl_permutation_next, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_prev(p) -> Cint

C signature:
`int gsl_permutation_prev (gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_prev (gsl_permutation * p)`

> This function steps backwards from the permutation `p` to the previous
> permutation in lexicographic order, returning `GSL_SUCCESS`. If no
> previous permutation is available it returns `GSL_FAILURE` and leaves
> `p` unmodified.

"""
function permutation_prev(p)
    ccall((:gsl_permutation_prev, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_mul(p, pa, pb) -> Cint

C signature:
`int gsl_permutation_mul (gsl_permutation * p, const gsl_permutation * pa, const gsl_permutation * pb)`

GSL documentation:

### `int gsl_permutation_mul (gsl_permutation * p, const gsl_permutation * pa, const gsl_permutation * pb)`

> This function combines the two permutations `pa` and `pb` into a
> single permutation `p`, where $p = pa * pb$ The permutation `p` is
> equivalent to applying `pb` first and then `pa`.

"""
function permutation_mul(p, pa, pb)
    ccall((:gsl_permutation_mul, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}, Ref{gsl_permutation}), p, pa, pb)
end

@doc md"""
    permutation_linear_to_canonical(q, p) -> Cint

C signature:
`int gsl_permutation_linear_to_canonical (gsl_permutation * q, const gsl_permutation * p)`

GSL documentation:

### `int gsl_permutation_linear_to_canonical (gsl_permutation * q, const gsl_permutation * p)`

> This function computes the canonical form of the permutation `p` and
> stores it in the output argument `q`.

"""
function permutation_linear_to_canonical(q, p)
    ccall((:gsl_permutation_linear_to_canonical, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), q, p)
end

@doc md"""
    permutation_canonical_to_linear(p, q) -> Cint

C signature:
`int gsl_permutation_canonical_to_linear (gsl_permutation * p, const gsl_permutation * q)`

GSL documentation:

### `int gsl_permutation_canonical_to_linear (gsl_permutation * p, const gsl_permutation * q)`

> This function converts a permutation `q` in canonical form back into
> linear form storing it in the output argument `p`.

"""
function permutation_canonical_to_linear(p, q)
    ccall((:gsl_permutation_canonical_to_linear, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), p, q)
end

@doc md"""
    permutation_inversions(p) -> Csize_t

C signature:
`size_t gsl_permutation_inversions (const gsl_permutation * p)`

GSL documentation:

### `size_t gsl_permutation_inversions (const gsl_permutation * p)`

> This function counts the number of inversions in the permutation `p`.
> An inversion is any pair of elements that are not in order. For
> example, the permutation 2031 has three inversions, corresponding to
> the pairs (2,0) (2,1) and (3,1). The identity permutation has no
> inversions.

"""
function permutation_inversions(p)
    ccall((:gsl_permutation_inversions, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_linear_cycles(p) -> Csize_t

C signature:
`size_t gsl_permutation_linear_cycles (const gsl_permutation * p)`

GSL documentation:

### `size_t gsl_permutation_linear_cycles (const gsl_permutation * p)`

> This function counts the number of cycles in the permutation `p`,
> given in linear form.

"""
function permutation_linear_cycles(p)
    ccall((:gsl_permutation_linear_cycles, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

@doc md"""
    permutation_canonical_cycles(q) -> Csize_t

C signature:
`size_t gsl_permutation_canonical_cycles (const gsl_permutation * q)`

GSL documentation:

### `size_t gsl_permutation_canonical_cycles (const gsl_permutation * q)`

> This function counts the number of cycles in the permutation `q`,
> given in canonical form.

"""
function permutation_canonical_cycles(q)
    ccall((:gsl_permutation_canonical_cycles, libgsl), Csize_t, (Ptr{gsl_permutation},), q)
end

@doc md"""
    permutation_get(p, i) -> Csize_t

C signature:
`size_t gsl_permutation_get (const gsl_permutation * p, const size_t i)`

GSL documentation:

### `size_t gsl_permutation_get (const gsl_permutation * p, const size_t i)`

> This function returns the value of the `i`-th element of the
> permutation `p`. If `i` lies outside the allowed range of 0 to $n - 1$
> then the error handler is invoked and 0 is returned.

"""
function permutation_get(p, i)
    ccall((:gsl_permutation_get, libgsl), Csize_t, (Ref{gsl_permutation}, Csize_t), p, i)
end

