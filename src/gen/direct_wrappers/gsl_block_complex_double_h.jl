#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_complex_double.h ###############################################


@doc md"""
    block_complex_alloc(n) -> Ptr{gsl_block_complex}

C signature:
`gsl_block_complex *gsl_block_complex_alloc (const size_t n)`
"""
function block_complex_alloc(n)
    ccall((:gsl_block_complex_alloc, libgsl), Ptr{gsl_block_complex}, (Csize_t,), n)
end

@doc md"""
    block_complex_calloc(n) -> Ptr{gsl_block_complex}

C signature:
`gsl_block_complex *gsl_block_complex_calloc (const size_t n)`
"""
function block_complex_calloc(n)
    ccall((:gsl_block_complex_calloc, libgsl), Ptr{gsl_block_complex}, (Csize_t,), n)
end

@doc md"""
    block_complex_free(b) -> Cvoid

C signature:
`void gsl_block_complex_free (gsl_block_complex * b)`
"""
function block_complex_free(b)
    ccall((:gsl_block_complex_free, libgsl), Cvoid, (Ptr{gsl_block_complex},), b)
end

@doc md"""
    block_complex_fread(stream, b) -> Cint

C signature:
`int gsl_block_complex_fread (FILE * stream, gsl_block_complex * b)`
"""
function block_complex_fread(stream, b)
    ccall((:gsl_block_complex_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex}), stream, b)
end

@doc md"""
    block_complex_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_complex_fwrite (FILE * stream, const gsl_block_complex * b)`
"""
function block_complex_fwrite(stream, b)
    ccall((:gsl_block_complex_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex}), stream, b)
end

@doc md"""
    block_complex_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_complex_fscanf (FILE * stream, gsl_block_complex * b)`
"""
function block_complex_fscanf(stream, b)
    ccall((:gsl_block_complex_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex}), stream, b)
end

@doc md"""
    block_complex_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_complex_fprintf (FILE * stream, const gsl_block_complex * b, const char *format)`
"""
function block_complex_fprintf(stream, b, format)
    ccall((:gsl_block_complex_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_complex_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_raw_fread (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function block_complex_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_complex_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_raw_fwrite (FILE * stream, const double * b, const size_t n, const size_t stride)`
"""
function block_complex_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_complex_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_raw_fscanf (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function block_complex_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_complex_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_complex_raw_fprintf (FILE * stream, const double * b, const size_t n, const size_t stride, const char *format)`
"""
function block_complex_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_complex_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_complex_size(b) -> Csize_t

C signature:
`size_t gsl_block_complex_size (const gsl_block_complex * b)`
"""
function block_complex_size(b)
    ccall((:gsl_block_complex_size, libgsl), Csize_t, (Ptr{gsl_block_complex},), b)
end

@doc md"""
    block_complex_data(b) -> Ptr{Cdouble}

C signature:
`double * gsl_block_complex_data (const gsl_block_complex * b)`
"""
function block_complex_data(b)
    ccall((:gsl_block_complex_data, libgsl), Ptr{Cdouble}, (Ptr{gsl_block_complex},), b)
end

