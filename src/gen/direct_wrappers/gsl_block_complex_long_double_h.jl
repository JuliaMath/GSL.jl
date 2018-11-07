#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_complex_long_double.h ##########################################


@doc md"""
    block_complex_long_double_alloc(n) -> Ptr{gsl_block_complex_long_double}

C signature:
`gsl_block_complex_long_double *gsl_block_complex_long_double_alloc (const size_t n)`
"""
function block_complex_long_double_alloc(n)
    ccall((:gsl_block_complex_long_double_alloc, libgsl), Ptr{gsl_block_complex_long_double}, (Csize_t,), n)
end

@doc md"""
    block_complex_long_double_calloc(n) -> Ptr{gsl_block_complex_long_double}

C signature:
`gsl_block_complex_long_double *gsl_block_complex_long_double_calloc (const size_t n)`
"""
function block_complex_long_double_calloc(n)
    ccall((:gsl_block_complex_long_double_calloc, libgsl), Ptr{gsl_block_complex_long_double}, (Csize_t,), n)
end

@doc md"""
    block_complex_long_double_free(b) -> Cvoid

C signature:
`void gsl_block_complex_long_double_free (gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_free(b)
    ccall((:gsl_block_complex_long_double_free, libgsl), Cvoid, (Ptr{gsl_block_complex_long_double},), b)
end

@doc md"""
    block_complex_long_double_fread(stream, b) -> Cint

C signature:
`int gsl_block_complex_long_double_fread (FILE * stream, gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_fread(stream, b)
    ccall((:gsl_block_complex_long_double_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_long_double}), stream, b)
end

@doc md"""
    block_complex_long_double_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_complex_long_double_fwrite (FILE * stream, const gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_fwrite(stream, b)
    ccall((:gsl_block_complex_long_double_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_long_double}), stream, b)
end

@doc md"""
    block_complex_long_double_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_complex_long_double_fscanf (FILE * stream, gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_fscanf(stream, b)
    ccall((:gsl_block_complex_long_double_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_long_double}), stream, b)
end

@doc md"""
    block_complex_long_double_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_complex_long_double_fprintf (FILE * stream, const gsl_block_complex_long_double * b, const char *format)`
"""
function block_complex_long_double_fprintf(stream, b, format)
    ccall((:gsl_block_complex_long_double_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_long_double}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_complex_long_double_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_long_double_raw_fread (FILE * stream, long double * b, const size_t n, const size_t stride)`
"""
function block_complex_long_double_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_complex_long_double_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_long_double_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_long_double_raw_fwrite (FILE * stream, const long double * b, const size_t n, const size_t stride)`
"""
function block_complex_long_double_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_complex_long_double_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_long_double_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_long_double_raw_fscanf (FILE * stream, long double * b, const size_t n, const size_t stride)`
"""
function block_complex_long_double_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_complex_long_double_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_long_double_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_complex_long_double_raw_fprintf (FILE * stream, const long double * b, const size_t n, const size_t stride, const char *format)`
"""
function block_complex_long_double_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_complex_long_double_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_complex_long_double_size(b) -> Csize_t

C signature:
`size_t gsl_block_complex_long_double_size (const gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_size(b)
    ccall((:gsl_block_complex_long_double_size, libgsl), Csize_t, (Ptr{gsl_block_complex_long_double},), b)
end

@doc md"""
    block_complex_long_double_data(b) -> Ptr{Cdouble}

C signature:
`long double * gsl_block_complex_long_double_data (const gsl_block_complex_long_double * b)`
"""
function block_complex_long_double_data(b)
    ccall((:gsl_block_complex_long_double_data, libgsl), Ptr{Cdouble}, (Ptr{gsl_block_complex_long_double},), b)
end

