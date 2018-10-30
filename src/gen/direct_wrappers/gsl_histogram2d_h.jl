#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_histogram2d.h ########################################################


"""
    gsl_histogram2d_alloc(nx, ny) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_alloc (const size_t nx, const size_t ny)`
"""
function gsl_histogram2d_alloc(nx, ny)
    ccall((:gsl_histogram2d_alloc, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t), nx, ny)
end

"""
    gsl_histogram2d_calloc(nx, ny) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc (const size_t nx, const size_t ny)`
"""
function gsl_histogram2d_calloc(nx, ny)
    ccall((:gsl_histogram2d_calloc, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t), nx, ny)
end

"""
    gsl_histogram2d_calloc_uniform(nx, ny, xmin, xmax, ymin, ymax) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc_uniform (const size_t nx, const size_t ny, const double xmin, const double xmax, const double ymin, const double ymax)`
"""
function gsl_histogram2d_calloc_uniform(nx, ny, xmin, xmax, ymin, ymax)
    ccall((:gsl_histogram2d_calloc_uniform, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t, Cdouble, Cdouble, Cdouble, Cdouble), nx, ny, xmin, xmax, ymin, ymax)
end

"""
    gsl_histogram2d_free(h) -> Cvoid

C signature:
`void gsl_histogram2d_free (gsl_histogram2d * h)`
"""
function gsl_histogram2d_free(h)
    ccall((:gsl_histogram2d_free, libgsl), Cvoid, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_increment(h, x, y) -> Cint

C signature:
`int gsl_histogram2d_increment (gsl_histogram2d * h, double x, double y)`
"""
function gsl_histogram2d_increment(h, x, y)
    ccall((:gsl_histogram2d_increment, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble), h, x, y)
end

"""
    gsl_histogram2d_accumulate(h, x, y, weight) -> Cint

C signature:
`int gsl_histogram2d_accumulate (gsl_histogram2d * h, double x, double y, double weight)`
"""
function gsl_histogram2d_accumulate(h, x, y, weight)
    ccall((:gsl_histogram2d_accumulate, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Cdouble), h, x, y, weight)
end

"""
    gsl_histogram2d_find(h, x, y, i, j) -> Cint

C signature:
`int gsl_histogram2d_find (const gsl_histogram2d * h, const double x, const double y, size_t * i, size_t * j)`
"""
function gsl_histogram2d_find(h, x, y, i, j)
    ccall((:gsl_histogram2d_find, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Ref{Csize_t}, Ref{Csize_t}), h, x, y, i, j)
end

"""
    gsl_histogram2d_get(h, i, j) -> Cdouble

C signature:
`double gsl_histogram2d_get (const gsl_histogram2d * h, const size_t i, const size_t j)`
"""
function gsl_histogram2d_get(h, i, j)
    ccall((:gsl_histogram2d_get, libgsl), Cdouble, (Ref{gsl_histogram2d}, Csize_t, Csize_t), h, i, j)
end

"""
    gsl_histogram2d_get_xrange(h, i, xlower, xupper) -> Cint

C signature:
`int gsl_histogram2d_get_xrange (const gsl_histogram2d * h, const size_t i, double * xlower, double * xupper)`
"""
function gsl_histogram2d_get_xrange(h, i, xlower, xupper)
    ccall((:gsl_histogram2d_get_xrange, libgsl), Cint, (Ref{gsl_histogram2d}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, i, xlower, xupper)
end

"""
    gsl_histogram2d_get_yrange(h, j, ylower, yupper) -> Cint

C signature:
`int gsl_histogram2d_get_yrange (const gsl_histogram2d * h, const size_t j, double * ylower, double * yupper)`
"""
function gsl_histogram2d_get_yrange(h, j, ylower, yupper)
    ccall((:gsl_histogram2d_get_yrange, libgsl), Cint, (Ref{gsl_histogram2d}, Csize_t, Ref{Cdouble}, Ref{Cdouble}), h, j, ylower, yupper)
end

"""
    gsl_histogram2d_xmax(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmax (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_xmax(h)
    ccall((:gsl_histogram2d_xmax, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_xmin(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmin (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_xmin(h)
    ccall((:gsl_histogram2d_xmin, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_nx(h) -> Csize_t

C signature:
`size_t gsl_histogram2d_nx (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_nx(h)
    ccall((:gsl_histogram2d_nx, libgsl), Csize_t, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_ymax(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymax (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_ymax(h)
    ccall((:gsl_histogram2d_ymax, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_ymin(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymin (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_ymin(h)
    ccall((:gsl_histogram2d_ymin, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_ny(h) -> Csize_t

C signature:
`size_t gsl_histogram2d_ny (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_ny(h)
    ccall((:gsl_histogram2d_ny, libgsl), Csize_t, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_reset(h) -> Cvoid

C signature:
`void gsl_histogram2d_reset (gsl_histogram2d * h)`
"""
function gsl_histogram2d_reset(h)
    ccall((:gsl_histogram2d_reset, libgsl), Cvoid, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_calloc_range(nx, ny, xrange, yrange) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_calloc_range(size_t nx, size_t ny, double *xrange, double *yrange)`
"""
function gsl_histogram2d_calloc_range(nx, ny, xrange, yrange)
    ccall((:gsl_histogram2d_calloc_range, libgsl), Ptr{gsl_histogram2d}, (Csize_t, Csize_t, Ref{Cdouble}, Ref{Cdouble}), nx, ny, xrange, yrange)
end

"""
    gsl_histogram2d_set_ranges_uniform(h, xmin, xmax, ymin, ymax) -> Cint

C signature:
`int gsl_histogram2d_set_ranges_uniform (gsl_histogram2d * h, double xmin, double xmax, double ymin, double ymax)`
"""
function gsl_histogram2d_set_ranges_uniform(h, xmin, xmax, ymin, ymax)
    ccall((:gsl_histogram2d_set_ranges_uniform, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble, Cdouble, Cdouble, Cdouble), h, xmin, xmax, ymin, ymax)
end

"""
    gsl_histogram2d_set_ranges(h, xrange, xsize, yrange, ysize) -> Cint

C signature:
`int gsl_histogram2d_set_ranges (gsl_histogram2d * h, const double xrange[], size_t xsize, const double yrange[], size_t ysize)`
"""
function gsl_histogram2d_set_ranges(h, xrange, xsize, yrange, ysize)
    ccall((:gsl_histogram2d_set_ranges, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{Cdouble}, Csize_t, Ref{Cdouble}, Csize_t), h, xrange, xsize, yrange, ysize)
end

"""
    gsl_histogram2d_memcpy(dest, source) -> Cint

C signature:
`int gsl_histogram2d_memcpy(gsl_histogram2d *dest, const gsl_histogram2d *source)`
"""
function gsl_histogram2d_memcpy(dest, source)
    ccall((:gsl_histogram2d_memcpy, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), dest, source)
end

"""
    gsl_histogram2d_clone(source) -> Ptr{gsl_histogram2d}

C signature:
`gsl_histogram2d * gsl_histogram2d_clone(const gsl_histogram2d * source)`
"""
function gsl_histogram2d_clone(source)
    ccall((:gsl_histogram2d_clone, libgsl), Ptr{gsl_histogram2d}, (Ptr{gsl_histogram2d},), source)
end

"""
    gsl_histogram2d_max_val(h) -> Cdouble

C signature:
`double gsl_histogram2d_max_val(const gsl_histogram2d *h)`
"""
function gsl_histogram2d_max_val(h)
    ccall((:gsl_histogram2d_max_val, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_max_bin(h, i, j) -> Cvoid

C signature:
`void gsl_histogram2d_max_bin (const gsl_histogram2d *h, size_t *i, size_t *j)`
"""
function gsl_histogram2d_max_bin(h, i, j)
    ccall((:gsl_histogram2d_max_bin, libgsl), Cvoid, (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j)
end

"""
    gsl_histogram2d_min_val(h) -> Cdouble

C signature:
`double gsl_histogram2d_min_val(const gsl_histogram2d *h)`
"""
function gsl_histogram2d_min_val(h)
    ccall((:gsl_histogram2d_min_val, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_min_bin(h, i, j) -> Cvoid

C signature:
`void gsl_histogram2d_min_bin (const gsl_histogram2d *h, size_t *i, size_t *j)`
"""
function gsl_histogram2d_min_bin(h, i, j)
    ccall((:gsl_histogram2d_min_bin, libgsl), Cvoid, (Ref{gsl_histogram2d}, Ref{Csize_t}, Ref{Csize_t}), h, i, j)
end

"""
    gsl_histogram2d_xmean(h) -> Cdouble

C signature:
`double gsl_histogram2d_xmean (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_xmean(h)
    ccall((:gsl_histogram2d_xmean, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_ymean(h) -> Cdouble

C signature:
`double gsl_histogram2d_ymean (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_ymean(h)
    ccall((:gsl_histogram2d_ymean, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_xsigma(h) -> Cdouble

C signature:
`double gsl_histogram2d_xsigma (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_xsigma(h)
    ccall((:gsl_histogram2d_xsigma, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_ysigma(h) -> Cdouble

C signature:
`double gsl_histogram2d_ysigma (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_ysigma(h)
    ccall((:gsl_histogram2d_ysigma, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_cov(h) -> Cdouble

C signature:
`double gsl_histogram2d_cov (const gsl_histogram2d * h)`
"""
function gsl_histogram2d_cov(h)
    ccall((:gsl_histogram2d_cov, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_sum(h) -> Cdouble

C signature:
`double gsl_histogram2d_sum (const gsl_histogram2d *h)`
"""
function gsl_histogram2d_sum(h)
    ccall((:gsl_histogram2d_sum, libgsl), Cdouble, (Ptr{gsl_histogram2d},), h)
end

"""
    gsl_histogram2d_equal_bins_p(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_equal_bins_p(const gsl_histogram2d *h1, const gsl_histogram2d *h2)`
"""
function gsl_histogram2d_equal_bins_p(h1, h2)
    ccall((:gsl_histogram2d_equal_bins_p, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

"""
    gsl_histogram2d_add(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_add(gsl_histogram2d *h1, const gsl_histogram2d *h2)`
"""
function gsl_histogram2d_add(h1, h2)
    ccall((:gsl_histogram2d_add, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

"""
    gsl_histogram2d_sub(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_sub(gsl_histogram2d *h1, const gsl_histogram2d *h2)`
"""
function gsl_histogram2d_sub(h1, h2)
    ccall((:gsl_histogram2d_sub, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

"""
    gsl_histogram2d_mul(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_mul(gsl_histogram2d *h1, const gsl_histogram2d *h2)`
"""
function gsl_histogram2d_mul(h1, h2)
    ccall((:gsl_histogram2d_mul, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

"""
    gsl_histogram2d_div(h1, h2) -> Cint

C signature:
`int gsl_histogram2d_div(gsl_histogram2d *h1, const gsl_histogram2d *h2)`
"""
function gsl_histogram2d_div(h1, h2)
    ccall((:gsl_histogram2d_div, libgsl), Cint, (Ref{gsl_histogram2d}, Ref{gsl_histogram2d}), h1, h2)
end

"""
    gsl_histogram2d_scale(h, scale) -> Cint

C signature:
`int gsl_histogram2d_scale(gsl_histogram2d *h, double scale)`
"""
function gsl_histogram2d_scale(h, scale)
    ccall((:gsl_histogram2d_scale, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble), h, scale)
end

"""
    gsl_histogram2d_shift(h, shift) -> Cint

C signature:
`int gsl_histogram2d_shift(gsl_histogram2d *h, double shift)`
"""
function gsl_histogram2d_shift(h, shift)
    ccall((:gsl_histogram2d_shift, libgsl), Cint, (Ref{gsl_histogram2d}, Cdouble), h, shift)
end

"""
    gsl_histogram2d_fwrite(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fwrite (FILE * stream, const gsl_histogram2d * h)`
"""
function gsl_histogram2d_fwrite(stream, h)
    ccall((:gsl_histogram2d_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

"""
    gsl_histogram2d_fread(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fread (FILE * stream, gsl_histogram2d * h)`
"""
function gsl_histogram2d_fread(stream, h)
    ccall((:gsl_histogram2d_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

"""
    gsl_histogram2d_fprintf(stream, h, range_format, bin_format) -> Cint

C signature:
`int gsl_histogram2d_fprintf (FILE * stream, const gsl_histogram2d * h, const char * range_format, const char * bin_format)`
"""
function gsl_histogram2d_fprintf(stream, h, range_format, bin_format)
    ccall((:gsl_histogram2d_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}, Ref{Cchar}, Ref{Cchar}), stream, h, range_format, bin_format)
end

"""
    gsl_histogram2d_fscanf(stream, h) -> Cint

C signature:
`int gsl_histogram2d_fscanf (FILE * stream, gsl_histogram2d * h)`
"""
function gsl_histogram2d_fscanf(stream, h)
    ccall((:gsl_histogram2d_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_histogram2d}), stream, h)
end

"""
    gsl_histogram2d_pdf_alloc(nx, ny) -> Ptr{gsl_histogram2d_pdf}

C signature:
`gsl_histogram2d_pdf * gsl_histogram2d_pdf_alloc (const size_t nx, const size_t ny)`
"""
function gsl_histogram2d_pdf_alloc(nx, ny)
    ccall((:gsl_histogram2d_pdf_alloc, libgsl), Ptr{gsl_histogram2d_pdf}, (Csize_t, Csize_t), nx, ny)
end

"""
    gsl_histogram2d_pdf_init(p, h) -> Cint

C signature:
`int gsl_histogram2d_pdf_init (gsl_histogram2d_pdf * p, const gsl_histogram2d * h)`
"""
function gsl_histogram2d_pdf_init(p, h)
    ccall((:gsl_histogram2d_pdf_init, libgsl), Cint, (Ref{gsl_histogram2d_pdf}, Ref{gsl_histogram2d}), p, h)
end

"""
    gsl_histogram2d_pdf_free(p) -> Cvoid

C signature:
`void gsl_histogram2d_pdf_free (gsl_histogram2d_pdf * p)`
"""
function gsl_histogram2d_pdf_free(p)
    ccall((:gsl_histogram2d_pdf_free, libgsl), Cvoid, (Ptr{gsl_histogram2d_pdf},), p)
end

"""
    gsl_histogram2d_pdf_sample(p, r1, r2, x, y) -> Cint

C signature:
`int gsl_histogram2d_pdf_sample (const gsl_histogram2d_pdf * p, double r1, double r2, double * x, double * y)`
"""
function gsl_histogram2d_pdf_sample(p, r1, r2, x, y)
    ccall((:gsl_histogram2d_pdf_sample, libgsl), Cint, (Ref{gsl_histogram2d_pdf}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), p, r1, r2, x, y)
end

