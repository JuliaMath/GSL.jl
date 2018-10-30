#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multiset.h ###########################################################


"""
    gsl_multiset_alloc(n, k) -> Ptr{gsl_multiset}

C signature:
`gsl_multiset *gsl_multiset_alloc (const size_t n, const size_t k)`
"""
function gsl_multiset_alloc(n, k)
    ccall((:gsl_multiset_alloc, libgsl), Ptr{gsl_multiset}, (Csize_t, Csize_t), n, k)
end

"""
    gsl_multiset_calloc(n, k) -> Ptr{gsl_multiset}

C signature:
`gsl_multiset *gsl_multiset_calloc (const size_t n, const size_t k)`
"""
function gsl_multiset_calloc(n, k)
    ccall((:gsl_multiset_calloc, libgsl), Ptr{gsl_multiset}, (Csize_t, Csize_t), n, k)
end

"""
    gsl_multiset_init_first(c) -> Cvoid

C signature:
`void gsl_multiset_init_first (gsl_multiset * c)`
"""
function gsl_multiset_init_first(c)
    ccall((:gsl_multiset_init_first, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_init_last(c) -> Cvoid

C signature:
`void gsl_multiset_init_last (gsl_multiset * c)`
"""
function gsl_multiset_init_last(c)
    ccall((:gsl_multiset_init_last, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_free(c) -> Cvoid

C signature:
`void gsl_multiset_free (gsl_multiset * c)`
"""
function gsl_multiset_free(c)
    ccall((:gsl_multiset_free, libgsl), Cvoid, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_memcpy(dest, src) -> Cint

C signature:
`int gsl_multiset_memcpy (gsl_multiset * dest, const gsl_multiset * src)`
"""
function gsl_multiset_memcpy(dest, src)
    ccall((:gsl_multiset_memcpy, libgsl), Cint, (Ref{gsl_multiset}, Ref{gsl_multiset}), dest, src)
end

"""
    gsl_multiset_fread(stream, c) -> Cint

C signature:
`int gsl_multiset_fread (FILE * stream, gsl_multiset * c)`
"""
function gsl_multiset_fread(stream, c)
    ccall((:gsl_multiset_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

"""
    gsl_multiset_fwrite(stream, c) -> Cint

C signature:
`int gsl_multiset_fwrite (FILE * stream, const gsl_multiset * c)`
"""
function gsl_multiset_fwrite(stream, c)
    ccall((:gsl_multiset_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

"""
    gsl_multiset_fscanf(stream, c) -> Cint

C signature:
`int gsl_multiset_fscanf (FILE * stream, gsl_multiset * c)`
"""
function gsl_multiset_fscanf(stream, c)
    ccall((:gsl_multiset_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}), stream, c)
end

"""
    gsl_multiset_fprintf(stream, c, format) -> Cint

C signature:
`int gsl_multiset_fprintf (FILE * stream, const gsl_multiset * c, const char *format)`
"""
function gsl_multiset_fprintf(stream, c, format)
    ccall((:gsl_multiset_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_multiset}, Ref{Cchar}), stream, c, format)
end

"""
    gsl_multiset_n(c) -> Csize_t

C signature:
`size_t gsl_multiset_n (const gsl_multiset * c)`
"""
function gsl_multiset_n(c)
    ccall((:gsl_multiset_n, libgsl), Csize_t, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_k(c) -> Csize_t

C signature:
`size_t gsl_multiset_k (const gsl_multiset * c)`
"""
function gsl_multiset_k(c)
    ccall((:gsl_multiset_k, libgsl), Csize_t, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_data(c) -> Ptr{Csize_t}

C signature:
`size_t * gsl_multiset_data (const gsl_multiset * c)`
"""
function gsl_multiset_data(c)
    ccall((:gsl_multiset_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_valid(c) -> Cint

C signature:
`int gsl_multiset_valid (gsl_multiset * c)`
"""
function gsl_multiset_valid(c)
    ccall((:gsl_multiset_valid, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_next(c) -> Cint

C signature:
`int gsl_multiset_next (gsl_multiset * c)`
"""
function gsl_multiset_next(c)
    ccall((:gsl_multiset_next, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_prev(c) -> Cint

C signature:
`int gsl_multiset_prev (gsl_multiset * c)`
"""
function gsl_multiset_prev(c)
    ccall((:gsl_multiset_prev, libgsl), Cint, (Ptr{gsl_multiset},), c)
end

"""
    gsl_multiset_get(c, i) -> Csize_t

C signature:
`size_t gsl_multiset_get (const gsl_multiset * c, const size_t i)`
"""
function gsl_multiset_get(c, i)
    ccall((:gsl_multiset_get, libgsl), Csize_t, (Ref{gsl_multiset}, Csize_t), c, i)
end

