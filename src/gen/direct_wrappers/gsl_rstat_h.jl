#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_rstat.h ##############################################################


@doc md"""
    rstat_quantile_alloc(p) -> Ptr{gsl_rstat_quantile_workspace}

C signature:
`gsl_rstat_quantile_workspace *gsl_rstat_quantile_alloc(const double p)`

GSL documentation:

### `gsl_rstat_quantile_workspace * gsl_rstat_quantile_alloc (const double p)`

> This function allocates a workspace for the dynamic estimation of
> `p`-quantiles, where `p` is between $0$ and $1$. The median
> corresponds to $p = 0.5$. The size of the workspace is $O(1)$.

"""
function rstat_quantile_alloc(p)
    ccall((:gsl_rstat_quantile_alloc, libgsl), Ptr{gsl_rstat_quantile_workspace}, (Cdouble,), p)
end

@doc md"""
    rstat_quantile_free(w) -> Cvoid

C signature:
`void gsl_rstat_quantile_free(gsl_rstat_quantile_workspace *w)`

GSL documentation:

### `void gsl_rstat_quantile_free (gsl_rstat_quantile_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function rstat_quantile_free(w)
    ccall((:gsl_rstat_quantile_free, libgsl), Cvoid, (Ptr{gsl_rstat_quantile_workspace},), w)
end

@doc md"""
    rstat_quantile_reset(w) -> Cint

C signature:
`int gsl_rstat_quantile_reset(gsl_rstat_quantile_workspace *w)`

GSL documentation:

### `int gsl_rstat_quantile_reset (gsl_rstat_quantile_workspace * w)`

> This function resets the workspace `w` to its initial state, so it can
> begin working on a new set of data.

"""
function rstat_quantile_reset(w)
    ccall((:gsl_rstat_quantile_reset, libgsl), Cint, (Ptr{gsl_rstat_quantile_workspace},), w)
end

@doc md"""
    rstat_quantile_add(x, w) -> Cint

C signature:
`int gsl_rstat_quantile_add(const double x, gsl_rstat_quantile_workspace *w)`

GSL documentation:

### `int gsl_rstat_quantile_add (const double x, gsl_rstat_quantile_workspace * w)`

> This function updates the estimate of the $p$-quantile with the new
> data point `x`.

"""
function rstat_quantile_add(x, w)
    ccall((:gsl_rstat_quantile_add, libgsl), Cint, (Cdouble, Ref{gsl_rstat_quantile_workspace}), x, w)
end

@doc md"""
    rstat_quantile_get(w) -> Cdouble

C signature:
`double gsl_rstat_quantile_get(gsl_rstat_quantile_workspace *w)`

GSL documentation:

### `double gsl_rstat_quantile_get (gsl_rstat_quantile_workspace * w)`

> This function returns the current estimate of the $p$-quantile.

"""
function rstat_quantile_get(w)
    ccall((:gsl_rstat_quantile_get, libgsl), Cdouble, (Ptr{gsl_rstat_quantile_workspace},), w)
end

@doc md"""
    rstat_alloc() -> Ptr{gsl_rstat_workspace}

C signature:
`gsl_rstat_workspace *gsl_rstat_alloc(void)`

GSL documentation:

### `gsl_rstat_workspace * gsl_rstat_alloc (void)`

> This function allocates a workspace for computing running statistics.
> The size of the workspace is $O(1)$.

"""
function rstat_alloc()
    ccall((:gsl_rstat_alloc, libgsl), Ptr{gsl_rstat_workspace}, (), )
end

@doc md"""
    rstat_free(w) -> Cvoid

C signature:
`void gsl_rstat_free(gsl_rstat_workspace *w)`

GSL documentation:

### `void gsl_rstat_free (gsl_rstat_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function rstat_free(w)
    ccall((:gsl_rstat_free, libgsl), Cvoid, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_n(w) -> Csize_t

C signature:
`size_t gsl_rstat_n(const gsl_rstat_workspace *w)`

GSL documentation:

### `size_t gsl_rstat_n (const gsl_rstat_workspace * w)`

> This function returns the number of data so far added to the
> accumulator.

"""
function rstat_n(w)
    ccall((:gsl_rstat_n, libgsl), Csize_t, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_add(x, w) -> Cint

C signature:
`int gsl_rstat_add(const double x, gsl_rstat_workspace *w)`

GSL documentation:

### `int gsl_rstat_add (const double x, gsl_rstat_workspace * w)`

> This function adds the data point `x` to the statistical accumulator,
> updating calculations of the mean, variance, standard deviation,
> skewness, kurtosis, and median.

"""
function rstat_add(x, w)
    ccall((:gsl_rstat_add, libgsl), Cint, (Cdouble, Ref{gsl_rstat_workspace}), x, w)
end

@doc md"""
    rstat_min(w) -> Cdouble

C signature:
`double gsl_rstat_min(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_min (const gsl_rstat_workspace * w)`

> This function returns the minimum value added to the accumulator.

"""
function rstat_min(w)
    ccall((:gsl_rstat_min, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_max(w) -> Cdouble

C signature:
`double gsl_rstat_max(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_max (const gsl_rstat_workspace * w)`

> This function returns the maximum value added to the accumulator.

"""
function rstat_max(w)
    ccall((:gsl_rstat_max, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_mean(w) -> Cdouble

C signature:
`double gsl_rstat_mean(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_mean (const gsl_rstat_workspace * w)`

> This function returns the mean of all data added to the accumulator,
> defined as
>
> not texinfo
>
> $${\Hat\mu} = {1 \over N} \sum x_i$$
>
> texinfo
>
>     \Hat\mu = (1/N) \sum x_i

"""
function rstat_mean(w)
    ccall((:gsl_rstat_mean, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_variance(w) -> Cdouble

C signature:
`double gsl_rstat_variance(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_variance (const gsl_rstat_workspace * w)`

> This function returns the variance of all data added to the
> accumulator, defined as
>
> not texinfo
>
> $${\Hat\sigma}^2 = {1 \over (N-1)} \sum (x_i - {\Hat\mu})^2$$
>
> texinfo
>
>     \Hat\sigma^2 = (1/(N-1)) \sum (x_i - \Hat\mu)^2

"""
function rstat_variance(w)
    ccall((:gsl_rstat_variance, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_sd(w) -> Cdouble

C signature:
`double gsl_rstat_sd(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_sd (const gsl_rstat_workspace * w)`

> This function returns the standard deviation of all data added to the
> accumulator, defined as the square root of the variance given above.

"""
function rstat_sd(w)
    ccall((:gsl_rstat_sd, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_rms(w) -> Cdouble

C signature:
`double gsl_rstat_rms(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_rms (const gsl_rstat_workspace * w)`

> This function returns the root mean square of all data added to the
> accumulator, defined as
>
> $$rms = \sqrt{{1 \over N} \sum x_i^2}$$

"""
function rstat_rms(w)
    ccall((:gsl_rstat_rms, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_sd_mean(w) -> Cdouble

C signature:
`double gsl_rstat_sd_mean(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_sd_mean (const gsl_rstat_workspace * w)`

> This function returns the standard deviation of the mean, defined as
>
> not texinfo
>
> $$\Hat\sigma_{\Hat\mu} = {\Hat\sigma \over \sqrt{N}}$$
>
> texinfo
>
>     sd_mean = \Hat\sigma / \sqrt{N}

"""
function rstat_sd_mean(w)
    ccall((:gsl_rstat_sd_mean, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_median(w) -> Cdouble

C signature:
`double gsl_rstat_median(gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_median (gsl_rstat_workspace * w)`

> This function returns an estimate of the median of the data added to
> the accumulator.

"""
function rstat_median(w)
    ccall((:gsl_rstat_median, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_skew(w) -> Cdouble

C signature:
`double gsl_rstat_skew(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_skew (const gsl_rstat_workspace * w)`

> This function returns the skewness of all data added to the
> accumulator, defined as
>
> not texinfo
>
> $$skew = {1 \over N} \sum 
>  {\left( x_i - {\Hat\mu} \over {\Hat\sigma} \right)}^3$$
>
> texinfo
>
>     skew = (1/N) \sum ((x_i - \Hat\mu)/\Hat\sigma)^3

"""
function rstat_skew(w)
    ccall((:gsl_rstat_skew, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_kurtosis(w) -> Cdouble

C signature:
`double gsl_rstat_kurtosis(const gsl_rstat_workspace *w)`

GSL documentation:

### `double gsl_rstat_kurtosis (const gsl_rstat_workspace * w)`

> This function returns the kurtosis of all data added to the
> accumulator, defined as
>
> not texinfo
>
> $$kurtosis = \left( {1 \over N} \sum 
>  {\left(x_i - {\Hat\mu} \over {\Hat\sigma} \right)}^4 
>  \right) 
>  - 3$$
>
> texinfo
>
>     kurtosis = ((1/N) \sum ((x_i - \Hat\mu)/\Hat\sigma)^4)  - 3

"""
function rstat_kurtosis(w)
    ccall((:gsl_rstat_kurtosis, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

@doc md"""
    rstat_reset(w) -> Cint

C signature:
`int gsl_rstat_reset(gsl_rstat_workspace *w)`

GSL documentation:

### `int gsl_rstat_reset (gsl_rstat_workspace * w)`

> This function resets the workspace `w` to its initial state, so it can
> begin working on a new set of data.

"""
function rstat_reset(w)
    ccall((:gsl_rstat_reset, libgsl), Cint, (Ptr{gsl_rstat_workspace},), w)
end

