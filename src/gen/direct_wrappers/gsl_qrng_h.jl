#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_qrng.h ###############################################################


@doc md"""
    qrng_alloc(T, dimension) -> Ptr{gsl_qrng}

C signature:
`gsl_qrng * gsl_qrng_alloc (const gsl_qrng_type * T, unsigned int dimension)`

GSL documentation:

### `gsl_qrng * gsl_qrng_alloc (const gsl_qrng_type * T, unsigned int d)`

> This function returns a pointer to a newly-created instance of a
> quasi-random sequence generator of type `T` and dimension `d`. If
> there is insufficient memory to create the generator then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function qrng_alloc(T, dimension)
    ccall((:gsl_qrng_alloc, libgsl), Ptr{gsl_qrng}, (Ref{gsl_qrng_type}, Cuint), T, dimension)
end

@doc md"""
    qrng_memcpy(dest, src) -> Cint

C signature:
`int gsl_qrng_memcpy (gsl_qrng * dest, const gsl_qrng * src)`

GSL documentation:

### `int gsl_qrng_memcpy (gsl_qrng * dest, const gsl_qrng * src)`

> This function copies the quasi-random sequence generator `src` into
> the pre-existing generator `dest`, making `dest` into an exact copy of
> `src`. The two generators must be of the same type.

"""
function qrng_memcpy(dest, src)
    ccall((:gsl_qrng_memcpy, libgsl), Cint, (Ref{gsl_qrng}, Ref{gsl_qrng}), dest, src)
end

@doc md"""
    qrng_clone(q) -> Ptr{gsl_qrng}

C signature:
`gsl_qrng * gsl_qrng_clone (const gsl_qrng * q)`

GSL documentation:

### `gsl_qrng * gsl_qrng_clone (const gsl_qrng * q)`

> This function returns a pointer to a newly created generator which is
> an exact copy of the generator `q`.

"""
function qrng_clone(q)
    ccall((:gsl_qrng_clone, libgsl), Ptr{gsl_qrng}, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_free(q) -> Cvoid

C signature:
`void gsl_qrng_free (gsl_qrng * q)`

GSL documentation:

### `void gsl_qrng_free (gsl_qrng * q)`

> This function frees all the memory associated with the generator `q`.

"""
function qrng_free(q)
    ccall((:gsl_qrng_free, libgsl), Cvoid, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_init(q) -> Cvoid

C signature:
`void gsl_qrng_init (gsl_qrng * q)`

GSL documentation:

### `void gsl_qrng_init (gsl_qrng * q)`

> This function reinitializes the generator `q` to its starting point.
> Note that quasi-random sequences do not use a seed and always produce
> the same set of values.

"""
function qrng_init(q)
    ccall((:gsl_qrng_init, libgsl), Cvoid, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_name(q) -> Ptr{Cchar}

C signature:
`const char * gsl_qrng_name (const gsl_qrng * q)`

GSL documentation:

### `const char * gsl_qrng_name (const gsl_qrng * q)`

> This function returns a pointer to the name of the generator.

"""
function qrng_name(q)
    ccall((:gsl_qrng_name, libgsl), Ptr{Cchar}, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_size(q) -> Csize_t

C signature:
`size_t gsl_qrng_size (const gsl_qrng * q)`

GSL documentation:

### `size_t gsl_qrng_size (const gsl_qrng * q)`

> void \* gsl\_qrng\_state (const gsl\_qrng \* q)

> These functions return a pointer to the state of generator `r` and its
> size. You can use this information to access the state directly. For
> example, the following code will write the state of a generator to a
> stream:
>
>     void * state = gsl_qrng_state (q);
>     size_t n = gsl_qrng_size (q);
>     fwrite (state, n, 1, stream);

"""
function qrng_size(q)
    ccall((:gsl_qrng_size, libgsl), Csize_t, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_state(q) -> Ptr{Cvoid}

C signature:
`void * gsl_qrng_state (const gsl_qrng * q)`
"""
function qrng_state(q)
    ccall((:gsl_qrng_state, libgsl), Ptr{Cvoid}, (Ptr{gsl_qrng},), q)
end

@doc md"""
    qrng_get(q, x) -> Cint

C signature:
`int gsl_qrng_get (const gsl_qrng * q, double x[])`

GSL documentation:

### `int gsl_qrng_get (const gsl_qrng * q, double x[])`

> This function stores the next point from the sequence generator `q` in
> the array `x`. The space available for `x` must match the dimension of
> the generator. The point `x` will lie in the range $0 < x_i < 1$ for
> each $x_i$.

"""
function qrng_get(q, x)
    ccall((:gsl_qrng_get, libgsl), Cint, (Ref{gsl_qrng}, Ref{Cdouble}), q, x)
end

