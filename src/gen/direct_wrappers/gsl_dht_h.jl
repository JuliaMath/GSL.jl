#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_dht.h ################################################################


@doc md"""
    dht_alloc(size) -> Ptr{gsl_dht}

C signature:
`gsl_dht * gsl_dht_alloc(size_t size)`

GSL documentation:

### `gsl_dht * gsl_dht_alloc (size_t size)`

> This function allocates a Discrete Hankel transform object of size
> `size`.

"""
function dht_alloc(size)
    ccall((:gsl_dht_alloc, libgsl), Ptr{gsl_dht}, (Csize_t,), size)
end

@doc md"""
    dht_new(size, nu, xmax) -> Ptr{gsl_dht}

C signature:
`gsl_dht * gsl_dht_new(size_t size, double nu, double xmax)`

GSL documentation:

### `gsl_dht * gsl_dht_new (size_t size, double nu, double xmax)`

> This function allocates a Discrete Hankel transform object of size
> `size` and initializes it for the given values of `nu` and `xmax`.

"""
function dht_new(size, nu, xmax)
    ccall((:gsl_dht_new, libgsl), Ptr{gsl_dht}, (Csize_t, Cdouble, Cdouble), size, nu, xmax)
end

@doc md"""
    dht_init(t, nu, xmax) -> Cint

C signature:
`int gsl_dht_init(gsl_dht * t, double nu, double xmax)`

GSL documentation:

### `int gsl_dht_init (gsl_dht * t, double nu, double xmax)`

> This function initializes the transform `t` for the given values of
> `nu` and `xmax`.

"""
function dht_init(t, nu, xmax)
    ccall((:gsl_dht_init, libgsl), Cint, (Ref{gsl_dht}, Cdouble, Cdouble), t, nu, xmax)
end

@doc md"""
    dht_x_sample(t, n) -> Cdouble

C signature:
`double gsl_dht_x_sample(const gsl_dht * t, int n)`

GSL documentation:

### `double gsl_dht_x_sample (const gsl_dht * t, int n)`

> This function returns the value of the `n`-th sample point in the unit
> interval, ${({j_{\nu,n+1}} / {j_{\nu,M}}}) X$. These are the points
> where the function $f(t)$ is assumed to be sampled.

"""
function dht_x_sample(t, n)
    ccall((:gsl_dht_x_sample, libgsl), Cdouble, (Ref{gsl_dht}, Cint), t, n)
end

@doc md"""
    dht_k_sample(t, n) -> Cdouble

C signature:
`double gsl_dht_k_sample(const gsl_dht * t, int n)`

GSL documentation:

### `double gsl_dht_k_sample (const gsl_dht * t, int n)`

> This function returns the value of the `n`-th sample point in
> "k-space", ${{j_{\nu,n+1}} / X}$.

"""
function dht_k_sample(t, n)
    ccall((:gsl_dht_k_sample, libgsl), Cdouble, (Ref{gsl_dht}, Cint), t, n)
end

@doc md"""
    dht_free(t) -> Cvoid

C signature:
`void gsl_dht_free(gsl_dht * t)`

GSL documentation:

### `void gsl_dht_free (gsl_dht * t)`

> This function frees the transform `t`.

"""
function dht_free(t)
    ccall((:gsl_dht_free, libgsl), Cvoid, (Ptr{gsl_dht},), t)
end

@doc md"""
    dht_apply(t, f_in, f_out) -> Cint

C signature:
`int gsl_dht_apply(const gsl_dht * t, double * f_in, double * f_out)`

GSL documentation:

### `int gsl_dht_apply (const gsl_dht * t, double * f_in, double * f_out)`

> This function applies the transform `t` to the array `f_in` whose size
> is equal to the size of the transform. The result is stored in the
> array `f_out` which must be of the same length.
>
> Applying this function to its output gives the original data
> multiplied by $(X^2/j_{\nu,M})^2$, up to numerical errors.

"""
function dht_apply(t, f_in, f_out)
    ccall((:gsl_dht_apply, libgsl), Cint, (Ref{gsl_dht}, Ref{Cdouble}, Ref{Cdouble}), t, f_in, f_out)
end

