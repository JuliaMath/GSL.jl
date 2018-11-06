#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_long.h #########################################################


@doc md"""
    block_long_alloc(n) -> Ptr{gsl_block_long}

C signature:
`gsl_block_long *gsl_block_long_alloc (const size_t n)`
"""
function block_long_alloc(n)
    ccall((:gsl_block_long_alloc, libgsl), Ptr{gsl_block_long}, (Csize_t,), n)
end

@doc md"""
    block_long_calloc(n) -> Ptr{gsl_block_long}

C signature:
`gsl_block_long *gsl_block_long_calloc (const size_t n)`
"""
function block_long_calloc(n)
    ccall((:gsl_block_long_calloc, libgsl), Ptr{gsl_block_long}, (Csize_t,), n)
end

@doc md"""
    block_long_free(b) -> Cvoid

C signature:
`void gsl_block_long_free (gsl_block_long * b)`
"""
function block_long_free(b)
    ccall((:gsl_block_long_free, libgsl), Cvoid, (Ptr{gsl_block_long},), b)
end

@doc md"""
    block_long_fread(stream, b) -> Cint

C signature:
`int gsl_block_long_fread (FILE * stream, gsl_block_long * b)`
"""
function block_long_fread(stream, b)
    ccall((:gsl_block_long_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_long}), stream, b)
end

@doc md"""
    block_long_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_long_fwrite (FILE * stream, const gsl_block_long * b)`
"""
function block_long_fwrite(stream, b)
    ccall((:gsl_block_long_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_long}), stream, b)
end

@doc md"""
    block_long_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_long_fscanf (FILE * stream, gsl_block_long * b)`
"""
function block_long_fscanf(stream, b)
    ccall((:gsl_block_long_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_long}), stream, b)
end

@doc md"""
    block_long_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_long_fprintf (FILE * stream, const gsl_block_long * b, const char *format)`
"""
function block_long_fprintf(stream, b, format)
    ccall((:gsl_block_long_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_long}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_long_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_long_raw_fread (FILE * stream, long * b, const size_t n, const size_t stride)`
"""
function block_long_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_long_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Clong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_long_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_long_raw_fwrite (FILE * stream, const long * b, const size_t n, const size_t stride)`
"""
function block_long_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_long_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Clong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_long_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_long_raw_fscanf (FILE * stream, long * b, const size_t n, const size_t stride)`
"""
function block_long_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_long_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Clong}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_long_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_long_raw_fprintf (FILE * stream, const long * b, const size_t n, const size_t stride, const char *format)`
"""
function block_long_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_long_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Clong}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_long_size(b) -> Csize_t

C signature:
`size_t gsl_block_long_size (const gsl_block_long * b)`
"""
function block_long_size(b)
    ccall((:gsl_block_long_size, libgsl), Csize_t, (Ptr{gsl_block_long},), b)
end

@doc md"""
    block_long_data(b) -> Ptr{Clong}

C signature:
`long * gsl_block_long_data (const gsl_block_long * b)`
"""
function block_long_data(b)
    ccall((:gsl_block_long_data, libgsl), Ptr{Clong}, (Ptr{gsl_block_long},), b)
end

