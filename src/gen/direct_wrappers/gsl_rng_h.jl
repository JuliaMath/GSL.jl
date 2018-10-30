#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_rng.h ################################################################


"""
    gsl_rng_alloc(T) -> Ptr{gsl_rng}

C signature:
`gsl_rng *gsl_rng_alloc (const gsl_rng_type * T)`
"""
function gsl_rng_alloc(T)
    ccall((:gsl_rng_alloc, libgsl), Ptr{gsl_rng}, (Ptr{gsl_rng_type},), T)
end

"""
    gsl_rng_memcpy(dest, src) -> Cint

C signature:
`int gsl_rng_memcpy (gsl_rng * dest, const gsl_rng * src)`
"""
function gsl_rng_memcpy(dest, src)
    ccall((:gsl_rng_memcpy, libgsl), Cint, (Ref{gsl_rng}, Ref{gsl_rng}), dest, src)
end

"""
    gsl_rng_clone(r) -> Ptr{gsl_rng}

C signature:
`gsl_rng *gsl_rng_clone (const gsl_rng * r)`
"""
function gsl_rng_clone(r)
    ccall((:gsl_rng_clone, libgsl), Ptr{gsl_rng}, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_free(r) -> Cvoid

C signature:
`void gsl_rng_free (gsl_rng * r)`
"""
function gsl_rng_free(r)
    ccall((:gsl_rng_free, libgsl), Cvoid, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_set(r, seed) -> Cvoid

C signature:
`void gsl_rng_set (const gsl_rng * r, unsigned long int seed)`
"""
function gsl_rng_set(r, seed)
    ccall((:gsl_rng_set, libgsl), Cvoid, (Ref{gsl_rng}, Culong), r, seed)
end

"""
    gsl_rng_max(r) -> Culong

C signature:
`unsigned long int gsl_rng_max (const gsl_rng * r)`
"""
function gsl_rng_max(r)
    ccall((:gsl_rng_max, libgsl), Culong, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_min(r) -> Culong

C signature:
`unsigned long int gsl_rng_min (const gsl_rng * r)`
"""
function gsl_rng_min(r)
    ccall((:gsl_rng_min, libgsl), Culong, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_name(r) -> Ptr{Cchar}

C signature:
`const char *gsl_rng_name (const gsl_rng * r)`
"""
function gsl_rng_name(r)
    ccall((:gsl_rng_name, libgsl), Ptr{Cchar}, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_fread(stream, r) -> Cint

C signature:
`int gsl_rng_fread (FILE * stream, gsl_rng * r)`
"""
function gsl_rng_fread(stream, r)
    ccall((:gsl_rng_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_rng}), stream, r)
end

"""
    gsl_rng_fwrite(stream, r) -> Cint

C signature:
`int gsl_rng_fwrite (FILE * stream, const gsl_rng * r)`
"""
function gsl_rng_fwrite(stream, r)
    ccall((:gsl_rng_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_rng}), stream, r)
end

"""
    gsl_rng_size(r) -> Csize_t

C signature:
`size_t gsl_rng_size (const gsl_rng * r)`
"""
function gsl_rng_size(r)
    ccall((:gsl_rng_size, libgsl), Csize_t, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_state(r) -> Ptr{Cvoid}

C signature:
`void * gsl_rng_state (const gsl_rng * r)`
"""
function gsl_rng_state(r)
    ccall((:gsl_rng_state, libgsl), Ptr{Cvoid}, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_print_state(r) -> Cvoid

C signature:
`void gsl_rng_print_state (const gsl_rng * r)`
"""
function gsl_rng_print_state(r)
    ccall((:gsl_rng_print_state, libgsl), Cvoid, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_env_setup() -> Ptr{gsl_rng_type}

C signature:
`const gsl_rng_type * gsl_rng_env_setup (void)`
"""
function gsl_rng_env_setup()
    ccall((:gsl_rng_env_setup, libgsl), Ptr{gsl_rng_type}, (), )
end

"""
    gsl_rng_get(r) -> Culong

C signature:
`unsigned long int gsl_rng_get (const gsl_rng * r)`
"""
function gsl_rng_get(r)
    ccall((:gsl_rng_get, libgsl), Culong, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_uniform(r) -> Cdouble

C signature:
`double gsl_rng_uniform (const gsl_rng * r)`
"""
function gsl_rng_uniform(r)
    ccall((:gsl_rng_uniform, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_uniform_pos(r) -> Cdouble

C signature:
`double gsl_rng_uniform_pos (const gsl_rng * r)`
"""
function gsl_rng_uniform_pos(r)
    ccall((:gsl_rng_uniform_pos, libgsl), Cdouble, (Ptr{gsl_rng},), r)
end

"""
    gsl_rng_uniform_int(r, n) -> Culong

C signature:
`unsigned long int gsl_rng_uniform_int (const gsl_rng * r, unsigned long int n)`
"""
function gsl_rng_uniform_int(r, n)
    ccall((:gsl_rng_uniform_int, libgsl), Culong, (Ref{gsl_rng}, Culong), r, n)
end

