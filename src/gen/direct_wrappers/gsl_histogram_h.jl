#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_histogram.h ##########################################################


@doc md"""
    histogram_alloc(n) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_alloc (size_t n)`

GSL documentation:

### `gsl_histogram * gsl_histogram_alloc (size_t n)`

> This function allocates memory for a histogram with `n` bins, and
> returns a pointer to a newly created `gsl_histogram` struct. If
> insufficient memory is available a null pointer is returned and the
> error handler is invoked with an error code of `GSL_ENOMEM`. The bins
> and ranges are not initialized, and should be prepared using one of
> the range-setting functions below in order to make the histogram ready
> for use.

"""
function histogram_alloc(n)
    ccall((:gsl_histogram_alloc, libgsl), Ptr{gsl_histogram}, (Csize_t,), n)
end

@doc md"""
    histogram_calloc(n) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc (size_t n)`
"""
function histogram_calloc(n)
    ccall((:gsl_histogram_calloc, libgsl), Ptr{gsl_histogram}, (Csize_t,), n)
end

@doc md"""
    histogram_calloc_uniform(n, xmin, xmax) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc_uniform (const size_t n, const double xmin, const double xmax)`
"""
function histogram_calloc_uniform(n, xmin, xmax)
    ccall((:gsl_histogram_calloc_uniform, libgsl), Ptr{gsl_histogram}, (Csize_t, Cdouble, Cdouble), n, xmin, xmax)
end

@doc md"""
    histogram_free(h) -> Cvoid

C signature:
`void gsl_histogram_free (gsl_histogram * h)`

GSL documentation:

### `void gsl_histogram_free (gsl_histogram * h)`

> This function frees the histogram `h` and all of the memory associated
> with it.

"""
function histogram_free(h)
    ccall((:gsl_histogram_free, libgsl), Cvoid, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_increment(h, x) -> Cint

C signature:
`int gsl_histogram_increment (gsl_histogram * h, double x)`

GSL documentation:

### `int gsl_histogram_increment (gsl_histogram * h, double x)`

> This function updates the histogram `h` by adding one (1.0) to the bin
> whose range contains the coordinate `x`.
>
> If `x` lies in the valid range of the histogram then the function
> returns zero to indicate success. If `x` is less than the lower limit
> of the histogram then the function returns `GSL_EDOM`, and none of
> bins are modified. Similarly, if the value of `x` is greater than or
> equal to the upper limit of the histogram then the function returns
> `GSL_EDOM`, and none of the bins are modified. The error handler is
> not called, however, since it is often necessary to compute histograms
> for a small range of a larger dataset, ignoring the values outside the
> range of interest.

"""
function histogram_increment(h, x)
    ccall((:gsl_histogram_increment, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, x)
end

@doc md"""
    histogram_accumulate(h, x, weight) -> Cint

C signature:
`int gsl_histogram_accumulate (gsl_histogram * h, double x, double weight)`

GSL documentation:

### `int gsl_histogram_accumulate (gsl_histogram * h, double x, double weight)`

> This function is similar to `gsl_histogram_increment` but increases
> the value of the appropriate bin in the histogram `h` by the
> floating-point number `weight`.

"""
function histogram_accumulate(h, x, weight)
    ccall((:gsl_histogram_accumulate, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Cdouble), h, x, weight)
end

@doc md"""
    histogram_find(h, x, i) -> Cint

C signature:
`int gsl_histogram_find (const gsl_histogram * h, const double x, size_t * i)`

GSL documentation:

### `int gsl_histogram_find (const gsl_histogram * h, double x, size_t * i)`

> This function finds and sets the index `i` to the bin number which
> covers the coordinate `x` in the histogram `h`. The bin is located
> using a binary search. The search includes an optimization for
> histograms with uniform range, and will return the correct bin
> immediately in this case. If `x` is found in the range of the
> histogram then the function sets the index `i` and returns
> `GSL_SUCCESS`. If `x` lies outside the valid range of the histogram
> then the function returns `GSL_EDOM` and the error handler is invoked.

"""
function histogram_find(h, x, i)
    ccall((:gsl_histogram_find, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Ref{Csize_t}), h, x, i)
end

@doc md"""
    histogram_get(h, i) -> Cdouble

C signature:
`double gsl_histogram_get (const gsl_histogram * h, size_t i)`

GSL documentation:

### `double gsl_histogram_get (const gsl_histogram * h, size_t i)`

> This function returns the contents of the `i`-th bin of the histogram
> `h`. If `i` lies outside the valid range of indices for the histogram
> then the error handler is called with an error code of `GSL_EDOM` and
> the function returns 0.

"""
function histogram_get(h, i)
    ccall((:gsl_histogram_get, libgsl), Cdouble, (Ref{gsl_histogram}, Csize_t), h, i)
end

@doc md"""
    histogram_get_range(h, i, lower, upper) -> Cint

C signature:
`int gsl_histogram_get_range (const gsl_histogram * h, size_t i, double * lower, double * upper)`

GSL documentation:

### `int gsl_histogram_get_range (const gsl_histogram * h, size_t i, double * lower, double * upper)`

> This function finds the upper and lower range limits of the `i`-th bin
> of the histogram `h`. If the index `i` is valid then the corresponding
> range limits are stored in `lower` and `upper`. The lower limit is
> inclusive (i.e. events with this coordinate are included in the bin)
> and the upper limit is exclusive (i.e. events with the coordinate of
> the upper limit are excluded and fall in the neighboring higher bin,
> if it exists). The function returns 0 to indicate success. If `i` lies
> outside the valid range of indices for the histogram then the error
> handler is called and the function returns an error code of
> `GSL_EDOM`.

"""
function histogram_get_range(h, i, lower, upper)
    ccall((:gsl_histogram_get_range, libgsl), Cint, (Ref{gsl_histogram}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, i, lower, upper)
end

@doc md"""
    histogram_max(h) -> Cdouble

C signature:
`double gsl_histogram_max (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_max (const gsl_histogram * h)`

> double gsl\_histogram\_min (const gsl\_histogram \* h) size\_t
> gsl\_histogram\_bins (const gsl\_histogram \* h)

> These functions return the maximum upper and minimum lower range
> limits and the number of bins of the histogram `h`. They provide a way
> of determining these values without accessing the `gsl_histogram`
> struct directly.

"""
function histogram_max(h)
    ccall((:gsl_histogram_max, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_min(h) -> Cdouble

C signature:
`double gsl_histogram_min (const gsl_histogram * h)`
"""
function histogram_min(h)
    ccall((:gsl_histogram_min, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_bins(h) -> Csize_t

C signature:
`size_t gsl_histogram_bins (const gsl_histogram * h)`
"""
function histogram_bins(h)
    ccall((:gsl_histogram_bins, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_reset(h) -> Cvoid

C signature:
`void gsl_histogram_reset (gsl_histogram * h)`

GSL documentation:

### `void gsl_histogram_reset (gsl_histogram * h)`

> This function resets all the bins in the histogram `h` to zero.

"""
function histogram_reset(h)
    ccall((:gsl_histogram_reset, libgsl), Cvoid, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_calloc_range(n, range) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc_range(size_t n, double * range)`
"""
function histogram_calloc_range(n, range)
    ccall((:gsl_histogram_calloc_range, libgsl), Ptr{gsl_histogram}, (Csize_t, Ref{Cdouble}), n, range)
end

@doc md"""
    histogram_set_ranges(h, range, size) -> Cint

C signature:
`int gsl_histogram_set_ranges (gsl_histogram * h, const double range[], size_t size)`

GSL documentation:

### `int gsl_histogram_set_ranges (gsl_histogram * h, const double range[], size_t size)`

> This function sets the ranges of the existing histogram `h` using the
> array `range` of size `size`. The values of the histogram bins are
> reset to zero. The `range` array should contain the desired bin
> limits. The ranges can be arbitrary, subject to the restriction that
> they are monotonically increasing.
>
> The following example shows how to create a histogram with logarithmic
> bins with ranges \[1,10), \[10,100) and \[100,1000):
>
>     gsl_histogram * h = gsl_histogram_alloc (3);
>
>     /* bin[0] covers the range 1 <= x < 10 */
>     /* bin[1] covers the range 10 <= x < 100 */
>     /* bin[2] covers the range 100 <= x < 1000 */
>
>     double range[4] = { 1.0, 10.0, 100.0, 1000.0 };
>
>     gsl_histogram_set_ranges (h, range, 4);
>
> Note that the size of the `range` array should be defined to be one
> element bigger than the number of bins. The additional element is
> required for the upper value of the final bin.

"""
function histogram_set_ranges(h, range, size)
    ccall((:gsl_histogram_set_ranges, libgsl), Cint, (Ref{gsl_histogram}, Ref{Cdouble}, Csize_t), h, range, size)
end

@doc md"""
    histogram_set_ranges_uniform(h, xmin, xmax) -> Cint

C signature:
`int gsl_histogram_set_ranges_uniform (gsl_histogram * h, double xmin, double xmax)`

GSL documentation:

### `int gsl_histogram_set_ranges_uniform (gsl_histogram * h, double xmin, double xmax)`

> This function sets the ranges of the existing histogram `h` to cover
> the range `xmin` to `xmax` uniformly. The values of the histogram bins
> are reset to zero. The bin ranges are shown in the table below,
>
> not texinfo
>
> $$\begin{aligned}
> \begin{array}{ccc}
>   \hbox{bin[0]}&\hbox{corresponds to}& xmin \le  x < xmin + d \\
>   \hbox{bin[1]} &\hbox{corresponds to}& xmin + d \le  x < xmin + 2 d \\
>   \dots&\dots&\dots \\
>   \hbox{bin[n-1]} & \hbox{corresponds to}& xmin + (n-1)d \le  x < xmax
> \end{array}
> \end{aligned}$$
>
> texinfo
>
>     bin[0] corresponds to xmin <= x < xmin + d
>     bin[1] corresponds to xmin + d <= x < xmin + 2 d
>     ......
>     bin[n-1] corresponds to xmin + (n-1)d <= x < xmax
>
> where $d$ is the bin spacing, $d = (xmax-xmin)/n$.

"""
function histogram_set_ranges_uniform(h, xmin, xmax)
    ccall((:gsl_histogram_set_ranges_uniform, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Cdouble), h, xmin, xmax)
end

@doc md"""
    histogram_memcpy(dest, source) -> Cint

C signature:
`int gsl_histogram_memcpy(gsl_histogram * dest, const gsl_histogram * source)`

GSL documentation:

### `int gsl_histogram_memcpy (gsl_histogram * dest, const gsl_histogram * src)`

> This function copies the histogram `src` into the pre-existing
> histogram `dest`, making `dest` into an exact copy of `src`. The two
> histograms must be of the same size.

"""
function histogram_memcpy(dest, source)
    ccall((:gsl_histogram_memcpy, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), dest, source)
end

@doc md"""
    histogram_clone(source) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_clone(const gsl_histogram * source)`

GSL documentation:

### `gsl_histogram * gsl_histogram_clone (const gsl_histogram * src)`

> This function returns a pointer to a newly created histogram which is
> an exact copy of the histogram `src`.

"""
function histogram_clone(source)
    ccall((:gsl_histogram_clone, libgsl), Ptr{gsl_histogram}, (Ptr{gsl_histogram},), source)
end

@doc md"""
    histogram_max_val(h) -> Cdouble

C signature:
`double gsl_histogram_max_val (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_max_val (const gsl_histogram * h)`

> This function returns the maximum value contained in the histogram
> bins.

"""
function histogram_max_val(h)
    ccall((:gsl_histogram_max_val, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_max_bin(h) -> Csize_t

C signature:
`size_t gsl_histogram_max_bin (const gsl_histogram * h)`

GSL documentation:

### `size_t gsl_histogram_max_bin (const gsl_histogram * h)`

> This function returns the index of the bin containing the maximum
> value. In the case where several bins contain the same maximum value
> the smallest index is returned.

"""
function histogram_max_bin(h)
    ccall((:gsl_histogram_max_bin, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_min_val(h) -> Cdouble

C signature:
`double gsl_histogram_min_val (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_min_val (const gsl_histogram * h)`

> This function returns the minimum value contained in the histogram
> bins.

"""
function histogram_min_val(h)
    ccall((:gsl_histogram_min_val, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_min_bin(h) -> Csize_t

C signature:
`size_t gsl_histogram_min_bin (const gsl_histogram * h)`

GSL documentation:

### `size_t gsl_histogram_min_bin (const gsl_histogram * h)`

> This function returns the index of the bin containing the minimum
> value. In the case where several bins contain the same maximum value
> the smallest index is returned.

"""
function histogram_min_bin(h)
    ccall((:gsl_histogram_min_bin, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_equal_bins_p(h1, h2) -> Cint

C signature:
`int gsl_histogram_equal_bins_p(const gsl_histogram *h1, const gsl_histogram *h2)`

GSL documentation:

### `int gsl_histogram_equal_bins_p (const gsl_histogram * h1, const gsl_histogram * h2)`

> This function returns 1 if the all of the individual bin ranges of the
> two histograms are identical, and 0 otherwise.

"""
function histogram_equal_bins_p(h1, h2)
    ccall((:gsl_histogram_equal_bins_p, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

@doc md"""
    histogram_add(h1, h2) -> Cint

C signature:
`int gsl_histogram_add(gsl_histogram *h1, const gsl_histogram *h2)`

GSL documentation:

### `int gsl_histogram_add (gsl_histogram * h1, const gsl_histogram * h2)`

> This function adds the contents of the bins in histogram `h2` to the
> corresponding bins of histogram `h1`, i.e.
> $h'_1(i) = h_1(i) + h_2(i)$. The two histograms must have identical
> bin ranges.

"""
function histogram_add(h1, h2)
    ccall((:gsl_histogram_add, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

@doc md"""
    histogram_sub(h1, h2) -> Cint

C signature:
`int gsl_histogram_sub(gsl_histogram *h1, const gsl_histogram *h2)`

GSL documentation:

### `int gsl_histogram_sub (gsl_histogram * h1, const gsl_histogram * h2)`

> This function subtracts the contents of the bins in histogram `h2`
> from the corresponding bins of histogram `h1`, i.e.
> $h'_1(i) = h_1(i) - h_2(i)$. The two histograms must have identical
> bin ranges.

"""
function histogram_sub(h1, h2)
    ccall((:gsl_histogram_sub, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

@doc md"""
    histogram_mul(h1, h2) -> Cint

C signature:
`int gsl_histogram_mul(gsl_histogram *h1, const gsl_histogram *h2)`

GSL documentation:

### `int gsl_histogram_mul (gsl_histogram * h1, const gsl_histogram * h2)`

> This function multiplies the contents of the bins of histogram `h1` by
> the contents of the corresponding bins in histogram `h2`, i.e.
> $h'_1(i) = h_1(i) * h_2(i)$. The two histograms must have identical
> bin ranges.

"""
function histogram_mul(h1, h2)
    ccall((:gsl_histogram_mul, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

@doc md"""
    histogram_div(h1, h2) -> Cint

C signature:
`int gsl_histogram_div(gsl_histogram *h1, const gsl_histogram *h2)`

GSL documentation:

### `int gsl_histogram_div (gsl_histogram * h1, const gsl_histogram * h2)`

> This function divides the contents of the bins of histogram `h1` by
> the contents of the corresponding bins in histogram `h2`, i.e.
> $h'_1(i) = h_1(i) / h_2(i)$. The two histograms must have identical
> bin ranges.

"""
function histogram_div(h1, h2)
    ccall((:gsl_histogram_div, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

@doc md"""
    histogram_scale(h, scale) -> Cint

C signature:
`int gsl_histogram_scale(gsl_histogram *h, double scale)`

GSL documentation:

### `int gsl_histogram_scale (gsl_histogram * h, double scale)`

> This function multiplies the contents of the bins of histogram `h` by
> the constant `scale`, i.e.

"""
function histogram_scale(h, scale)
    ccall((:gsl_histogram_scale, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, scale)
end

@doc md"""
    histogram_shift(h, shift) -> Cint

C signature:
`int gsl_histogram_shift (gsl_histogram * h, double shift)`

GSL documentation:

### `int gsl_histogram_shift (gsl_histogram * h, double offset)`

> This function shifts the contents of the bins of histogram `h` by the
> constant `offset`, i.e.

"""
function histogram_shift(h, shift)
    ccall((:gsl_histogram_shift, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, shift)
end

@doc md"""
    histogram_sigma(h) -> Cdouble

C signature:
`double gsl_histogram_sigma (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_sigma (const gsl_histogram * h)`

> This function returns the standard deviation of the histogrammed
> variable, where the histogram is regarded as a probability
> distribution. Negative bin values are ignored for the purposes of this
> calculation. The accuracy of the result is limited by the bin width.

"""
function histogram_sigma(h)
    ccall((:gsl_histogram_sigma, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_mean(h) -> Cdouble

C signature:
`double gsl_histogram_mean (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_mean (const gsl_histogram * h)`

> This function returns the mean of the histogrammed variable, where the
> histogram is regarded as a probability distribution. Negative bin
> values are ignored for the purposes of this calculation. The accuracy
> of the result is limited by the bin width.

"""
function histogram_mean(h)
    ccall((:gsl_histogram_mean, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_sum(h) -> Cdouble

C signature:
`double gsl_histogram_sum (const gsl_histogram * h)`

GSL documentation:

### `double gsl_histogram_sum (const gsl_histogram * h)`

> This function returns the sum of all bin values. Negative bin values
> are included in the sum.

"""
function histogram_sum(h)
    ccall((:gsl_histogram_sum, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

@doc md"""
    histogram_fwrite(stream, h) -> Cint

C signature:
`int gsl_histogram_fwrite (FILE * stream, const gsl_histogram * h)`

GSL documentation:

### `int gsl_histogram_fwrite (FILE * stream, const gsl_histogram * h)`

> This function writes the ranges and bins of the histogram `h` to the
> stream `stream` in binary format. The return value is 0 for success
> and `GSL_EFAILED` if there was a problem writing to the file. Since
> the data is written in the native binary format it may not be portable
> between different architectures.

"""
function histogram_fwrite(stream, h)
    ccall((:gsl_histogram_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

@doc md"""
    histogram_fread(stream, h) -> Cint

C signature:
`int gsl_histogram_fread (FILE * stream, gsl_histogram * h)`

GSL documentation:

### `int gsl_histogram_fread (FILE * stream, gsl_histogram * h)`

> This function reads into the histogram `h` from the open stream
> `stream` in binary format. The histogram `h` must be preallocated with
> the correct size since the function uses the number of bins in `h` to
> determine how many bytes to read. The return value is 0 for success
> and `GSL_EFAILED` if there was a problem reading from the file. The
> data is assumed to have been written in the native binary format on
> the same architecture.

"""
function histogram_fread(stream, h)
    ccall((:gsl_histogram_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

@doc md"""
    histogram_fprintf(stream, h, range_format, bin_format) -> Cint

C signature:
`int gsl_histogram_fprintf (FILE * stream, const gsl_histogram * h, const char * range_format, const char * bin_format)`

GSL documentation:

### `int gsl_histogram_fprintf (FILE * stream, const gsl_histogram * h, const char * range_format, const char * bin_format)`

> This function writes the ranges and bins of the histogram `h`
> line-by-line to the stream `stream` using the format specifiers
> `range_format` and `bin_format`. These should be one of the `%g`, `%e`
> or `%f` formats for floating point numbers. The function returns 0 for
> success and `GSL_EFAILED` if there was a problem writing to the file.
> The histogram output is formatted in three columns, and the columns
> are separated by spaces, like this:
>
>     range[0] range[1] bin[0]
>     range[1] range[2] bin[1]
>     range[2] range[3] bin[2]
>     ....
>     range[n-1] range[n] bin[n-1]
>
> The values of the ranges are formatted using `range_format` and the
> value of the bins are formatted using `bin_format`. Each line contains
> the lower and upper limit of the range of the bins and the value of
> the bin itself. Since the upper limit of one bin is the lower limit of
> the next there is duplication of these values between lines but this
> allows the histogram to be manipulated with line-oriented tools.

"""
function histogram_fprintf(stream, h, range_format, bin_format)
    ccall((:gsl_histogram_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}, Ref{Cchar}, Ref{Cchar}), stream, h, range_format, bin_format)
end

@doc md"""
    histogram_fscanf(stream, h) -> Cint

C signature:
`int gsl_histogram_fscanf (FILE * stream, gsl_histogram * h)`

GSL documentation:

### `int gsl_histogram_fscanf (FILE * stream, gsl_histogram * h)`

> This function reads formatted data from the stream `stream` into the
> histogram `h`. The data is assumed to be in the three-column format
> used by `gsl_histogram_fprintf`. The histogram `h` must be
> preallocated with the correct length since the function uses the size
> of `h` to determine how many numbers to read. The function returns 0
> for success and `GSL_EFAILED` if there was a problem reading from the
> file.

"""
function histogram_fscanf(stream, h)
    ccall((:gsl_histogram_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

@doc md"""
    histogram_pdf_alloc(n) -> Ptr{gsl_histogram_pdf}

C signature:
`gsl_histogram_pdf * gsl_histogram_pdf_alloc (const size_t n)`

GSL documentation:

### `gsl_histogram_pdf * gsl_histogram_pdf_alloc (size_t n)`

> This function allocates memory for a probability distribution with `n`
> bins and returns a pointer to a newly initialized `gsl_histogram_pdf`
> struct. If insufficient memory is available a null pointer is returned
> and the error handler is invoked with an error code of `GSL_ENOMEM`.

"""
function histogram_pdf_alloc(n)
    ccall((:gsl_histogram_pdf_alloc, libgsl), Ptr{gsl_histogram_pdf}, (Csize_t,), n)
end

@doc md"""
    histogram_pdf_init(p, h) -> Cint

C signature:
`int gsl_histogram_pdf_init (gsl_histogram_pdf * p, const gsl_histogram * h)`

GSL documentation:

### `int gsl_histogram_pdf_init (gsl_histogram_pdf * p, const gsl_histogram * h)`

> This function initializes the probability distribution `p` with the
> contents of the histogram `h`. If any of the bins of `h` are negative
> then the error handler is invoked with an error code of `GSL_EDOM`
> because a probability distribution cannot contain negative values.

"""
function histogram_pdf_init(p, h)
    ccall((:gsl_histogram_pdf_init, libgsl), Cint, (Ref{gsl_histogram_pdf}, Ref{gsl_histogram}), p, h)
end

@doc md"""
    histogram_pdf_free(p) -> Cvoid

C signature:
`void gsl_histogram_pdf_free (gsl_histogram_pdf * p)`

GSL documentation:

### `void gsl_histogram_pdf_free (gsl_histogram_pdf * p)`

> This function frees the probability distribution function `p` and all
> of the memory associated with it.

"""
function histogram_pdf_free(p)
    ccall((:gsl_histogram_pdf_free, libgsl), Cvoid, (Ptr{gsl_histogram_pdf},), p)
end

@doc md"""
    histogram_pdf_sample(p, r) -> Cdouble

C signature:
`double gsl_histogram_pdf_sample (const gsl_histogram_pdf * p, double r)`

GSL documentation:

### `double gsl_histogram_pdf_sample (const gsl_histogram_pdf * p, double r)`

> This function uses `r`, a uniform random number between zero and one,
> to compute a single random sample from the probability distribution
> `p`. The algorithm used to compute the sample $s$ is given by the
> following formula,
>
> not texinfo
>
> $$s = \hbox{range}[i] + \delta * (\hbox{range}[i+1] - \hbox{range}[i])$$
>
> texinfo
>
>     s = range[i] + delta * (range[i+1] - range[i])
>
> where $i$ is the index which satisfies $sum[i] \le  r < sum[i+1]$ and
> $delta$ is $(r - sum[i])/(sum[i+1] - sum[i])$.

"""
function histogram_pdf_sample(p, r)
    ccall((:gsl_histogram_pdf_sample, libgsl), Cdouble, (Ref{gsl_histogram_pdf}, Cdouble), p, r)
end

