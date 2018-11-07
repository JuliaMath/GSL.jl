#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_ushort.h #######################################################


@doc md"""
    block_ushort_alloc(n) -> Ptr{gsl_block_ushort}

C signature:
`gsl_block_ushort *gsl_block_ushort_alloc (const size_t n)`
"""
function block_ushort_alloc(n)
    ccall((:gsl_block_ushort_alloc, libgsl), Ptr{gsl_block_ushort}, (Csize_t,), n)
end

@doc md"""
    block_ushort_calloc(n) -> Ptr{gsl_block_ushort}

C signature:
`gsl_block_ushort *gsl_block_ushort_calloc (const size_t n)`
"""
function block_ushort_calloc(n)
    ccall((:gsl_block_ushort_calloc, libgsl), Ptr{gsl_block_ushort}, (Csize_t,), n)
end

@doc md"""
    block_ushort_free(b) -> Cvoid

C signature:
`void gsl_block_ushort_free (gsl_block_ushort * b)`
"""
function block_ushort_free(b)
    ccall((:gsl_block_ushort_free, libgsl), Cvoid, (Ptr{gsl_block_ushort},), b)
end

@doc md"""
    block_ushort_fread(stream, b) -> Cint

C signature:
`int gsl_block_ushort_fread (FILE * stream, gsl_block_ushort * b)`
"""
function block_ushort_fread(stream, b)
    ccall((:gsl_block_ushort_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ushort}), stream, b)
end

@doc md"""
    block_ushort_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_ushort_fwrite (FILE * stream, const gsl_block_ushort * b)`
"""
function block_ushort_fwrite(stream, b)
    ccall((:gsl_block_ushort_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ushort}), stream, b)
end

@doc md"""
    block_ushort_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_ushort_fscanf (FILE * stream, gsl_block_ushort * b)`
"""
function block_ushort_fscanf(stream, b)
    ccall((:gsl_block_ushort_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ushort}), stream, b)
end

@doc md"""
    block_ushort_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_ushort_fprintf (FILE * stream, const gsl_block_ushort * b, const char *format)`
"""
function block_ushort_fprintf(stream, b, format)
    ccall((:gsl_block_ushort_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_ushort}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_ushort_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ushort_raw_fread (FILE * stream, unsigned short * b, const size_t n, const size_t stride)`
"""
function block_ushort_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_ushort_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cushort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ushort_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ushort_raw_fwrite (FILE * stream, const unsigned short * b, const size_t n, const size_t stride)`
"""
function block_ushort_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_ushort_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cushort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ushort_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_ushort_raw_fscanf (FILE * stream, unsigned short * b, const size_t n, const size_t stride)`
"""
function block_ushort_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_ushort_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cushort}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_ushort_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_ushort_raw_fprintf (FILE * stream, const unsigned short * b, const size_t n, const size_t stride, const char *format)`
"""
function block_ushort_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_ushort_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cushort}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_ushort_size(b) -> Csize_t

C signature:
`size_t gsl_block_ushort_size (const gsl_block_ushort * b)`
"""
function block_ushort_size(b)
    ccall((:gsl_block_ushort_size, libgsl), Csize_t, (Ptr{gsl_block_ushort},), b)
end

@doc md"""
    block_ushort_data(b) -> Ptr{Cushort}

C signature:
`unsigned short * gsl_block_ushort_data (const gsl_block_ushort * b)`
"""
function block_ushort_data(b)
    ccall((:gsl_block_ushort_data, libgsl), Ptr{Cushort}, (Ptr{gsl_block_ushort},), b)
end

