#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_histogram2d.h ########################################################


@doc md"""
    histogram2d_alloc(nx, ny) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_alloc (const size_t nx, const size_t ny)`

GSL documentation:

### `gsl_histogram2d * gsl_histogram2d_alloc (size_t nx, size_t ny)`

> This function allocates memory for a two-dimensional histogram with
> `nx` bins in the x direction and `ny` bins in the y direction. The
> function returns a pointer to a newly created `gsl_histogram2d`
> struct. If insufficient memory is available a null pointer is returned
> and the error handler is invoked with an error code of `GSL_ENOMEM`.
> The bins and ranges must be initialized with one of the functions
> below before the histogram is ready for use.

"""
function histogram2d_alloc(nx, ny)
    ccall((:gsl_histogram2d_alloc, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t), nx, ny)
end

@doc md"""
    histogram2d_calloc(nx, ny) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc (const size_t nx, const size_t ny)`
"""
function histogram2d_calloc(nx, ny)
    ccall((:gsl_histogram2d_calloc, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t), nx, ny)
end

@doc md"""
    histogram2d_calloc_uniform(nx, ny, xmin, xmax, ymin, ymax) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc_uniform (const size_t nx, const size_t ny, const double xmin, const double xmax, const double ymin, const double ymax)`
"""
function histogram2d_calloc_uniform(nx, ny, xmin, xmax, ymin, ymax)
    ccall((:gsl_histogram2d_calloc_uniform, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t, Cdouble, Cdouble, Cdouble, Cdouble), nx, ny, xmin, xmax, ymin, ymax)
end

@doc md"""
    histogram2d_free(h) -> Cvoid

C signature:
`void gsl_histogram2d_free (gsl_histogram2d * h)`

GSL documentation:

### `void gsl_histogram2d_free (gsl_histogram2d * h)`

> This function frees the 2D histogram `h` and all of the memory
> associated with it.

"""
function histogram2d_free(h)
    ccall((:gsl_histogram2d_free, libgsl), Cvoid, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_increment(h, x, y) -> Cint

C signature:
`int gsl_histogram2d_increment (gsl_histogram2d * h, double x, double y)`

GSL documentation:

### `int gsl_histogram2d_increment (gsl_histogram2d * h, double x, double y)`

> This function updates the histogram `h` by adding one (1.0) to the bin
> whose x and y ranges contain the coordinates (`x`, `y`).
>
> If the point $(x,y)$ lies inside the valid ranges of the histogram
> then the function returns zero to indicate success. If $(x,y)$ lies
> outside the limits of the histogram then the function returns
> `GSL_EDOM`, and none of the bins are modified. The error handler is
> not called, since it is often necessary to compute histograms for a
> small range of a larger dataset, ignoring any coordinates outside the
> range of interest.

"""
function histogram2d_increment(h, x, y)
    ccall((:gsl_histogram2d_increment, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble), h, x, y)
end

@doc md"""
    histogram2d_accumulate(h, x, y, weight) -> Cint

C signature:
`int gsl_histogram2d_accumulate (gsl_histogram2d * h, double x, double y, double weight)`

GSL documentation:

### `int gsl_histogram2d_accumulate (gsl_histogram2d * h, double x, double y, double weight)`

> This function is similar to `gsl_histogram2d_increment` but increases
> the value of the appropriate bin in the histogram `h` by the
> floating-point number `weight`.

"""
function histogram2d_accumulate(h, x, y, weight)
    ccall((:gsl_histogram2d_accumulate, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Cdouble), h, x, y, weight)
end

@doc md"""
    histogram2d_find(h, x, y, i, j) -> Cint

C signature:
`int gsl_histogram2d_find (const gsl_histogram2d * h, const double x, const double y, size_t * i, size_t * j)`

GSL documentation:

### `int gsl_histogram2d_find (const gsl_histogram2d * h, double x, double y, size_t * i, size_t * j)`

> This function finds and sets the indices `i` and `j` to the bin which
> covers the coordinates (`x`, `y`). The bin is located using a binary
> search. The search includes an optimization for histograms with
> uniform ranges, and will return the correct bin immediately in this
> case. If $(x,y)$ is found then the function sets the indices (`i`,
> `j`) and returns `GSL_SUCCESS`. If $(x,y)$ lies outside the valid
> range of the histogram then the function returns `GSL_EDOM` and the
> error handler is invoked.

"""
function histogram2d_find(h, x, y, i, j)
    ccall((:gsl_histogram2d_find, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Ref{Csize_t}, Ref{Csize_t}), h, x, y, i, j)
end

@doc md"""
    histogram2d_get(h, i, j) -> Cdouble

C signature:
`double gsl_histogram2d_get (const gsl_histogram2d * h, const size_t i, const size_t j)`

GSL documentation:

### `double gsl_histogram2d_get (const gsl_histogram2d * h, size_t i, size_t j)`

> This function returns the contents of the (`i`, `j`)-th bin of the
> histogram `h`. If (`i`, `j`) lies outside the valid range of indices
> for the histogram then the error handler is called with an error code
> of `GSL_EDOM` and the function returns 0.

"""
function histogram2d_get(h, i, j)
    ccall((:gsl_histogram2d_get, libgsl), Cdouble, (Ref{gsl_histogram2d}, Csize_t, Csize_t), h, i, j)
end

@doc md"""
    histogram2d_get_xrange(h, i, xlower, xupper) -> Cint

C signature:
`int gsl_histogram2d_get_xrange (const gsl_histogram2d * h, const size_t i, double * xlower, double * xupper)`

GSL documentation:

### `int gsl_histogram2d_get_xrange (const gsl_histogram2d * h, size_t i, double * xlower, double * xupper)`

> int gsl\_histogram2d\_get\_yrange (const gsl\_histogram2d \* h,
> size\_t j, double \* ylower, double \* yupper)

> These functions find the upper and lower range limits of the `i`-th
> and `j`-th bins in the x and y directions of the histogram `h`. The
> range limits are stored in `xlower` and `xupper` or `ylower` and
> `yupper`. The lower limits are inclusive (i.e. events with these
> coordinates are included in the bin) and the upper limits are
> exclusive (i.e. events with the value of the upper limit are not
> included and fall in the neighboring higher bin, if it exists). The
> functions return 0 to indicate success. If `i` or `j` lies outside the
> valid range of indices for the histogram then the error handler is
> called with an error code of `GSL_EDOM`.

"""
function histogram2d_get_xrange(h, i, xlower, xupper)
    ccall((:gsl_histogram2d_get_xrange, libgsl), Cint, (Ref{gsl_histogram2d}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, i, xlower, xupper)
end

@doc md"""
    histogram2d_get_yrange(h, j, ylower, yupper) -> Cint

C signature:
`int gsl_histogram2d_get_yrange (const gsl_histogram2d * h, const size_t j, double * ylower, double * yupper)`
"""
function histogram2d_get_yrange(h, j, ylower, yupper)
    ccall((:gsl_histogram2d_get_yrange, libgsl), Cint, (Ref{gsl_histogram2d}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, j, ylower, yupper)
end

@doc md"""
    histogram2d_xmax(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmax (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_xmax (const gsl_histogram2d * h)`

> double gsl\_histogram2d\_xmin (const gsl\_histogram2d \* h) size\_t
> gsl\_histogram2d\_nx (const gsl\_histogram2d \* h) double
> gsl\_histogram2d\_ymax (const gsl\_histogram2d \* h) double
> gsl\_histogram2d\_ymin (const gsl\_histogram2d \* h) size\_t
> gsl\_histogram2d\_ny (const gsl\_histogram2d \* h)

> These functions return the maximum upper and minimum lower range
> limits and the number of bins for the x and y directions of the
> histogram `h`. They provide a way of determining these values without
> accessing the `gsl_histogram2d` struct directly.

"""
function histogram2d_xmax(h)
    ccall((:gsl_histogram2d_xmax, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_xmin(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmin (const gsl_histogram2d * h)`
"""
function histogram2d_xmin(h)
    ccall((:gsl_histogram2d_xmin, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_nx(h) -> Csize_t

C signature:
`size_t gsl_histogram2d_nx (const gsl_histogram2d * h)`
"""
function histogram2d_nx(h)
    ccall((:gsl_histogram2d_nx, libgsl), Csize_t, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_ymax(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymax (const gsl_histogram2d * h)`
"""
function histogram2d_ymax(h)
    ccall((:gsl_histogram2d_ymax, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_ymin(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymin (const gsl_histogram2d * h)`
"""
function histogram2d_ymin(h)
    ccall((:gsl_histogram2d_ymin, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_ny(h) -> Csize_t

C signature:
`size_t gsl_histogram2d_ny (const gsl_histogram2d * h)`
"""
function histogram2d_ny(h)
    ccall((:gsl_histogram2d_ny, libgsl), Csize_t, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_reset(h) -> Cvoid

C signature:
`void gsl_histogram2d_reset (gsl_histogram2d * h)`

GSL documentation:

### `void gsl_histogram2d_reset (gsl_histogram2d * h)`

> This function resets all the bins of the histogram `h` to zero.

"""
function histogram2d_reset(h)
    ccall((:gsl_histogram2d_reset, libgsl), Cvoid, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_calloc_range(nx, ny, xrange, yrange) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc_range(size_t nx, size_t ny, double *xrange, double *yrange)`
"""
function histogram2d_calloc_range(nx, ny, xrange, yrange)
    ccall((:gsl_histogram2d_calloc_range, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}), nx, ny, xrange, yrange)
end

@doc md"""
    histogram2d_set_ranges_uniform(h, xmin, xmax, ymin, ymax) -> Cint

C signature:
`int gsl_histogram2d_set_ranges_uniform (gsl_histogram2d * h, double xmin, double xmax, double ymin, double ymax)`

GSL documentation:

### `int gsl_histogram2d_set_ranges_uniform (gsl_histogram2d * h, double xmin, double xmax, double ymin, double ymax)`

> This function sets the ranges of the existing histogram `h` to cover
> the ranges `xmin` to `xmax` and `ymin` to `ymax` uniformly. The values
> of the histogram bins are reset to zero.

"""
function histogram2d_set_ranges_uniform(h, xmin, xmax, ymin, ymax)
    ccall((:gsl_histogram2d_set_ranges_uniform, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Cdouble, Cdouble), h, xmin, xmax, ymin, ymax)
end

@doc md"""
    histogram2d_set_ranges(h, xrange, xsize, yrange, ysize) -> Cint

C signature:
`int gsl_histogram2d_set_ranges (gsl_histogram2d * h, const double xrange[], size_t xsize, const double yrange[], size_t ysize)`

GSL documentation:

### `int gsl_histogram2d_set_ranges (gsl_histogram2d * h,  const double xrange[], size_t xsize, const double yrange[], size_t ysize)`

> This function sets the ranges of the existing histogram `h` using the
> arrays `xrange` and `yrange` of size `xsize` and `ysize` respectively.
> The values of the histogram bins are reset to zero.

"""
function histogram2d_set_ranges(h, xrange, xsize, yrange, ysize)
    ccall((:gsl_histogram2d_set_ranges, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t), h, xrange, xsize, yrange, ysize)
end

@doc md"""
    histogram2d_memcpy(dest, source) -> Cint

C signature:
`int gsl_histogram2d_memcpy(gsl_histogram2d *dest, const gsl_histogram2d *source)`

GSL documentation:

### `int gsl_histogram2d_memcpy (gsl_histogram2d * dest, const gsl_histogram2d * src)`

> This function copies the histogram `src` into the pre-existing
> histogram `dest`, making `dest` into an exact copy of `src`. The two
> histograms must be of the same size.

"""
function histogram2d_memcpy(dest, source)
    ccall((:gsl_histogram2d_memcpy, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), dest, source)
end

@doc md"""
    histogram2d_clone(source) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_clone(const gsl_histogram2d * source)`

GSL documentation:

### `gsl_histogram2d * gsl_histogram2d_clone (const gsl_histogram2d * src)`

> This function returns a pointer to a newly created histogram which is
> an exact copy of the histogram `src`.

"""
function histogram2d_clone(source)
    ccall((:gsl_histogram2d_clone, libgsl), Ptr{gsl_histogram2d}, (Ptr{gsl_histogram2d},), source)
end

@doc md"""
    histogram2d_max_val(h) -> Cdouble

C signature:
`double gsl_histogram2d_max_val(const gsl_histogram2d *h)`

GSL documentation:

### `double gsl_histogram2d_max_val (const gsl_histogram2d * h)`

> This function returns the maximum value contained in the histogram
> bins.

"""
function histogram2d_max_val(h)
    ccall((:gsl_histogram2d_max_val, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_max_bin(h, i, j) -> Cvoid

C signature:
`void gsl_histogram2d_max_bin (const gsl_histogram2d *h, size_t *i, size_t *j)`

GSL documentation:

### `void gsl_histogram2d_max_bin (const gsl_histogram2d * h, size_t * i, size_t * j)`

> This function finds the indices of the bin containing the maximum
> value in the histogram `h` and stores the result in (`i`, `j`). In the
> case where several bins contain the same maximum value the first bin
> found is returned.

"""
function histogram2d_max_bin(h, i, j)
    ccall((:gsl_histogram2d_max_bin, libgsl), Cvoid, (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j)
end

@doc md"""
    histogram2d_min_val(h) -> Cdouble

C signature:
`double gsl_histogram2d_min_val(const gsl_histogram2d *h)`

GSL documentation:

### `double gsl_histogram2d_min_val (const gsl_histogram2d * h)`

> This function returns the minimum value contained in the histogram
> bins.

"""
function histogram2d_min_val(h)
    ccall((:gsl_histogram2d_min_val, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_min_bin(h, i, j) -> Cvoid

C signature:
`void gsl_histogram2d_min_bin (const gsl_histogram2d *h, size_t *i, size_t *j)`

GSL documentation:

### `void gsl_histogram2d_min_bin (const gsl_histogram2d * h, size_t * i, size_t * j)`

> This function finds the indices of the bin containing the minimum
> value in the histogram `h` and stores the result in (`i`, `j`). In the
> case where several bins contain the same maximum value the first bin
> found is returned.

"""
function histogram2d_min_bin(h, i, j)
    ccall((:gsl_histogram2d_min_bin, libgsl), Cvoid, (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j)
end

@doc md"""
    histogram2d_xmean(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmean (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_xmean (const gsl_histogram2d * h)`

> This function returns the mean of the histogrammed x variable, where
> the histogram is regarded as a probability distribution. Negative bin
> values are ignored for the purposes of this calculation.

"""
function histogram2d_xmean(h)
    ccall((:gsl_histogram2d_xmean, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_ymean(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymean (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_ymean (const gsl_histogram2d * h)`

> This function returns the mean of the histogrammed y variable, where
> the histogram is regarded as a probability distribution. Negative bin
> values are ignored for the purposes of this calculation.

"""
function histogram2d_ymean(h)
    ccall((:gsl_histogram2d_ymean, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_xsigma(h) -> Cdouble

C signature:
`double gsl_histogram2d_xsigma (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_xsigma (const gsl_histogram2d * h)`

> This function returns the standard deviation of the histogrammed x
> variable, where the histogram is regarded as a probability
> distribution. Negative bin values are ignored for the purposes of this
> calculation.

"""
function histogram2d_xsigma(h)
    ccall((:gsl_histogram2d_xsigma, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_ysigma(h) -> Cdouble

C signature:
`double gsl_histogram2d_ysigma (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_ysigma (const gsl_histogram2d * h)`

> This function returns the standard deviation of the histogrammed y
> variable, where the histogram is regarded as a probability
> distribution. Negative bin values are ignored for the purposes of this
> calculation.

"""
function histogram2d_ysigma(h)
    ccall((:gsl_histogram2d_ysigma, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_cov(h) -> Cdouble

C signature:
`double gsl_histogram2d_cov (const gsl_histogram2d * h)`

GSL documentation:

### `double gsl_histogram2d_cov (const gsl_histogram2d * h)`

> This function returns the covariance of the histogrammed x and y
> variables, where the histogram is regarded as a probability
> distribution. Negative bin values are ignored for the purposes of this
> calculation.

"""
function histogram2d_cov(h)
    ccall((:gsl_histogram2d_cov, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_sum(h) -> Cdouble

C signature:
`double gsl_histogram2d_sum (const gsl_histogram2d *h)`

GSL documentation:

### `double gsl_histogram2d_sum (const gsl_histogram2d * h)`

> This function returns the sum of all bin values. Negative bin values
> are included in the sum.

"""
function histogram2d_sum(h)
    ccall((:gsl_histogram2d_sum, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

@doc md"""
    histogram2d_equal_bins_p(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_equal_bins_p(const gsl_histogram2d *h1, const gsl_histogram2d *h2)`

GSL documentation:

### `int gsl_histogram2d_equal_bins_p (const gsl_histogram2d * h1, const gsl_histogram2d * h2)`

> This function returns 1 if all the individual bin ranges of the two
> histograms are identical, and 0 otherwise.

"""
function histogram2d_equal_bins_p(h1, h2)
    ccall((:gsl_histogram2d_equal_bins_p, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

@doc md"""
    histogram2d_add(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_add(gsl_histogram2d *h1, const gsl_histogram2d *h2)`

GSL documentation:

### `int gsl_histogram2d_add (gsl_histogram2d * h1, const gsl_histogram2d * h2)`

> This function adds the contents of the bins in histogram `h2` to the
> corresponding bins of histogram `h1`, i.e.
> $h'_1(i,j) = h_1(i,j) + h_2(i,j)$. The two histograms must have
> identical bin ranges.

"""
function histogram2d_add(h1, h2)
    ccall((:gsl_histogram2d_add, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

@doc md"""
    histogram2d_sub(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_sub(gsl_histogram2d *h1, const gsl_histogram2d *h2)`

GSL documentation:

### `int gsl_histogram2d_sub (gsl_histogram2d * h1, const gsl_histogram2d * h2)`

> This function subtracts the contents of the bins in histogram `h2`
> from the corresponding bins of histogram `h1`, i.e.
> $h'_1(i,j) = h_1(i,j) - h_2(i,j)$. The two histograms must have
> identical bin ranges.

"""
function histogram2d_sub(h1, h2)
    ccall((:gsl_histogram2d_sub, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

@doc md"""
    histogram2d_mul(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_mul(gsl_histogram2d *h1, const gsl_histogram2d *h2)`

GSL documentation:

### `int gsl_histogram2d_mul (gsl_histogram2d * h1, const gsl_histogram2d * h2)`

> This function multiplies the contents of the bins of histogram `h1` by
> the contents of the corresponding bins in histogram `h2`, i.e.
> $h'_1(i,j) = h_1(i,j) * h_2(i,j)$. The two histograms must have
> identical bin ranges.

"""
function histogram2d_mul(h1, h2)
    ccall((:gsl_histogram2d_mul, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

@doc md"""
    histogram2d_div(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_div(gsl_histogram2d *h1, const gsl_histogram2d *h2)`

GSL documentation:

### `int gsl_histogram2d_div (gsl_histogram2d * h1, const gsl_histogram2d * h2)`

> This function divides the contents of the bins of histogram `h1` by
> the contents of the corresponding bins in histogram `h2`, i.e.
> $h'_1(i,j) = h_1(i,j) / h_2(i,j)$. The two histograms must have
> identical bin ranges.

"""
function histogram2d_div(h1, h2)
    ccall((:gsl_histogram2d_div, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

@doc md"""
    histogram2d_scale(h, scale) -> Cint

C signature:
`int gsl_histogram2d_scale(gsl_histogram2d *h, double scale)`

GSL documentation:

### `int gsl_histogram2d_scale (gsl_histogram2d * h, double scale)`

> This function multiplies the contents of the bins of histogram `h` by
> the constant `scale`, i.e.

"""
function histogram2d_scale(h, scale)
    ccall((:gsl_histogram2d_scale, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble), h, scale)
end

@doc md"""
    histogram2d_shift(h, shift) -> Cint

C signature:
`int gsl_histogram2d_shift(gsl_histogram2d *h, double shift)`

GSL documentation:

### `int gsl_histogram2d_shift (gsl_histogram2d * h, double offset)`

> This function shifts the contents of the bins of histogram `h` by the
> constant `offset`, i.e.

"""
function histogram2d_shift(h, shift)
    ccall((:gsl_histogram2d_shift, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble), h, shift)
end

@doc md"""
    histogram2d_fwrite(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fwrite (FILE * stream, const gsl_histogram2d * h)`

GSL documentation:

### `int gsl_histogram2d_fwrite (FILE * stream, const gsl_histogram2d * h)`

> This function writes the ranges and bins of the histogram `h` to the
> stream `stream` in binary format. The return value is 0 for success
> and `GSL_EFAILED` if there was a problem writing to the file. Since
> the data is written in the native binary format it may not be portable
> between different architectures.

"""
function histogram2d_fwrite(stream, h)
    ccall((:gsl_histogram2d_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

@doc md"""
    histogram2d_fread(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fread (FILE * stream, gsl_histogram2d * h)`

GSL documentation:

### `int gsl_histogram2d_fread (FILE * stream, gsl_histogram2d * h)`

> This function reads into the histogram `h` from the stream `stream` in
> binary format. The histogram `h` must be preallocated with the correct
> size since the function uses the number of x and y bins in `h` to
> determine how many bytes to read. The return value is 0 for success
> and `GSL_EFAILED` if there was a problem reading from the file. The
> data is assumed to have been written in the native binary format on
> the same architecture.

"""
function histogram2d_fread(stream, h)
    ccall((:gsl_histogram2d_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

@doc md"""
    histogram2d_fprintf(stream, h, range_format, bin_format) -> Cint

C signature:
`int gsl_histogram2d_fprintf (FILE * stream, const gsl_histogram2d * h, const char * range_format, const char * bin_format)`

GSL documentation:

### `int gsl_histogram2d_fprintf (FILE * stream, const gsl_histogram2d * h, const char * range_format, const char * bin_format)`

> This function writes the ranges and bins of the histogram `h`
> line-by-line to the stream `stream` using the format specifiers
> `range_format` and `bin_format`. These should be one of the `%g`, `%e`
> or `%f` formats for floating point numbers. The function returns 0 for
> success and `GSL_EFAILED` if there was a problem writing to the file.
> The histogram output is formatted in five columns, and the columns are
> separated by spaces, like this:
>
>     xrange[0] xrange[1] yrange[0] yrange[1] bin(0,0)
>     xrange[0] xrange[1] yrange[1] yrange[2] bin(0,1)
>     xrange[0] xrange[1] yrange[2] yrange[3] bin(0,2)
>     ....
>     xrange[0] xrange[1] yrange[ny-1] yrange[ny] bin(0,ny-1)
>
>     xrange[1] xrange[2] yrange[0] yrange[1] bin(1,0)
>     xrange[1] xrange[2] yrange[1] yrange[2] bin(1,1)
>     xrange[1] xrange[2] yrange[1] yrange[2] bin(1,2)
>     ....
>     xrange[1] xrange[2] yrange[ny-1] yrange[ny] bin(1,ny-1)
>
>     ....
>
>     xrange[nx-1] xrange[nx] yrange[0] yrange[1] bin(nx-1,0)
>     xrange[nx-1] xrange[nx] yrange[1] yrange[2] bin(nx-1,1)
>     xrange[nx-1] xrange[nx] yrange[1] yrange[2] bin(nx-1,2)
>     ....
>     xrange[nx-1] xrange[nx] yrange[ny-1] yrange[ny] bin(nx-1,ny-1)
>
> Each line contains the lower and upper limits of the bin and the
> contents of the bin. Since the upper limits of the each bin are the
> lower limits of the neighboring bins there is duplication of these
> values but this allows the histogram to be manipulated with
> line-oriented tools.

"""
function histogram2d_fprintf(stream, h, range_format, bin_format)
    ccall((:gsl_histogram2d_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}, Ref{Cchar}, Ref{Cchar}), stream, h, range_format, bin_format)
end

@doc md"""
    histogram2d_fscanf(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fscanf (FILE * stream, gsl_histogram2d * h)`

GSL documentation:

### `int gsl_histogram2d_fscanf (FILE * stream, gsl_histogram2d * h)`

> This function reads formatted data from the stream `stream` into the
> histogram `h`. The data is assumed to be in the five-column format
> used by `gsl_histogram2d_fprintf`. The histogram `h` must be
> preallocated with the correct lengths since the function uses the
> sizes of `h` to determine how many numbers to read. The function
> returns 0 for success and `GSL_EFAILED` if there was a problem reading
> from the file.

"""
function histogram2d_fscanf(stream, h)
    ccall((:gsl_histogram2d_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

@doc md"""
    histogram2d_pdf_alloc(nx, ny) -> Ptr{gsl_histogram2d_pdf}

C signature:
`gsl_histogram2d_pdf * gsl_histogram2d_pdf_alloc (const size_t nx, const size_t ny)`

GSL documentation:

### `gsl_histogram2d_pdf * gsl_histogram2d_pdf_alloc (size_t nx, size_t ny)`

> This function allocates memory for a two-dimensional probability
> distribution of size `nx`-by-`ny` and returns a pointer to a newly
> initialized `gsl_histogram2d_pdf` struct. If insufficient memory is
> available a null pointer is returned and the error handler is invoked
> with an error code of `GSL_ENOMEM`.

"""
function histogram2d_pdf_alloc(nx, ny)
    ccall((:gsl_histogram2d_pdf_alloc, libgsl), Ptr{gsl_histogram2d_pdf}, (Csize_t, Csize_t), nx, ny)
end

@doc md"""
    histogram2d_pdf_init(p, h) -> Cint

C signature:
`int gsl_histogram2d_pdf_init (gsl_histogram2d_pdf * p, const gsl_histogram2d * h)`

GSL documentation:

### `int gsl_histogram2d_pdf_init (gsl_histogram2d_pdf * p, const gsl_histogram2d * h)`

> This function initializes the two-dimensional probability distribution
> calculated `p` from the histogram `h`. If any of the bins of `h` are
> negative then the error handler is invoked with an error code of
> `GSL_EDOM` because a probability distribution cannot contain negative
> values.

"""
function histogram2d_pdf_init(p, h)
    ccall((:gsl_histogram2d_pdf_init, libgsl), Cint, (Ref{gsl_histogram2d_pdf}, Ref{gsl_histogram2d}), p, h)
end

@doc md"""
    histogram2d_pdf_free(p) -> Cvoid

C signature:
`void gsl_histogram2d_pdf_free (gsl_histogram2d_pdf * p)`

GSL documentation:

### `void gsl_histogram2d_pdf_free (gsl_histogram2d_pdf * p)`

> This function frees the two-dimensional probability distribution
> function `p` and all of the memory associated with it.

"""
function histogram2d_pdf_free(p)
    ccall((:gsl_histogram2d_pdf_free, libgsl), Cvoid, (Ptr{gsl_histogram2d_pdf},), p)
end

@doc md"""
    histogram2d_pdf_sample(p, r1, r2, x, y) -> Cint

C signature:
`int gsl_histogram2d_pdf_sample (const gsl_histogram2d_pdf * p, double r1, double r2, double * x, double * y)`

GSL documentation:

### `int gsl_histogram2d_pdf_sample (const gsl_histogram2d_pdf * p, double r1, double r2, double * x, double * y)`

> This function uses two uniform random numbers between zero and one,
> `r1` and `r2`, to compute a single random sample from the
> two-dimensional probability distribution `p`.

"""
function histogram2d_pdf_sample(p, r1, r2, x, y)
    ccall((:gsl_histogram2d_pdf_sample, libgsl), Cint, (Ref{gsl_histogram2d_pdf}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), p, r1, r2, x, y)
end

