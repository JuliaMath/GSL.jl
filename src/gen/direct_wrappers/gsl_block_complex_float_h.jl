#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_complex_float.h ################################################


@doc md"""
    block_complex_float_alloc(n) -> Ptr{gsl_block_complex_float}

C signature:
`gsl_block_complex_float *gsl_block_complex_float_alloc (const size_t n)`
"""
function block_complex_float_alloc(n)
    ccall((:gsl_block_complex_float_alloc, libgsl), Ptr{gsl_block_complex_float}, (Csize_t,), n)
end

@doc md"""
    block_complex_float_calloc(n) -> Ptr{gsl_block_complex_float}

C signature:
`gsl_block_complex_float *gsl_block_complex_float_calloc (const size_t n)`
"""
function block_complex_float_calloc(n)
    ccall((:gsl_block_complex_float_calloc, libgsl), Ptr{gsl_block_complex_float}, (Csize_t,), n)
end

@doc md"""
    block_complex_float_free(b) -> Cvoid

C signature:
`void gsl_block_complex_float_free (gsl_block_complex_float * b)`
"""
function block_complex_float_free(b)
    ccall((:gsl_block_complex_float_free, libgsl), Cvoid, (Ptr{gsl_block_complex_float},), b)
end

@doc md"""
    block_complex_float_fread(stream, b) -> Cint

C signature:
`int gsl_block_complex_float_fread (FILE * stream, gsl_block_complex_float * b)`
"""
function block_complex_float_fread(stream, b)
    ccall((:gsl_block_complex_float_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_float}), stream, b)
end

@doc md"""
    block_complex_float_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_complex_float_fwrite (FILE * stream, const gsl_block_complex_float * b)`
"""
function block_complex_float_fwrite(stream, b)
    ccall((:gsl_block_complex_float_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_float}), stream, b)
end

@doc md"""
    block_complex_float_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_complex_float_fscanf (FILE * stream, gsl_block_complex_float * b)`
"""
function block_complex_float_fscanf(stream, b)
    ccall((:gsl_block_complex_float_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_float}), stream, b)
end

@doc md"""
    block_complex_float_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_complex_float_fprintf (FILE * stream, const gsl_block_complex_float * b, const char *format)`
"""
function block_complex_float_fprintf(stream, b, format)
    ccall((:gsl_block_complex_float_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block_complex_float}, Ref{Cchar}), stream, b, format)
end

@doc md"""
    block_complex_float_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_float_raw_fread (FILE * stream, float * b, const size_t n, const size_t stride)`
"""
function block_complex_float_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_complex_float_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cfloat}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_float_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_float_raw_fwrite (FILE * stream, const float * b, const size_t n, const size_t stride)`
"""
function block_complex_float_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_complex_float_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cfloat}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_float_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_complex_float_raw_fscanf (FILE * stream, float * b, const size_t n, const size_t stride)`
"""
function block_complex_float_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_complex_float_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cfloat}, Csize_t, Csize_t), stream, b, n, stride)
end

@doc md"""
    block_complex_float_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_complex_float_raw_fprintf (FILE * stream, const float * b, const size_t n, const size_t stride, const char *format)`
"""
function block_complex_float_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_complex_float_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cfloat}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

@doc md"""
    block_complex_float_size(b) -> Csize_t

C signature:
`size_t gsl_block_complex_float_size (const gsl_block_complex_float * b)`
"""
function block_complex_float_size(b)
    ccall((:gsl_block_complex_float_size, libgsl), Csize_t, (Ptr{gsl_block_complex_float},), b)
end

@doc md"""
    block_complex_float_data(b) -> Ptr{Cfloat}

C signature:
`float * gsl_block_complex_float_data (const gsl_block_complex_float * b)`
"""
function block_complex_float_data(b)
    ccall((:gsl_block_complex_float_data, libgsl), Ptr{Cfloat}, (Ptr{gsl_block_complex_float},), b)
end

