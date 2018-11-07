#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_uchar.h ########################################################


@doc md"""
    block_uchar_alloc(n) -> Ptr{gsl_block_uchar}

C signature:
`gsl_block_uchar *gsl_block_uchar_alloc (const size_t n)`
"""
function block_uchar_alloc(n)
    ccall((:gsl_block_uchar_alloc, libgsl), Ptr{gsl_block_uchar}, (Csize_t,), n)
end

@doc md"""
    block_uchar_calloc(n) -> Ptr{gsl_block_uchar}

C signature:
`gsl_block_uchar *gsl_block_uchar_calloc (const size_t n)`
"""
function block_uchar_calloc(n)
    ccall((:gsl_block_uchar_calloc, libgsl), Ptr{gsl_block_uchar}, (Csize_t,), n)
end

@doc md"""
    block_uchar_free(b) -> Cvoid

C signature:
`void gsl_block_uchar_free (gsl_block_uchar * b)`
"""
function block_uchar_free(b)
    ccall((:gsl_block_uchar_free, libgsl), Cvoid, (Ptr{gsl_block_uchar},), b)
end

@doc md"""
    block_uchar_fread(stream, b) -> Cint

C signature:
`int gsl_block_uchar_fread (FILE * stream, gsl_block_uchar * b)`
"""
function block_uchar_fread(stream, b)
    ccall((:gsl_block_uchar_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uchar}), stream, b)
end

@doc md"""
    block_uchar_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_uchar_fwrite (FILE * stream, const gsl_block_uchar * b)`
"""
function block_uchar_fwrite(stream, b)
    ccall((:gsl_block_uchar_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uchar}), stream, b)
end

@doc md"""
    block_uchar_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_uchar_fscanf (FILE * stream, gsl_block_uchar * b)`
"""
function block_uchar_fscanf(stream, b)
    ccall((:gsl_block_uchar_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uchar}), stream, b)
end

@doc md"""
    block_uchar_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_uchar_fprintf (FILE * stream, const gsl_block_uchar * b, const char *format)`
"""
function block_uchar_fprintf(stream, b, format)
    ccall((:gsl_block_uchar_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_uchar}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_uchar_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uchar_raw_fread (FILE * stream, unsigned char * b, const size_t n, const size_t stride)`
"""
function block_uchar_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_uchar_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cuchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uchar_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uchar_raw_fwrite (FILE * stream, const unsigned char * b, const size_t n, const size_t stride)`
"""
function block_uchar_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_uchar_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cuchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uchar_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_uchar_raw_fscanf (FILE * stream, unsigned char * b, const size_t n, const size_t stride)`
"""
function block_uchar_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_uchar_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cuchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_uchar_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_uchar_raw_fprintf (FILE * stream, const unsigned char * b, const size_t n, const size_t stride, const char *format)`
"""
function block_uchar_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_uchar_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cuchar}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_uchar_size(b) -> Csize_t

C signature:
`size_t gsl_block_uchar_size (const gsl_block_uchar * b)`
"""
function block_uchar_size(b)
    ccall((:gsl_block_uchar_size, libgsl), Csize_t, (Ptr{gsl_block_uchar},), b)
end

@doc md"""
    block_uchar_data(b) -> Ptr{Cuchar}

C signature:
`unsigned char * gsl_block_uchar_data (const gsl_block_uchar * b)`
"""
function block_uchar_data(b)
    ccall((:gsl_block_uchar_data, libgsl), Ptr{Cuchar}, (Ptr{gsl_block_uchar},), b)
end

