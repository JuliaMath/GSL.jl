#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_uint.h #########################################################


@doc md"""
    block_uint_alloc(n) -> Ptr{gsl_block_uint}

C signature:
`gsl_block_uint *gsl_block_uint_alloc (const size_t n)`
"""
function block_uint_alloc(n)
    ccall((:gsl_block_uint_alloc, libgsl), Ptr{gsl_block_uint}, (Csize_t,), n)
end

@doc md"""
    block_uint_calloc(n) -> Ptr{gsl_block_uint}

C signature:
`gsl_block_uint *gsl_block_uint_calloc (const size_t n)`
"""
function block_uint_calloc(n)
    ccall((:gsl_block_uint_calloc, libgsl), Ptr{gsl_block_uint}, (Csize_t,), n)
end

@doc md"""
    block_uint_free(b) -> Cvoid

C signature:
`void gsl_block_uint_free (gsl_block_uint * b)`
"""
function block_uint_free(b)
    ccall((:gsl_block_uint_free, libgsl), Cvoid, (Ptr{gsl_block_uint},), b)
end

@doc md"""
    block_uint_fread(stream, b) -> Cint

C signature:
`int gsl_block_uint_fread (FILE * stream, gsl_block_uint * b)`
"""
function block_uint_fread(stream, b)
    ccall((:gsl_block_uint_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uint}), stream, b)
end

@doc md"""
    block_uint_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_uint_fwrite (FILE * stream, const gsl_block_uint * b)`
"""
function block_uint_fwrite(stream, b)
    ccall((:gsl_block_uint_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uint}), stream, b)
end

@doc md"""
    block_uint_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_uint_fscanf (FILE * stream, gsl_block_uint * b)`
"""
function block_uint_fscanf(stream, b)
    ccall((:gsl_block_uint_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uint}), stream, b)
end

@doc md"""
    block_uint_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_uint_fprintf (FILE * stream, const gsl_block_uint * b, const char *format)`
"""
function block_uint_fprintf(stream, b, format)
    ccall((:gsl_block_uint_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uint}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_uint_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uint_raw_fread (FILE * stream, unsigned int * b, const size_t n, const size_t stride)`
"""
function block_uint_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_uint_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cuint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uint_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uint_raw_fwrite (FILE * stream, const unsigned int * b, const size_t n, const size_t stride)`
"""
function block_uint_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_uint_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cuint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uint_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uint_raw_fscanf (FILE * stream, unsigned int * b, const size_t n, const size_t stride)`
"""
function block_uint_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_uint_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cuint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uint_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_uint_raw_fprintf (FILE * stream, const unsigned int * b, const size_t n, const size_t stride, const char *format)`
"""
function block_uint_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_uint_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cuint}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_uint_size(b) -> Csize_t

C signature:
`size_t gsl_block_uint_size (const gsl_block_uint * b)`
"""
function block_uint_size(b)
    ccall((:gsl_block_uint_size, libgsl), Csize_t, (Ptr{gsl_block_uint},), b)
end

@doc md"""
    block_uint_data(b) -> Ptr{Cuint}

C signature:
`unsigned int * gsl_block_uint_data (const gsl_block_uint * b)`
"""
function block_uint_data(b)
    ccall((:gsl_block_uint_data, libgsl), Ptr{Cuint}, (Ptr{gsl_block_uint},), b)
end

