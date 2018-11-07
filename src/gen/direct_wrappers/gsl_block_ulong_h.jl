#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_ulong.h ########################################################


@doc md"""
    block_ulong_alloc(n) -> Ptr{gsl_block_ulong}

C signature:
`gsl_block_ulong *gsl_block_ulong_alloc (const size_t n)`
"""
function block_ulong_alloc(n)
    ccall((:gsl_block_ulong_alloc, libgsl), Ptr{gsl_block_ulong}, (Csize_t,), n)
end

@doc md"""
    block_ulong_calloc(n) -> Ptr{gsl_block_ulong}

C signature:
`gsl_block_ulong *gsl_block_ulong_calloc (const size_t n)`
"""
function block_ulong_calloc(n)
    ccall((:gsl_block_ulong_calloc, libgsl), Ptr{gsl_block_ulong}, (Csize_t,), n)
end

@doc md"""
    block_ulong_free(b) -> Cvoid

C signature:
`void gsl_block_ulong_free (gsl_block_ulong * b)`
"""
function block_ulong_free(b)
    ccall((:gsl_block_ulong_free, libgsl), Cvoid, (Ptr{gsl_block_ulong},), b)
end

@doc md"""
    block_ulong_fread(stream, b) -> Cint

C signature:
`int gsl_block_ulong_fread (FILE * stream, gsl_block_ulong * b)`
"""
function block_ulong_fread(stream, b)
    ccall((:gsl_block_ulong_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ulong}), stream, b)
end

@doc md"""
    block_ulong_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_ulong_fwrite (FILE * stream, const gsl_block_ulong * b)`
"""
function block_ulong_fwrite(stream, b)
    ccall((:gsl_block_ulong_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ulong}), stream, b)
end

@doc md"""
    block_ulong_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_ulong_fscanf (FILE * stream, gsl_block_ulong * b)`
"""
function block_ulong_fscanf(stream, b)
    ccall((:gsl_block_ulong_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ulong}), stream, b)
end

@doc md"""
    block_ulong_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_ulong_fprintf (FILE * stream, const gsl_block_ulong * b, const char *format)`
"""
function block_ulong_fprintf(stream, b, format)
    ccall((:gsl_block_ulong_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ulong}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_ulong_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ulong_raw_fread (FILE * stream, unsigned long * b, const size_t n, const size_t stride)`
"""
function block_ulong_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_ulong_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Culong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ulong_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ulong_raw_fwrite (FILE * stream, const unsigned long * b, const size_t n, const size_t stride)`
"""
function block_ulong_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_ulong_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Culong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ulong_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ulong_raw_fscanf (FILE * stream, unsigned long * b, const size_t n, const size_t stride)`
"""
function block_ulong_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_ulong_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Culong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ulong_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_ulong_raw_fprintf (FILE * stream, const unsigned long * b, const size_t n, const size_t stride, const char *format)`
"""
function block_ulong_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_ulong_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Culong}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_ulong_size(b) -> Csize_t

C signature:
`size_t gsl_block_ulong_size (const gsl_block_ulong * b)`
"""
function block_ulong_size(b)
    ccall((:gsl_block_ulong_size, libgsl), Csize_t, (Ptr{gsl_block_ulong},), b)
end

@doc md"""
    block_ulong_data(b) -> Ptr{Culong}

C signature:
`unsigned long * gsl_block_ulong_data (const gsl_block_ulong * b)`
"""
function block_ulong_data(b)
    ccall((:gsl_block_ulong_data, libgsl), Ptr{Culong}, (Ptr{gsl_block_ulong},), b)
end

