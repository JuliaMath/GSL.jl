#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_block_double.h #######################################################


"""
    gsl_block_alloc(n) -> Ptr{gsl_block}

C signature:
`gsl_block *gsl_block_alloc (const size_t n)`
"""
function gsl_block_alloc(n)
    ccall((:gsl_block_alloc, libgsl), Ptr{gsl_block}, (Csize_t,), n)
end

"""
    gsl_block_calloc(n) -> Ptr{gsl_block}

C signature:
`gsl_block *gsl_block_calloc (const size_t n)`
"""
function gsl_block_calloc(n)
    ccall((:gsl_block_calloc, libgsl), Ptr{gsl_block}, (Csize_t,), n)
end

"""
    gsl_block_free(b) -> Cvoid

C signature:
`void gsl_block_free (gsl_block * b)`
"""
function gsl_block_free(b)
    ccall((:gsl_block_free, libgsl), Cvoid, (Ptr{gsl_block},), b)
end

"""
    gsl_block_fread(stream, b) -> Cint

C signature:
`int gsl_block_fread (FILE * stream, gsl_block * b)`
"""
function gsl_block_fread(stream, b)
    ccall((:gsl_block_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

"""
    gsl_block_fwrite(stream, b) -> Cint

C signature:
`int gsl_block_fwrite (FILE * stream, const gsl_block * b)`
"""
function gsl_block_fwrite(stream, b)
    ccall((:gsl_block_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

"""
    gsl_block_fscanf(stream, b) -> Cint

C signature:
`int gsl_block_fscanf (FILE * stream, gsl_block * b)`
"""
function gsl_block_fscanf(stream, b)
    ccall((:gsl_block_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}), stream, b)
end

"""
    gsl_block_fprintf(stream, b, format) -> Cint

C signature:
`int gsl_block_fprintf (FILE * stream, const gsl_block * b, const char *format)`
"""
function gsl_block_fprintf(stream, b, format)
    ccall((:gsl_block_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_block}, Ref{Cchar}), stream, b, format)
end

"""
    gsl_block_raw_fread(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fread (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function gsl_block_raw_fread(stream, b, n, stride)
    ccall((:gsl_block_raw_fread, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

"""
    gsl_block_raw_fwrite(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fwrite (FILE * stream, const double * b, const size_t n, const size_t stride)`
"""
function gsl_block_raw_fwrite(stream, b, n, stride)
    ccall((:gsl_block_raw_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

"""
    gsl_block_raw_fscanf(stream, b, n, stride) -> Cint

C signature:
`int gsl_block_raw_fscanf (FILE * stream, double * b, const size_t n, const size_t stride)`
"""
function gsl_block_raw_fscanf(stream, b, n, stride)
    ccall((:gsl_block_raw_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t), stream, b, n, stride)
end

"""
    gsl_block_raw_fprintf(stream, b, n, stride, format) -> Cint

C signature:
`int gsl_block_raw_fprintf (FILE * stream, const double * b, const size_t n, const size_t stride, const char *format)`
"""
function gsl_block_raw_fprintf(stream, b, n, stride, format)
    ccall((:gsl_block_raw_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{Cdouble}, Csize_t, Csize_t, Ref{Cchar}), stream, b, n, stride, format)
end

"""
    gsl_block_size(b) -> Csize_t

C signature:
`size_t gsl_block_size (const gsl_block * b)`
"""
function gsl_block_size(b)
    ccall((:gsl_block_size, libgsl), Csize_t, (Ptr{gsl_block},), b)
end

"""
    gsl_block_data(b) -> Ptr{Cdouble}

C signature:
`double * gsl_block_data (const gsl_block * b)`
"""
function gsl_block_data(b)
    ccall((:gsl_block_data, libgsl), Ptr{Cdouble}, (Ptr{gsl_block},), b)
end

