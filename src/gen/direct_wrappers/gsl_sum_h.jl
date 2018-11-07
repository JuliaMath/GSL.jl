#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sum.h ################################################################


@doc md"""
    sum_levin_u_alloc(n) -> Ptr{gsl_sum_levin_u_workspace}

C signature:
`gsl_sum_levin_u_workspace *gsl_sum_levin_u_alloc (size_t n)`

GSL documentation:

### `gsl_sum_levin_u_workspace * gsl_sum_levin_u_alloc (size_t n)`

> This function allocates a workspace for a Levin $u$-transform of `n`
> terms. The size of the workspace is $O(2n^2 + 3n)$.

"""
function sum_levin_u_alloc(n)
    ccall((:gsl_sum_levin_u_alloc, libgsl), Ptr{gsl_sum_levin_u_workspace}, (Csize_t,), n)
end

@doc md"""
    sum_levin_u_free(w) -> Cvoid

C signature:
`void gsl_sum_levin_u_free (gsl_sum_levin_u_workspace * w)`

GSL documentation:

### `void gsl_sum_levin_u_free (gsl_sum_levin_u_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function sum_levin_u_free(w)
    ccall((:gsl_sum_levin_u_free, libgsl), Cvoid, (Ptr{gsl_sum_levin_u_workspace},), w)
end

@doc md"""
    sum_levin_u_accel(array, n, w, sum_accel, abserr) -> Cint

C signature:
`int gsl_sum_levin_u_accel (const double *array, const size_t n, gsl_sum_levin_u_workspace * w, double *sum_accel, double *abserr)`

GSL documentation:

### `int gsl_sum_levin_u_accel (const double * array, size_t array_size, gsl_sum_levin_u_workspace * w, double * sum_accel, double * abserr)`

> This function takes the terms of a series in `array` of size
> `array_size` and computes the extrapolated limit of the series using a
> Levin $u$-transform. Additional working space must be provided in `w`.
> The extrapolated sum is stored in `sum_accel`, with an estimate of the
> absolute error stored in `abserr`. The actual term-by-term sum is
> returned in `w->sum_plain`. The algorithm calculates the truncation
> error (the difference between two successive extrapolations) and
> round-off error (propagated from the individual terms) to choose an
> optimal number of terms for the extrapolation. All the terms of the
> series passed in through `array` should be non-zero.

"""
function sum_levin_u_accel(array, n, w, sum_accel, abserr)
    ccall((:gsl_sum_levin_u_accel, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, w, sum_accel, abserr)
end

@doc md"""
    sum_levin_u_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr) -> Cint

C signature:
`int gsl_sum_levin_u_minmax (const double *array, const size_t n, const size_t min_terms, const size_t max_terms, gsl_sum_levin_u_workspace * w, double *sum_accel, double *abserr)`
"""
function sum_levin_u_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr)
    ccall((:gsl_sum_levin_u_minmax, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, min_terms, max_terms, w, sum_accel, abserr)
end

@doc md"""
    sum_levin_u_step(term, n, nmax, w, sum_accel) -> Cint

C signature:
`int gsl_sum_levin_u_step (const double term, const size_t n, const size_t nmax, gsl_sum_levin_u_workspace * w, double *sum_accel)`
"""
function sum_levin_u_step(term, n, nmax, w, sum_accel)
    ccall((:gsl_sum_levin_u_step, libgsl), Cint, (Cdouble, Csize_t, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}), term, n, nmax, w, sum_accel)
end

@doc md"""
    sum_levin_utrunc_alloc(n) -> Ptr{gsl_sum_levin_utrunc_workspace}

C signature:
`gsl_sum_levin_utrunc_workspace *gsl_sum_levin_utrunc_alloc (size_t n)`

GSL documentation:

### `gsl_sum_levin_utrunc_workspace * gsl_sum_levin_utrunc_alloc (size_t n)`

> This function allocates a workspace for a Levin $u$-transform of `n`
> terms, without error estimation. The size of the workspace is $O(3n)$.

"""
function sum_levin_utrunc_alloc(n)
    ccall((:gsl_sum_levin_utrunc_alloc, libgsl), Ptr{gsl_sum_levin_utrunc_workspace}, (Csize_t,), n)
end

@doc md"""
    sum_levin_utrunc_free(w) -> Cvoid

C signature:
`void gsl_sum_levin_utrunc_free (gsl_sum_levin_utrunc_workspace * w)`

GSL documentation:

### `void gsl_sum_levin_utrunc_free (gsl_sum_levin_utrunc_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function sum_levin_utrunc_free(w)
    ccall((:gsl_sum_levin_utrunc_free, libgsl), Cvoid, (Ptr{gsl_sum_levin_utrunc_workspace},), w)
end

@doc md"""
    sum_levin_utrunc_accel(array, n, w, sum_accel, abserr_trunc) -> Cint

C signature:
`int gsl_sum_levin_utrunc_accel (const double *array, const size_t n, gsl_sum_levin_utrunc_workspace * w, double *sum_accel, double *abserr_trunc)`

GSL documentation:

### `int gsl_sum_levin_utrunc_accel (const double * array, size_t array_size, gsl_sum_levin_utrunc_workspace * w, double * sum_accel, double * abserr_trunc)`

> This function takes the terms of a series in `array` of size
> `array_size` and computes the extrapolated limit of the series using a
> Levin $u$-transform. Additional working space must be provided in `w`.
> The extrapolated sum is stored in `sum_accel`. The actual term-by-term
> sum is returned in `w->sum_plain`. The algorithm terminates when the
> difference between two successive extrapolations reaches a minimum or
> is sufficiently small. The difference between these two values is used
> as estimate of the error and is stored in `abserr_trunc`. To improve
> the reliability of the algorithm the extrapolated values are replaced
> by moving averages when calculating the truncation error, smoothing
> out any fluctuations.

"""
function sum_levin_utrunc_accel(array, n, w, sum_accel, abserr_trunc)
    ccall((:gsl_sum_levin_utrunc_accel, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, w, sum_accel, abserr_trunc)
end

@doc md"""
    sum_levin_utrunc_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr_trunc) -> Cint

C signature:
`int gsl_sum_levin_utrunc_minmax (const double *array, const size_t n, const size_t min_terms, const size_t max_terms, gsl_sum_levin_utrunc_workspace * w, double *sum_accel, double *abserr_trunc)`
"""
function sum_levin_utrunc_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr_trunc)
    ccall((:gsl_sum_levin_utrunc_minmax, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, min_terms, max_terms, w, sum_accel, abserr_trunc)
end

@doc md"""
    sum_levin_utrunc_step(term, n, w, sum_accel) -> Cint

C signature:
`int gsl_sum_levin_utrunc_step (const double term, const size_t n, gsl_sum_levin_utrunc_workspace * w, double *sum_accel)`
"""
function sum_levin_utrunc_step(term, n, w, sum_accel)
    ccall((:gsl_sum_levin_utrunc_step, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}), term, n, w, sum_accel)
end

