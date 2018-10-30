#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_histogram.h ##########################################################


"""
    gsl_histogram_alloc(n) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_alloc (size_t n)`
"""
function gsl_histogram_alloc(n)
    ccall((:gsl_histogram_alloc, libgsl), Ptr{gsl_histogram}, (Csize_t,), n)
end

"""
    gsl_histogram_calloc(n) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc (size_t n)`
"""
function gsl_histogram_calloc(n)
    ccall((:gsl_histogram_calloc, libgsl), Ptr{gsl_histogram}, (Csize_t,), n)
end

"""
    gsl_histogram_calloc_uniform(n, xmin, xmax) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc_uniform (const size_t n, const double xmin, const double xmax)`
"""
function gsl_histogram_calloc_uniform(n, xmin, xmax)
    ccall((:gsl_histogram_calloc_uniform, libgsl), Ptr{gsl_histogram}, (Csize_t, Cdouble, Cdouble), n, xmin, xmax)
end

"""
    gsl_histogram_free(h) -> Cvoid

C signature:
`void gsl_histogram_free (gsl_histogram * h)`
"""
function gsl_histogram_free(h)
    ccall((:gsl_histogram_free, libgsl), Cvoid, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_increment(h, x) -> Cint

C signature:
`int gsl_histogram_increment (gsl_histogram * h, double x)`
"""
function gsl_histogram_increment(h, x)
    ccall((:gsl_histogram_increment, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, x)
end

"""
    gsl_histogram_accumulate(h, x, weight) -> Cint

C signature:
`int gsl_histogram_accumulate (gsl_histogram * h, double x, double weight)`
"""
function gsl_histogram_accumulate(h, x, weight)
    ccall((:gsl_histogram_accumulate, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Cdouble), h, x, weight)
end

"""
    gsl_histogram_find(h, x, i) -> Cint

C signature:
`int gsl_histogram_find (const gsl_histogram * h, const double x, size_t * i)`
"""
function gsl_histogram_find(h, x, i)
    ccall((:gsl_histogram_find, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Ref{Csize_t}), h, x, i)
end

"""
    gsl_histogram_get(h, i) -> Cdouble

C signature:
`double gsl_histogram_get (const gsl_histogram * h, size_t i)`
"""
function gsl_histogram_get(h, i)
    ccall((:gsl_histogram_get, libgsl), Cdouble, (Ref{gsl_histogram}, Csize_t), h, i)
end

"""
    gsl_histogram_get_range(h, i, lower, upper) -> Cint

C signature:
`int gsl_histogram_get_range (const gsl_histogram * h, size_t i, double * lower, double * upper)`
"""
function gsl_histogram_get_range(h, i, lower, upper)
    ccall((:gsl_histogram_get_range, libgsl), Cint, (Ref{gsl_histogram}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, i, lower, upper)
end

"""
    gsl_histogram_max(h) -> Cdouble

C signature:
`double gsl_histogram_max (const gsl_histogram * h)`
"""
function gsl_histogram_max(h)
    ccall((:gsl_histogram_max, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_min(h) -> Cdouble

C signature:
`double gsl_histogram_min (const gsl_histogram * h)`
"""
function gsl_histogram_min(h)
    ccall((:gsl_histogram_min, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_bins(h) -> Csize_t

C signature:
`size_t gsl_histogram_bins (const gsl_histogram * h)`
"""
function gsl_histogram_bins(h)
    ccall((:gsl_histogram_bins, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_reset(h) -> Cvoid

C signature:
`void gsl_histogram_reset (gsl_histogram * h)`
"""
function gsl_histogram_reset(h)
    ccall((:gsl_histogram_reset, libgsl), Cvoid, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_calloc_range(n, range) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_calloc_range(size_t n, double * range)`
"""
function gsl_histogram_calloc_range(n, range)
    ccall((:gsl_histogram_calloc_range, libgsl), Ptr{gsl_histogram}, (Csize_t, Ref{Cdouble}), n, range)
end

"""
    gsl_histogram_set_ranges(h, range, size) -> Cint

C signature:
`int gsl_histogram_set_ranges (gsl_histogram * h, const double range[], size_t size)`
"""
function gsl_histogram_set_ranges(h, range, size)
    ccall((:gsl_histogram_set_ranges, libgsl), Cint, (Ref{gsl_histogram}, Ref{Cdouble}, Csize_t), h, range, size)
end

"""
    gsl_histogram_set_ranges_uniform(h, xmin, xmax) -> Cint

C signature:
`int gsl_histogram_set_ranges_uniform (gsl_histogram * h, double xmin, double xmax)`
"""
function gsl_histogram_set_ranges_uniform(h, xmin, xmax)
    ccall((:gsl_histogram_set_ranges_uniform, libgsl), Cint, (Ref{gsl_histogram}, Cdouble, Cdouble), h, xmin, xmax)
end

"""
    gsl_histogram_memcpy(dest, source) -> Cint

C signature:
`int gsl_histogram_memcpy(gsl_histogram * dest, const gsl_histogram * source)`
"""
function gsl_histogram_memcpy(dest, source)
    ccall((:gsl_histogram_memcpy, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), dest, source)
end

"""
    gsl_histogram_clone(source) -> Ptr{gsl_histogram}

C signature:
`gsl_histogram * gsl_histogram_clone(const gsl_histogram * source)`
"""
function gsl_histogram_clone(source)
    ccall((:gsl_histogram_clone, libgsl), Ptr{gsl_histogram}, (Ptr{gsl_histogram},), source)
end

"""
    gsl_histogram_max_val(h) -> Cdouble

C signature:
`double gsl_histogram_max_val (const gsl_histogram * h)`
"""
function gsl_histogram_max_val(h)
    ccall((:gsl_histogram_max_val, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_max_bin(h) -> Csize_t

C signature:
`size_t gsl_histogram_max_bin (const gsl_histogram * h)`
"""
function gsl_histogram_max_bin(h)
    ccall((:gsl_histogram_max_bin, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_min_val(h) -> Cdouble

C signature:
`double gsl_histogram_min_val (const gsl_histogram * h)`
"""
function gsl_histogram_min_val(h)
    ccall((:gsl_histogram_min_val, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_min_bin(h) -> Csize_t

C signature:
`size_t gsl_histogram_min_bin (const gsl_histogram * h)`
"""
function gsl_histogram_min_bin(h)
    ccall((:gsl_histogram_min_bin, libgsl), Csize_t, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_equal_bins_p(h1, h2) -> Cint

C signature:
`int gsl_histogram_equal_bins_p(const gsl_histogram *h1, const gsl_histogram *h2)`
"""
function gsl_histogram_equal_bins_p(h1, h2)
    ccall((:gsl_histogram_equal_bins_p, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

"""
    gsl_histogram_add(h1, h2) -> Cint

C signature:
`int gsl_histogram_add(gsl_histogram *h1, const gsl_histogram *h2)`
"""
function gsl_histogram_add(h1, h2)
    ccall((:gsl_histogram_add, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

"""
    gsl_histogram_sub(h1, h2) -> Cint

C signature:
`int gsl_histogram_sub(gsl_histogram *h1, const gsl_histogram *h2)`
"""
function gsl_histogram_sub(h1, h2)
    ccall((:gsl_histogram_sub, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

"""
    gsl_histogram_mul(h1, h2) -> Cint

C signature:
`int gsl_histogram_mul(gsl_histogram *h1, const gsl_histogram *h2)`
"""
function gsl_histogram_mul(h1, h2)
    ccall((:gsl_histogram_mul, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

"""
    gsl_histogram_div(h1, h2) -> Cint

C signature:
`int gsl_histogram_div(gsl_histogram *h1, const gsl_histogram *h2)`
"""
function gsl_histogram_div(h1, h2)
    ccall((:gsl_histogram_div, libgsl), Cint, (Ref{gsl_histogram}, Ref{gsl_histogram}), h1, h2)
end

"""
    gsl_histogram_scale(h, scale) -> Cint

C signature:
`int gsl_histogram_scale(gsl_histogram *h, double scale)`
"""
function gsl_histogram_scale(h, scale)
    ccall((:gsl_histogram_scale, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, scale)
end

"""
    gsl_histogram_shift(h, shift) -> Cint

C signature:
`int gsl_histogram_shift (gsl_histogram * h, double shift)`
"""
function gsl_histogram_shift(h, shift)
    ccall((:gsl_histogram_shift, libgsl), Cint, (Ref{gsl_histogram}, Cdouble), h, shift)
end

"""
    gsl_histogram_sigma(h) -> Cdouble

C signature:
`double gsl_histogram_sigma (const gsl_histogram * h)`
"""
function gsl_histogram_sigma(h)
    ccall((:gsl_histogram_sigma, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_mean(h) -> Cdouble

C signature:
`double gsl_histogram_mean (const gsl_histogram * h)`
"""
function gsl_histogram_mean(h)
    ccall((:gsl_histogram_mean, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_sum(h) -> Cdouble

C signature:
`double gsl_histogram_sum (const gsl_histogram * h)`
"""
function gsl_histogram_sum(h)
    ccall((:gsl_histogram_sum, libgsl), Cdouble, (Ptr{gsl_histogram},), h)
end

"""
    gsl_histogram_fwrite(stream, h) -> Cint

C signature:
`int gsl_histogram_fwrite (FILE * stream, const gsl_histogram * h)`
"""
function gsl_histogram_fwrite(stream, h)
    ccall((:gsl_histogram_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

"""
    gsl_histogram_fread(stream, h) -> Cint

C signature:
`int gsl_histogram_fread (FILE * stream, gsl_histogram * h)`
"""
function gsl_histogram_fread(stream, h)
    ccall((:gsl_histogram_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

"""
    gsl_histogram_fprintf(stream, h, range_format, bin_format) -> Cint

C signature:
`int gsl_histogram_fprintf (FILE * stream, const gsl_histogram * h, const char * range_format, const char * bin_format)`
"""
function gsl_histogram_fprintf(stream, h, range_format, bin_format)
    ccall((:gsl_histogram_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}, Ref{Cchar}, Ref{Cchar}), stream, h, range_format, bin_format)
end

"""
    gsl_histogram_fscanf(stream, h) -> Cint

C signature:
`int gsl_histogram_fscanf (FILE * stream, gsl_histogram * h)`
"""
function gsl_histogram_fscanf(stream, h)
    ccall((:gsl_histogram_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram}), stream, h)
end

"""
    gsl_histogram_pdf_alloc(n) -> Ptr{gsl_histogram_pdf}

C signature:
`gsl_histogram_pdf * gsl_histogram_pdf_alloc (const size_t n)`
"""
function gsl_histogram_pdf_alloc(n)
    ccall((:gsl_histogram_pdf_alloc, libgsl), Ptr{gsl_histogram_pdf}, (Csize_t,), n)
end

"""
    gsl_histogram_pdf_init(p, h) -> Cint

C signature:
`int gsl_histogram_pdf_init (gsl_histogram_pdf * p, const gsl_histogram * h)`
"""
function gsl_histogram_pdf_init(p, h)
    ccall((:gsl_histogram_pdf_init, libgsl), Cint, (Ref{gsl_histogram_pdf}, Ref{gsl_histogram}), p, h)
end

"""
    gsl_histogram_pdf_free(p) -> Cvoid

C signature:
`void gsl_histogram_pdf_free (gsl_histogram_pdf * p)`
"""
function gsl_histogram_pdf_free(p)
    ccall((:gsl_histogram_pdf_free, libgsl), Cvoid, (Ptr{gsl_histogram_pdf},), p)
end

"""
    gsl_histogram_pdf_sample(p, r) -> Cdouble

C signature:
`double gsl_histogram_pdf_sample (const gsl_histogram_pdf * p, double r)`
"""
function gsl_histogram_pdf_sample(p, r)
    ccall((:gsl_histogram_pdf_sample, libgsl), Cdouble, (Ref{gsl_histogram_pdf}, Cdouble), p, r)
end

