#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multiset.h ###########################################################


@doc md"""
    multiset_alloc(n, k) -> Ptr{gsl_multiset}

C signature:
`gsl_multiset *gsl_multiset_alloc (const size_t n, const size_t k)`

GSL documentation:

### `gsl_multiset * gsl_multiset_alloc (size_t n, size_t k)`

> This function allocates memory for a new multiset with parameters `n`,
> `k`. The multiset is not initialized and its elements are undefined.
> Use the function `gsl_multiset_calloc` if you want to create a
> multiset which is initialized to the lexicographically first multiset
> element. A null pointer is returned if insufficient memory is
> available to create the multiset.

"""
function multiset_alloc(n, k)
    ccall((:gsl_multiset_alloc, libgsl), Ptr{gsl_multiset}, (Csize_t, Csize_t), n, k)
end

@doc md"""
    multiset_calloc(n, k) -> Ptr{gsl_multiset}

C signature:
`gsl_multiset *gsl_multiset_calloc (const size_t n, const size_t k)`

GSL documentation:

### `gsl_multiset * gsl_multiset_calloc (size_t n, size_t k)`

> This function allocates memory for a new multiset with parameters `n`,
> `k` and initializes it to the lexicographically first multiset
> element. A null pointer is returned if insufficient memory is
> available to create the multiset.

"""
function multiset_calloc(n, k)
    ccall((:gsl_multiset_calloc, libgsl), Ptr{gsl_multiset}, (Csize_t, Csize_t), n, k)
end

@doc md"""
    multiset_init_first(c) -> Cvoid

C signature:
`void gsl_multiset_init_first (gsl_multiset * c)`

GSL documentation:

### `void gsl_multiset_init_first (gsl_multiset * c)`

> This function initializes the multiset `c` to the lexicographically
> first multiset element, i.e. $0$ repeated $k$ times.

"""
function multiset_init_first(c)
    ccall((:gsl_multiset_init_first, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_init_last(c) -> Cvoid

C signature:
`void gsl_multiset_init_last (gsl_multiset * c)`

GSL documentation:

### `void gsl_multiset_init_last (gsl_multiset * c)`

> This function initializes the multiset `c` to the lexicographically
> last multiset element, i.e. $n-1$ repeated $k$ times.

"""
function multiset_init_last(c)
    ccall((:gsl_multiset_init_last, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_free(c) -> Cvoid

C signature:
`void gsl_multiset_free (gsl_multiset * c)`

GSL documentation:

### `void gsl_multiset_free (gsl_multiset * c)`

> This function frees all the memory used by the multiset `c`.

"""
function multiset_free(c)
    ccall((:gsl_multiset_free, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_memcpy(dest, src) -> Cint

C signature:
`int gsl_multiset_memcpy (gsl_multiset * dest, const gsl_multiset * src)`

GSL documentation:

### `int gsl_multiset_memcpy (gsl_multiset * dest, const gsl_multiset * src)`

> This function copies the elements of the multiset `src` into the
> multiset `dest`. The two multisets must have the same size.

"""
function multiset_memcpy(dest, src)
    ccall((:gsl_multiset_memcpy, libgsl), Cint, (Ref{gsl_multiset}, Ref{gsl_multiset}), dest, src)
end

@doc md"""
    multiset_fread(stream, c) -> Cint

C signature:
`int gsl_multiset_fread (FILE * stream, gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_fread (FILE * stream, gsl_multiset * c)`

> This function reads elements from the open stream `stream` into the
> multiset `c` in binary format. The multiset `c` must be preallocated
> with correct values of $n$ and $k$ since the function uses the size of
> `c` to determine how many bytes to read. The function returns
> `GSL_EFAILED` if there was a problem reading from the file. The data
> is assumed to have been written in the native binary format on the
> same architecture.

"""
function multiset_fread(stream, c)
    ccall((:gsl_multiset_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

@doc md"""
    multiset_fwrite(stream, c) -> Cint

C signature:
`int gsl_multiset_fwrite (FILE * stream, const gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_fwrite (FILE * stream, const gsl_multiset * c)`

> This function writes the elements of the multiset `c` to the stream
> `stream` in binary format. The function returns `GSL_EFAILED` if there
> was a problem writing to the file. Since the data is written in the
> native binary format it may not be portable between different
> architectures.

"""
function multiset_fwrite(stream, c)
    ccall((:gsl_multiset_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

@doc md"""
    multiset_fscanf(stream, c) -> Cint

C signature:
`int gsl_multiset_fscanf (FILE * stream, gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_fscanf (FILE * stream, gsl_multiset * c)`

> This function reads formatted data from the stream `stream` into the
> multiset `c`. The multiset `c` must be preallocated with correct
> values of $n$ and $k$ since the function uses the size of `c` to
> determine how many numbers to read. The function returns `GSL_EFAILED`
> if there was a problem reading from the file.

"""
function multiset_fscanf(stream, c)
    ccall((:gsl_multiset_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

@doc md"""
    multiset_fprintf(stream, c, format) -> Cint

C signature:
`int gsl_multiset_fprintf (FILE * stream, const gsl_multiset * c, const char *format)`

GSL documentation:

### `int gsl_multiset_fprintf (FILE * stream, const gsl_multiset * c, const char * format)`

> This function writes the elements of the multiset `c` line-by-line to
> the stream `stream` using the format specifier `format`, which should
> be suitable for a type of `size_t`. In ISO C99 the type modifier `z`
> represents `size_t`, so `"%zu\n"` is a suitable format. The function
> returns `GSL_EFAILED` if there was a problem writing to the file.

"""
function multiset_fprintf(stream, c, format)
    ccall((:gsl_multiset_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}, Ref{Cchar}), stream, c, format)
end

@doc md"""
    multiset_n(c) -> Csize_t

C signature:
`size_t gsl_multiset_n (const gsl_multiset * c)`

GSL documentation:

### `size_t gsl_multiset_n (const gsl_multiset * c)`

> This function returns the range ($n$) of the multiset `c`.

"""
function multiset_n(c)
    ccall((:gsl_multiset_n, libgsl), Csize_t, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_k(c) -> Csize_t

C signature:
`size_t gsl_multiset_k (const gsl_multiset * c)`

GSL documentation:

### `size_t gsl_multiset_k (const gsl_multiset * c)`

> This function returns the number of elements ($k$) in the multiset
> `c`.

"""
function multiset_k(c)
    ccall((:gsl_multiset_k, libgsl), Csize_t, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_data(c) -> Ptr{Csize_t}

C signature:
`size_t * gsl_multiset_data (const gsl_multiset * c)`

GSL documentation:

### `size_t * gsl_multiset_data (const gsl_multiset * c)`

> This function returns a pointer to the array of elements in the
> multiset `c`.

"""
function multiset_data(c)
    ccall((:gsl_multiset_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_valid(c) -> Cint

C signature:
`int gsl_multiset_valid (gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_valid (gsl_multiset * c)`

> This function checks that the multiset `c` is valid. The `k` elements
> should lie in the range 0 to $n - 1$, with each value occurring in
> nondecreasing order.

"""
function multiset_valid(c)
    ccall((:gsl_multiset_valid, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_next(c) -> Cint

C signature:
`int gsl_multiset_next (gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_next (gsl_multiset * c)`

> This function advances the multiset `c` to the next multiset element
> in lexicographic order and returns `GSL_SUCCESS`. If no further
> multisets elements are available it returns `GSL_FAILURE` and leaves
> `c` unmodified. Starting with the first multiset and repeatedly
> applying this function will iterate through all possible multisets of
> a given order.

"""
function multiset_next(c)
    ccall((:gsl_multiset_next, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_prev(c) -> Cint

C signature:
`int gsl_multiset_prev (gsl_multiset * c)`

GSL documentation:

### `int gsl_multiset_prev (gsl_multiset * c)`

> This function steps backwards from the multiset `c` to the previous
> multiset element in lexicographic order, returning `GSL_SUCCESS`. If
> no previous multiset is available it returns `GSL_FAILURE` and leaves
> `c` unmodified.

"""
function multiset_prev(c)
    ccall((:gsl_multiset_prev, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

@doc md"""
    multiset_get(c, i) -> Csize_t

C signature:
`size_t gsl_multiset_get (const gsl_multiset * c, const size_t i)`

GSL documentation:

### `size_t gsl_multiset_get (const gsl_multiset * c, const size_t i)`

> This function returns the value of the `i`-th element of the multiset
> `c`. If `i` lies outside the allowed range of 0 to $k - 1$ then the
> error handler is invoked and 0 is returned.

"""
function multiset_get(c, i)
    ccall((:gsl_multiset_get, libgsl), Csize_t, (Ref{gsl_multiset}, Csize_t), c, i)
end

