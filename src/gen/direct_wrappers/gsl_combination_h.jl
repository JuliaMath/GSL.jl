#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_combination.h ########################################################


"""
    gsl_combination_alloc(n, k) -> Ptr{gsl_combination}

C signature:
`gsl_combination *gsl_combination_alloc (const size_t n, const size_t k)`
"""
function gsl_combination_alloc(n, k)
    ccall((:gsl_combination_alloc, libgsl), Ptr{gsl_combination}, (Csize_t, Csize_t), n, k)
end

"""
    gsl_combination_calloc(n, k) -> Ptr{gsl_combination}

C signature:
`gsl_combination *gsl_combination_calloc (const size_t n, const size_t k)`
"""
function gsl_combination_calloc(n, k)
    ccall((:gsl_combination_calloc, libgsl), Ptr{gsl_combination}, (Csize_t, Csize_t), n, k)
end

"""
    gsl_combination_init_first(c) -> Cvoid

C signature:
`void gsl_combination_init_first (gsl_combination * c)`
"""
function gsl_combination_init_first(c)
    ccall((:gsl_combination_init_first, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_init_last(c) -> Cvoid

C signature:
`void gsl_combination_init_last (gsl_combination * c)`
"""
function gsl_combination_init_last(c)
    ccall((:gsl_combination_init_last, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_free(c) -> Cvoid

C signature:
`void gsl_combination_free (gsl_combination * c)`
"""
function gsl_combination_free(c)
    ccall((:gsl_combination_free, libgsl), Cvoid, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_memcpy(dest, src) -> Cint

C signature:
`int gsl_combination_memcpy (gsl_combination * dest, const gsl_combination * src)`
"""
function gsl_combination_memcpy(dest, src)
    ccall((:gsl_combination_memcpy, libgsl), Cint, (Ref{gsl_combination}, Ref{gsl_combination}), dest, src)
end

"""
    gsl_combination_fread(stream, c) -> Cint

C signature:
`int gsl_combination_fread (FILE * stream, gsl_combination * c)`
"""
function gsl_combination_fread(stream, c)
    ccall((:gsl_combination_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

"""
    gsl_combination_fwrite(stream, c) -> Cint

C signature:
`int gsl_combination_fwrite (FILE * stream, const gsl_combination * c)`
"""
function gsl_combination_fwrite(stream, c)
    ccall((:gsl_combination_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

"""
    gsl_combination_fscanf(stream, c) -> Cint

C signature:
`int gsl_combination_fscanf (FILE * stream, gsl_combination * c)`
"""
function gsl_combination_fscanf(stream, c)
    ccall((:gsl_combination_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}), stream, c)
end

"""
    gsl_combination_fprintf(stream, c, format) -> Cint

C signature:
`int gsl_combination_fprintf (FILE * stream, const gsl_combination * c, const char *format)`
"""
function gsl_combination_fprintf(stream, c, format)
    ccall((:gsl_combination_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_combination}, Ref{Cchar}), stream, c, format)
end

"""
    gsl_combination_n(c) -> Csize_t

C signature:
`size_t gsl_combination_n (const gsl_combination * c)`
"""
function gsl_combination_n(c)
    ccall((:gsl_combination_n, libgsl), Csize_t, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_k(c) -> Csize_t

C signature:
`size_t gsl_combination_k (const gsl_combination * c)`
"""
function gsl_combination_k(c)
    ccall((:gsl_combination_k, libgsl), Csize_t, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_data(c) -> Ptr{Csize_t}

C signature:
`size_t * gsl_combination_data (const gsl_combination * c)`
"""
function gsl_combination_data(c)
    ccall((:gsl_combination_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_valid(c) -> Cint

C signature:
`int gsl_combination_valid (gsl_combination * c)`
"""
function gsl_combination_valid(c)
    ccall((:gsl_combination_valid, libgsl), Cint, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_next(c) -> Cint

C signature:
`int gsl_combination_next (gsl_combination * c)`
"""
function gsl_combination_next(c)
    ccall((:gsl_combination_next, libgsl), Cint, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_prev(c) -> Cint

C signature:
`int gsl_combination_prev (gsl_combination * c)`
"""
function gsl_combination_prev(c)
    ccall((:gsl_combination_prev, libgsl), Cint, (Ptr{gsl_combination},), c)
end

"""
    gsl_combination_get(c, i) -> Csize_t

C signature:
`size_t gsl_combination_get (const gsl_combination * c, const size_t i)`
"""
function gsl_combination_get(c, i)
    ccall((:gsl_combination_get, libgsl), Csize_t, (Ref{gsl_combination}, Csize_t), c, i)
end

