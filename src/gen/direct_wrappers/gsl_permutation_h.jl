#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permutation.h ########################################################


"""
    gsl_permutation_alloc(n) -> Ptr{gsl_permutation}

C signature:
`gsl_permutation *gsl_permutation_alloc (const size_t n)`
"""
function gsl_permutation_alloc(n)
    ccall((:gsl_permutation_alloc, libgsl), Ptr{gsl_permutation}, (Csize_t,), n)
end

"""
    gsl_permutation_calloc(n) -> Ptr{gsl_permutation}

C signature:
`gsl_permutation *gsl_permutation_calloc (const size_t n)`
"""
function gsl_permutation_calloc(n)
    ccall((:gsl_permutation_calloc, libgsl), Ptr{gsl_permutation}, (Csize_t,), n)
end

"""
    gsl_permutation_init(p) -> Cvoid

C signature:
`void gsl_permutation_init (gsl_permutation * p)`
"""
function gsl_permutation_init(p)
    ccall((:gsl_permutation_init, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_free(p) -> Cvoid

C signature:
`void gsl_permutation_free (gsl_permutation * p)`
"""
function gsl_permutation_free(p)
    ccall((:gsl_permutation_free, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_memcpy(dest, src) -> Cint

C signature:
`int gsl_permutation_memcpy (gsl_permutation * dest, const gsl_permutation * src)`
"""
function gsl_permutation_memcpy(dest, src)
    ccall((:gsl_permutation_memcpy, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), dest, src)
end

"""
    gsl_permutation_fread(stream, p) -> Cint

C signature:
`int gsl_permutation_fread (FILE * stream, gsl_permutation * p)`
"""
function gsl_permutation_fread(stream, p)
    ccall((:gsl_permutation_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

"""
    gsl_permutation_fwrite(stream, p) -> Cint

C signature:
`int gsl_permutation_fwrite (FILE * stream, const gsl_permutation * p)`
"""
function gsl_permutation_fwrite(stream, p)
    ccall((:gsl_permutation_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

"""
    gsl_permutation_fscanf(stream, p) -> Cint

C signature:
`int gsl_permutation_fscanf (FILE * stream, gsl_permutation * p)`
"""
function gsl_permutation_fscanf(stream, p)
    ccall((:gsl_permutation_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}), stream, p)
end

"""
    gsl_permutation_fprintf(stream, p, format) -> Cint

C signature:
`int gsl_permutation_fprintf (FILE * stream, const gsl_permutation * p, const char *format)`
"""
function gsl_permutation_fprintf(stream, p, format)
    ccall((:gsl_permutation_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_permutation}, Ref{Cchar}), stream, p, format)
end

"""
    gsl_permutation_size(p) -> Csize_t

C signature:
`size_t gsl_permutation_size (const gsl_permutation * p)`
"""
function gsl_permutation_size(p)
    ccall((:gsl_permutation_size, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_data(p) -> Ptr{Csize_t}

C signature:
`size_t * gsl_permutation_data (const gsl_permutation * p)`
"""
function gsl_permutation_data(p)
    ccall((:gsl_permutation_data, libgsl), Ptr{Csize_t}, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_swap(p, i, j) -> Cint

C signature:
`int gsl_permutation_swap (gsl_permutation * p, const size_t i, const size_t j)`
"""
function gsl_permutation_swap(p, i, j)
    ccall((:gsl_permutation_swap, libgsl), Cint, (Ref{gsl_permutation}, Csize_t, Csize_t), p, i, j)
end

"""
    gsl_permutation_valid(p) -> Cint

C signature:
`int gsl_permutation_valid (const gsl_permutation * p)`
"""
function gsl_permutation_valid(p)
    ccall((:gsl_permutation_valid, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_reverse(p) -> Cvoid

C signature:
`void gsl_permutation_reverse (gsl_permutation * p)`
"""
function gsl_permutation_reverse(p)
    ccall((:gsl_permutation_reverse, libgsl), Cvoid, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_inverse(inv, p) -> Cint

C signature:
`int gsl_permutation_inverse (gsl_permutation * inv, const gsl_permutation * p)`
"""
function gsl_permutation_inverse(inv, p)
    ccall((:gsl_permutation_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), inv, p)
end

"""
    gsl_permutation_next(p) -> Cint

C signature:
`int gsl_permutation_next (gsl_permutation * p)`
"""
function gsl_permutation_next(p)
    ccall((:gsl_permutation_next, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_prev(p) -> Cint

C signature:
`int gsl_permutation_prev (gsl_permutation * p)`
"""
function gsl_permutation_prev(p)
    ccall((:gsl_permutation_prev, libgsl), Cint, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_mul(p, pa, pb) -> Cint

C signature:
`int gsl_permutation_mul (gsl_permutation * p, const gsl_permutation * pa, const gsl_permutation * pb)`
"""
function gsl_permutation_mul(p, pa, pb)
    ccall((:gsl_permutation_mul, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}, Ref{gsl_permutation}), p, pa, pb)
end

"""
    gsl_permutation_linear_to_canonical(q, p) -> Cint

C signature:
`int gsl_permutation_linear_to_canonical (gsl_permutation * q, const gsl_permutation * p)`
"""
function gsl_permutation_linear_to_canonical(q, p)
    ccall((:gsl_permutation_linear_to_canonical, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), q, p)
end

"""
    gsl_permutation_canonical_to_linear(p, q) -> Cint

C signature:
`int gsl_permutation_canonical_to_linear (gsl_permutation * p, const gsl_permutation * q)`
"""
function gsl_permutation_canonical_to_linear(p, q)
    ccall((:gsl_permutation_canonical_to_linear, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_permutation}), p, q)
end

"""
    gsl_permutation_inversions(p) -> Csize_t

C signature:
`size_t gsl_permutation_inversions (const gsl_permutation * p)`
"""
function gsl_permutation_inversions(p)
    ccall((:gsl_permutation_inversions, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_linear_cycles(p) -> Csize_t

C signature:
`size_t gsl_permutation_linear_cycles (const gsl_permutation * p)`
"""
function gsl_permutation_linear_cycles(p)
    ccall((:gsl_permutation_linear_cycles, libgsl), Csize_t, (Ptr{gsl_permutation},), p)
end

"""
    gsl_permutation_canonical_cycles(q) -> Csize_t

C signature:
`size_t gsl_permutation_canonical_cycles (const gsl_permutation * q)`
"""
function gsl_permutation_canonical_cycles(q)
    ccall((:gsl_permutation_canonical_cycles, libgsl), Csize_t, (Ptr{gsl_permutation},), q)
end

"""
    gsl_permutation_get(p, i) -> Csize_t

C signature:
`size_t gsl_permutation_get (const gsl_permutation * p, const size_t i)`
"""
function gsl_permutation_get(p, i)
    ccall((:gsl_permutation_get, libgsl), Csize_t, (Ref{gsl_permutation}, Csize_t), p, i)
end

