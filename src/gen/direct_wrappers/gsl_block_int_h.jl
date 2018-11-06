#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_int.h ##########################################################


@doc md"""
    block_int_alloc(n) -> Ptr{gsl_block_int}

C signature:
`gsl_block_int *gsl_block_int_alloc (const size_t n)`
"""
function block_int_alloc(n)
    ccall((:gsl_block_int_alloc, libgsl), Ptr{gsl_block_int}, (Csize_t,), n)
end

@doc md"""
    block_int_calloc(n) -> Ptr{gsl_block_int}

C signature:
`gsl_block_int *gsl_block_int_calloc (const size_t n)`
"""
function block_int_calloc(n)
    ccall((:gsl_block_int_calloc, libgsl), Ptr{gsl_block_int}, (Csize_t,), n)
end

@doc md"""
    block_int_free(b) -> Cvoid

C signature:
`void gsl_block_int_free (gsl_block_int * b)`
"""
function block_int_free(b)
    ccall((:gsl_block_int_free, libgsl), Cvoid, (Ptr{gsl_block_int},), b)
end

@doc md"""
    block_int_fread(stream, b) -> Cint

C signature:
`int gsl_block_int_fread (FILE * stream, gsl_block_int * b)`
"""
function block_int_fread(stream, b)
    ccall((:gsl_block_int_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_int}), stream, b)
end

@doc md"""
    block_int_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_int_fwrite (FILE * stream, const gsl_block_int * b)`
"""
function block_int_fwrite(stream, b)
    ccall((:gsl_block_int_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_int}), stream, b)
end

@doc md"""
    block_int_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_int_fscanf (FILE * stream, gsl_block_int * b)`
"""
function block_int_fscanf(stream, b)
    ccall((:gsl_block_int_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_int}), stream, b)
end

@doc md"""
    block_int_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_int_fprintf (FILE * stream, const gsl_block_int * b, const char *format)`
"""
function block_int_fprintf(stream, b, format)
    ccall((:gsl_block_int_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_int}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_int_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_int_raw_fread (FILE * stream, int * b, const size_t n, const size_t stride)`
"""
function block_int_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_int_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_int_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_int_raw_fwrite (FILE * stream, const int * b, const size_t n, const size_t stride)`
"""
function block_int_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_int_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_int_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_int_raw_fscanf (FILE * stream, int * b, const size_t n, const size_t stride)`
"""
function block_int_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_int_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cint}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_int_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_int_raw_fprintf (FILE * stream, const int * b, const size_t n, const size_t stride, const char *format)`
"""
function block_int_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_int_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cint}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_int_size(b) -> Csize_t

C signature:
`size_t gsl_block_int_size (const gsl_block_int * b)`
"""
function block_int_size(b)
    ccall((:gsl_block_int_size, libgsl), Csize_t, (Ptr{gsl_block_int},), b)
end

@doc md"""
    block_int_data(b) -> Ptr{Cint}

C signature:
`int * gsl_block_int_data (const gsl_block_int * b)`
"""
function block_int_data(b)
    ccall((:gsl_block_int_data, libgsl), Ptr{Cint}, (Ptr{gsl_block_int},), b)
end

