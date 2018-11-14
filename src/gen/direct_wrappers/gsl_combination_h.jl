#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_combination.h ########################################################


@doc md"""
    combination_alloc(n, k) -> Ptr{gsl_combination}

C signature:
`gsl_combination *gsl_combination_alloc (const size_t n, const size_t k)`

GSL documentation:

### `gsl_combination * gsl_combination_alloc (size_t n, size_t k)`

> This function allocates memory for a new combination with parameters
> `n`, `k`. The combination is not initialized and its elements are
> undefined. Use the function `gsl_combination_calloc` if you want to
> create a combination which is initialized to the lexicographically
> first combination. A null pointer is returned if insufficient memory
> is available to create the combination.

"""
function combination_alloc(n, k)
    ccall((:gsl_combination_alloc, libgsl), Ptr{gsl_combination}, (Csize_t, Csize_t), n, k)
end

@doc md"""
    combination_calloc(n, k) -> Ptr{gsl_combination}

C signature:
`gsl_combination *gsl_combination_calloc (const size_t n, const size_t k)`

GSL documentation:

### `gsl_combination * gsl_combination_calloc (size_t n, size_t k)`

> This function allocates memory for a new combination with parameters
> `n`, `k` and initializes it to the lexicographically first
> combination. A null pointer is returned if insufficient memory is
> available to create the combination.

"""
function combination_calloc(n, k)
    ccall((:gsl_combination_calloc, libgsl), Ptr{gsl_combination}, (Csize_t, Csize_t), n, k)
end

@doc md"""
    combination_init_first(c) -> Cvoid

C signature:
`void gsl_combination_init_first (gsl_combination * c)`

GSL documentation:

### `void gsl_combination_init_first (gsl_combination * c)`

> This function initializes the combination `c` to the lexicographically
> first combination, i.e. $(0, 1, 2, \dots, k - 1)$.

"""
function combination_init_first(c)
    ccall((:gsl_combination_init_first, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_init_last(c) -> Cvoid

C signature:
`void gsl_combination_init_last (gsl_combination * c)`

GSL documentation:

### `void gsl_combination_init_last (gsl_combination * c)`

> This function initializes the combination `c` to the lexicographically
> last combination, i.e. $(n - k, n - k + 1, \dots, n - 1)$.

"""
function combination_init_last(c)
    ccall((:gsl_combination_init_last, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_free(c) -> Cvoid

C signature:
`void gsl_combination_free (gsl_combination * c)`

GSL documentation:

### `void gsl_combination_free (gsl_combination * c)`

> This function frees all the memory used by the combination `c`.

"""
function combination_free(c)
    ccall((:gsl_combination_free, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_memcpy(dest, src) -> Cint

C signature:
`int gsl_combination_memcpy (gsl_combination * dest, const gsl_combination * src)`

GSL documentation:

### `int gsl_combination_memcpy (gsl_combination * dest, const gsl_combination * src)`

> This function copies the elements of the combination `src` into the
> combination `dest`. The two combinations must have the same size.

"""
function combination_memcpy(dest, src)
    ccall((:gsl_combination_memcpy, libgsl), Cint, (Ref{gsl_combination}, Ref{gsl_combination}), dest, src)
end

@doc md"""
    combination_fread(stream, c) -> Cint

C signature:
`int gsl_combination_fread (FILE * stream, gsl_combination * c)`

GSL documentation:

### `int gsl_combination_fread (FILE * stream, gsl_combination * c)`

> This function reads elements from the open stream `stream` into the
> combination `c` in binary format. The combination `c` must be
> preallocated with correct values of $n$ and $k$ since the function
> uses the size of `c` to determine how many bytes to read. The function
> returns `GSL_EFAILED` if there was a problem reading from the file.
> The data is assumed to have been written in the native binary format
> on the same architecture.

"""
function combination_fread(stream, c)
    ccall((:gsl_combination_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

@doc md"""
    combination_fwrite(stream, c) -> Cint

C signature:
`int gsl_combination_fwrite (FILE * stream, const gsl_combination * c)`

GSL documentation:

### `int gsl_combination_fwrite (FILE * stream, const gsl_combination * c)`

> This function writes the elements of the combination `c` to the stream
> `stream` in binary format. The function returns `GSL_EFAILED` if there
> was a problem writing to the file. Since the data is written in the
> native binary format it may not be portable between different
> architectures.

"""
function combination_fwrite(stream, c)
    ccall((:gsl_combination_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

@doc md"""
    combination_fscanf(stream, c) -> Cint

C signature:
`int gsl_combination_fscanf (FILE * stream, gsl_combination * c)`

GSL documentation:

### `int gsl_combination_fscanf (FILE * stream, gsl_combination * c)`

> This function reads formatted data from the stream `stream` into the
> combination `c`. The combination `c` must be preallocated with correct
> values of $n$ and $k$ since the function uses the size of `c` to
> determine how many numbers to read. The function returns `GSL_EFAILED`
> if there was a problem reading from the file.

"""
function combination_fscanf(stream, c)
    ccall((:gsl_combination_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

@doc md"""
    combination_fprintf(stream, c, format) -> Cint

C signature:
`int gsl_combination_fprintf (FILE * stream, const gsl_combination * c, const char *format)`

GSL documentation:

### `int gsl_combination_fprintf (FILE * stream, const gsl_combination * c, const char * format)`

> This function writes the elements of the combination `c` line-by-line
> to the stream `stream` using the format specifier `format`, which
> should be suitable for a type of `size_t`. In ISO C99 the type
> modifier `z` represents `size_t`, so `"%zu\n"` is a suitable format.
> The function returns `GSL_EFAILED` if there was a problem writing to
> the file.

"""
function combination_fprintf(stream, c, format)
    ccall((:gsl_combination_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}, Ref{Cchar}), stream, c, format)
end

@doc md"""
    combination_n(c) -> Csize_t

C signature:
`size_t gsl_combination_n (const gsl_combination * c)`

GSL documentation:

### `size_t gsl_combination_n (const gsl_combination * c)`

> This function returns the range ($n$) of the combination c.

"""
function combination_n(c)
    ccall((:gsl_combination_n, libgsl), Csize_t, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_k(c) -> Csize_t

C signature:
`size_t gsl_combination_k (const gsl_combination * c)`

GSL documentation:

### `size_t gsl_combination_k (const gsl_combination * c)`

> This function returns the number of elements ($k$) in the combination
> `c`.

"""
function combination_k(c)
    ccall((:gsl_combination_k, libgsl), Csize_t, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_data(c) -> Ptr{Csize_t}

C signature:
`size_t * gsl_combination_data (const gsl_combination * c)`

GSL documentation:

### `size_t * gsl_combination_data (const gsl_combination * c)`

> This function returns a pointer to the array of elements in the
> combination `c`.

"""
function combination_data(c)
    ccall((:gsl_combination_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_valid(c) -> Cint

C signature:
`int gsl_combination_valid (gsl_combination * c)`

GSL documentation:

### `int gsl_combination_valid (gsl_combination * c)`

> This function checks that the combination `c` is valid. The `k`
> elements should lie in the range 0 to $n - 1$, with each value
> occurring once at most and in increasing order.

"""
function combination_valid(c)
    ccall((:gsl_combination_valid, libgsl), Cint, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_next(c) -> Cint

C signature:
`int gsl_combination_next (gsl_combination * c)`

GSL documentation:

### `int gsl_combination_next (gsl_combination * c)`

> This function advances the combination `c` to the next combination in
> lexicographic order and returns `GSL_SUCCESS`. If no further
> combinations are available it returns `GSL_FAILURE` and leaves `c`
> unmodified. Starting with the first combination and repeatedly
> applying this function will iterate through all possible combinations
> of a given order.

"""
function combination_next(c)
    ccall((:gsl_combination_next, libgsl), Cint, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_prev(c) -> Cint

C signature:
`int gsl_combination_prev (gsl_combination * c)`

GSL documentation:

### `int gsl_combination_prev (gsl_combination * c)`

> This function steps backwards from the combination `c` to the previous
> combination in lexicographic order, returning `GSL_SUCCESS`. If no
> previous combination is available it returns `GSL_FAILURE` and leaves
> `c` unmodified.

"""
function combination_prev(c)
    ccall((:gsl_combination_prev, libgsl), Cint, (Ptr{gsl_combination},), c)
end

@doc md"""
    combination_get(c, i) -> Csize_t

C signature:
`size_t gsl_combination_get (const gsl_combination * c, const size_t i)`

GSL documentation:

### `size_t gsl_combination_get (const gsl_combination * c, const size_t i)`

> This function returns the value of the `i`-th element of the
> combination `c`. If `i` lies outside the allowed range of 0 to $k - 1$
> then the error handler is invoked and 0 is returned.

"""
function combination_get(c, i)
    ccall((:gsl_combination_get, libgsl), Csize_t, (Ref{gsl_combination}, Csize_t), c, i)
end

