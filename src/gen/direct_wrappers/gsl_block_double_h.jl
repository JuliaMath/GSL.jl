#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_double.h #######################################################


@doc md"""
    block_alloc(n) -> Ptr{gsl_block}

C signature:
`gsl_block *gsl_block_alloc (const size_t n)`

GSL documentation:

### `gsl_block * gsl_block_alloc (size_t n)`

> This function allocates memory for a block of `n` double-precision
> elements, returning a pointer to the block struct. The block is not
> initialized and so the values of its elements are undefined. Use the
> function `gsl_block_calloc` if you want to ensure that all the
> elements are initialized to zero.
>
> Zero-sized requests are valid and return a non-null result. A null
> pointer is returned if insufficient memory is available to create the
> block.

"""
function block_alloc(n)
    ccall((:gsl_block_alloc, libgsl), Ptr{gsl_block}, (Csize_t,), n)
end

@doc md"""
    block_calloc(n) -> Ptr{gsl_block}

C signature:
`gsl_block *gsl_block_calloc (const size_t n)`

GSL documentation:

### `gsl_block * gsl_block_calloc (size_t n)`

> This function allocates memory for a block and initializes all the
> elements of the block to zero.

"""
function block_calloc(n)
    ccall((:gsl_block_calloc, libgsl), Ptr{gsl_block}, (Csize_t,), n)
end

@doc md"""
    block_free(b) -> Cvoid

C signature:
`void gsl_block_free (gsl_block * b)`

GSL documentation:

### `void gsl_block_free (gsl_block * b)`

> This function frees the memory used by a block `b` previously
> allocated with `gsl_block_alloc` or `gsl_block_calloc`.

"""
function block_free(b)
    ccall((:gsl_block_free, libgsl), Cvoid, (Ptr{gsl_block},), b)
end

@doc md"""
    block_fread(stream, b) -> Cint

C signature:
`int gsl_block_fread (FILE * stream, gsl_block * b)`

GSL documentation:

### `int gsl_block_fread (FILE * stream, gsl_block * b)`

> This function reads into the block `b` from the open stream `stream`
> in binary format. The block `b` must be preallocated with the correct
> length since the function uses the size of `b` to determine how many
> bytes to read. The return value is 0 for success and `GSL_EFAILED` if
> there was a problem reading from the file. The data is assumed to have
> been written in the native binary format on the same architecture.

"""
function block_fread(stream, b)
    ccall((:gsl_block_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

@doc md"""
    block_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_fwrite (FILE * stream, const gsl_block * b)`

GSL documentation:

### `int gsl_block_fwrite (FILE * stream, const gsl_block * b)`

> This function writes the elements of the block `b` to the stream
> `stream` in binary format. The return value is 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file. Since the
> data is written in the native binary format it may not be portable
> between different architectures.

"""
function block_fwrite(stream, b)
    ccall((:gsl_block_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

@doc md"""
    block_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_fscanf (FILE * stream, gsl_block * b)`

GSL documentation:

### `int gsl_block_fscanf (FILE * stream, gsl_block * b)`

> This function reads formatted data from the stream `stream` into the
> block `b`. The block `b` must be preallocated with the correct length
> since the function uses the size of `b` to determine how many numbers
> to read. The function returns 0 for success and `GSL_EFAILED` if there
> was a problem reading from the file.

"""
function block_fscanf(stream, b)
    ccall((:gsl_block_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

@doc md"""
    block_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_fprintf (FILE * stream, const gsl_block * b, const char *format)`

GSL documentation:

### `int gsl_block_fprintf (FILE * stream, const gsl_block * b, const char * format)`

> This function writes the elements of the block `b` line-by-line to the
> stream `stream` using the format specifier `format`, which should be
> one of the `%g`, `%e` or `%f` formats for floating point numbers and
> `%d` for integers. The function returns 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file.

"""
function block_fprintf(stream, b, format)
    ccall((:gsl_block_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fread (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function block_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fwrite (FILE * stream, const double * b, const size_t n, const size_t stride)`
"""
function block_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fscanf (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function block_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_raw_fprintf (FILE * stream, const double * b, const size_t n, const size_t stride, const char *format)`
"""
function block_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_size(b) -> Csize_t

C signature:
`size_t gsl_block_size (const gsl_block * b)`
"""
function block_size(b)
    ccall((:gsl_block_size, libgsl), Csize_t, (Ptr{gsl_block},), b)
end

@doc md"""
    block_data(b) -> Ptr{Cdouble}

C signature:
`double * gsl_block_data (const gsl_block * b)`
"""
function block_data(b)
    ccall((:gsl_block_data, libgsl), Ptr{Cdouble}, (Ptr{gsl_block},), b)
end

