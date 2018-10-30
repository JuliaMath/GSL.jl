#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_qrng.h ###############################################################


"""
    gsl_qrng_alloc(T, dimension) -> Ptr{gsl_qrng}

C signature:
`gsl_qrng * gsl_qrng_alloc (const gsl_qrng_type * T, unsigned int dimension)`
"""
function gsl_qrng_alloc(T, dimension)
    ccall((:gsl_qrng_alloc, libgsl), Ptr{gsl_qrng}, (Ref{gsl_qrng_type}, Cuint), T, dimension)
end

"""
    gsl_qrng_memcpy(dest, src) -> Cint

C signature:
`int gsl_qrng_memcpy (gsl_qrng * dest, const gsl_qrng * src)`
"""
function gsl_qrng_memcpy(dest, src)
    ccall((:gsl_qrng_memcpy, libgsl), Cint, (Ref{gsl_qrng}, Ref{gsl_qrng}), dest, src)
end

"""
    gsl_qrng_clone(q) -> Ptr{gsl_qrng}

C signature:
`gsl_qrng * gsl_qrng_clone (const gsl_qrng * q)`
"""
function gsl_qrng_clone(q)
    ccall((:gsl_qrng_clone, libgsl), Ptr{gsl_qrng}, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_free(q) -> Cvoid

C signature:
`void gsl_qrng_free (gsl_qrng * q)`
"""
function gsl_qrng_free(q)
    ccall((:gsl_qrng_free, libgsl), Cvoid, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_init(q) -> Cvoid

C signature:
`void gsl_qrng_init (gsl_qrng * q)`
"""
function gsl_qrng_init(q)
    ccall((:gsl_qrng_init, libgsl), Cvoid, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_name(q) -> Ptr{Cchar}

C signature:
`const char * gsl_qrng_name (const gsl_qrng * q)`
"""
function gsl_qrng_name(q)
    ccall((:gsl_qrng_name, libgsl), Ptr{Cchar}, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_size(q) -> Csize_t

C signature:
`size_t gsl_qrng_size (const gsl_qrng * q)`
"""
function gsl_qrng_size(q)
    ccall((:gsl_qrng_size, libgsl), Csize_t, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_state(q) -> Ptr{Cvoid}

C signature:
`void * gsl_qrng_state (const gsl_qrng * q)`
"""
function gsl_qrng_state(q)
    ccall((:gsl_qrng_state, libgsl), Ptr{Cvoid}, (Ptr{gsl_qrng},), q)
end

"""
    gsl_qrng_get(q, x) -> Cint

C signature:
`int gsl_qrng_get (const gsl_qrng * q, double x[])`
"""
function gsl_qrng_get(q, x)
    ccall((:gsl_qrng_get, libgsl), Cint, (Ref{gsl_qrng}, Ref{Cdouble}), q, x)
end

