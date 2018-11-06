#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_char.h #########################################################


@doc md"""
    block_char_alloc(n) -> Ptr{gsl_block_char}

C signature:
`gsl_block_char *gsl_block_char_alloc (const size_t n)`
"""
function block_char_alloc(n)
    ccall((:gsl_block_char_alloc, libgsl), Ptr{gsl_block_char}, (Csize_t,), n)
end

@doc md"""
    block_char_calloc(n) -> Ptr{gsl_block_char}

C signature:
`gsl_block_char *gsl_block_char_calloc (const size_t n)`
"""
function block_char_calloc(n)
    ccall((:gsl_block_char_calloc, libgsl), Ptr{gsl_block_char}, (Csize_t,), n)
end

@doc md"""
    block_char_free(b) -> Cvoid

C signature:
`void gsl_block_char_free (gsl_block_char * b)`
"""
function block_char_free(b)
    ccall((:gsl_block_char_free, libgsl), Cvoid, (Ptr{gsl_block_char},), b)
end

@doc md"""
    block_char_fread(stream, b) -> Cint

C signature:
`int gsl_block_char_fread (FILE * stream, gsl_block_char * b)`
"""
function block_char_fread(stream, b)
    ccall((:gsl_block_char_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_char}), stream, b)
end

@doc md"""
    block_char_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_char_fwrite (FILE * stream, const gsl_block_char * b)`
"""
function block_char_fwrite(stream, b)
    ccall((:gsl_block_char_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_char}), stream, b)
end

@doc md"""
    block_char_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_char_fscanf (FILE * stream, gsl_block_char * b)`
"""
function block_char_fscanf(stream, b)
    ccall((:gsl_block_char_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_char}), stream, b)
end

@doc md"""
    block_char_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_char_fprintf (FILE * stream, const gsl_block_char * b, const char *format)`
"""
function block_char_fprintf(stream, b, format)
    ccall((:gsl_block_char_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_char}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_char_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_char_raw_fread (FILE * stream, char * b, const size_t n, const size_t stride)`
"""
function block_char_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_char_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_char_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_char_raw_fwrite (FILE * stream, const char * b, const size_t n, const size_t stride)`
"""
function block_char_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_char_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_char_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_char_raw_fscanf (FILE * stream, char * b, const size_t n, const size_t stride)`
"""
function block_char_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_char_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cchar}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_char_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_char_raw_fprintf (FILE * stream, const char * b, const size_t n, const size_t stride, const char *format)`
"""
function block_char_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_char_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cchar}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_char_size(b) -> Csize_t

C signature:
`size_t gsl_block_char_size (const gsl_block_char * b)`
"""
function block_char_size(b)
    ccall((:gsl_block_char_size, libgsl), Csize_t, (Ptr{gsl_block_char},), b)
end

@doc md"""
    block_char_data(b) -> Ptr{Cchar}

C signature:
`char * gsl_block_char_data (const gsl_block_char * b)`
"""
function block_char_data(b)
    ccall((:gsl_block_char_data, libgsl), Ptr{Cchar}, (Ptr{gsl_block_char},), b)
end

