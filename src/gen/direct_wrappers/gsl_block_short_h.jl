#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_short.h ########################################################


@doc md"""
    block_short_alloc(n) -> Ptr{gsl_block_short}

C signature:
`gsl_block_short *gsl_block_short_alloc (const size_t n)`
"""
function block_short_alloc(n)
    ccall((:gsl_block_short_alloc, libgsl), Ptr{gsl_block_short}, (Csize_t,), n)
end

@doc md"""
    block_short_calloc(n) -> Ptr{gsl_block_short}

C signature:
`gsl_block_short *gsl_block_short_calloc (const size_t n)`
"""
function block_short_calloc(n)
    ccall((:gsl_block_short_calloc, libgsl), Ptr{gsl_block_short}, (Csize_t,), n)
end

@doc md"""
    block_short_free(b) -> Cvoid

C signature:
`void gsl_block_short_free (gsl_block_short * b)`
"""
function block_short_free(b)
    ccall((:gsl_block_short_free, libgsl), Cvoid, (Ptr{gsl_block_short},), b)
end

@doc md"""
    block_short_fread(stream, b) -> Cint

C signature:
`int gsl_block_short_fread (FILE * stream, gsl_block_short * b)`
"""
function block_short_fread(stream, b)
    ccall((:gsl_block_short_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_short}), stream, b)
end

@doc md"""
    block_short_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_short_fwrite (FILE * stream, const gsl_block_short * b)`
"""
function block_short_fwrite(stream, b)
    ccall((:gsl_block_short_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_short}), stream, b)
end

@doc md"""
    block_short_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_short_fscanf (FILE * stream, gsl_block_short * b)`
"""
function block_short_fscanf(stream, b)
    ccall((:gsl_block_short_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_short}), stream, b)
end

@doc md"""
    block_short_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_short_fprintf (FILE * stream, const gsl_block_short * b, const char *format)`
"""
function block_short_fprintf(stream, b, format)
    ccall((:gsl_block_short_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_short}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_short_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_short_raw_fread (FILE * stream, short * b, const size_t n, const size_t stride)`
"""
function block_short_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_short_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cshort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_short_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_short_raw_fwrite (FILE * stream, const short * b, const size_t n, const size_t stride)`
"""
function block_short_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_short_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cshort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_short_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_short_raw_fscanf (FILE * stream, short * b, const size_t n, const size_t stride)`
"""
function block_short_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_short_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cshort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_short_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_short_raw_fprintf (FILE * stream, const short * b, const size_t n, const size_t stride, const char *format)`
"""
function block_short_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_short_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cshort}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_short_size(b) -> Csize_t

C signature:
`size_t gsl_block_short_size (const gsl_block_short * b)`
"""
function block_short_size(b)
    ccall((:gsl_block_short_size, libgsl), Csize_t, (Ptr{gsl_block_short},), b)
end

@doc md"""
    block_short_data(b) -> Ptr{Cshort}

C signature:
`short * gsl_block_short_data (const gsl_block_short * b)`
"""
function block_short_data(b)
    ccall((:gsl_block_short_data, libgsl), Ptr{Cshort}, (Ptr{gsl_block_short},), b)
end

