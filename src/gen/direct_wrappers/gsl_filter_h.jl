#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_filter.h #############################################################


"""
    gsl_filter_gaussian_alloc(K) -> Ptr{gsl_filter_gaussian_workspace}

C signature:
`gsl_filter_gaussian_workspace *gsl_filter_gaussian_alloc(const size_t K)`
"""
function gsl_filter_gaussian_alloc(K)
    ccall((:gsl_filter_gaussian_alloc, libgsl), Ptr{gsl_filter_gaussian_workspace}, (Csize_t,), K)
end

"""
    gsl_filter_gaussian_free(w) -> Cvoid

C signature:
`void gsl_filter_gaussian_free(gsl_filter_gaussian_workspace * w)`
"""
function gsl_filter_gaussian_free(w)
    ccall((:gsl_filter_gaussian_free, libgsl), Cvoid, (Ptr{gsl_filter_gaussian_workspace},), w)
end

"""
    gsl_filter_gaussian(endtype, alpha, order, x, y, w) -> Cint

C signature:
`int gsl_filter_gaussian(const gsl_filter_end_t endtype, const double alpha, const size_t order, const gsl_vector * x, gsl_vector * y, gsl_filter_gaussian_workspace * w)`
"""
function gsl_filter_gaussian(endtype, alpha, order, x, y, w)
    ccall((:gsl_filter_gaussian, libgsl), Cint, (gsl_filter_end_t, Cdouble, Csize_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_gaussian_workspace}), endtype, alpha, order, x, y, w)
end

"""
    gsl_filter_gaussian_kernel(alpha, order, normalize, kernel) -> Cint

C signature:
`int gsl_filter_gaussian_kernel(const double alpha, const size_t order, const int normalize, gsl_vector * kernel)`
"""
function gsl_filter_gaussian_kernel(alpha, order, normalize, kernel)
    ccall((:gsl_filter_gaussian_kernel, libgsl), Cint, (Cdouble, Csize_t, Cint, Ref{gsl_vector}), alpha, order, normalize, kernel)
end

"""
    gsl_filter_median_alloc(K) -> Ptr{gsl_filter_median_workspace}

C signature:
`gsl_filter_median_workspace *gsl_filter_median_alloc(const size_t K)`
"""
function gsl_filter_median_alloc(K)
    ccall((:gsl_filter_median_alloc, libgsl), Ptr{gsl_filter_median_workspace}, (Csize_t,), K)
end

"""
    gsl_filter_median_free(w) -> Cvoid

C signature:
`void gsl_filter_median_free(gsl_filter_median_workspace * w)`
"""
function gsl_filter_median_free(w)
    ccall((:gsl_filter_median_free, libgsl), Cvoid, (Ptr{gsl_filter_median_workspace},), w)
end

"""
    gsl_filter_median(endtype, x, y, w) -> Cint

C signature:
`int gsl_filter_median(const gsl_filter_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_filter_median_workspace * w)`
"""
function gsl_filter_median(endtype, x, y, w)
    ccall((:gsl_filter_median, libgsl), Cint, (gsl_filter_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_median_workspace}), endtype, x, y, w)
end

"""
    gsl_filter_rmedian_alloc(K) -> Ptr{gsl_filter_rmedian_workspace}

C signature:
`gsl_filter_rmedian_workspace *gsl_filter_rmedian_alloc(const size_t K)`
"""
function gsl_filter_rmedian_alloc(K)
    ccall((:gsl_filter_rmedian_alloc, libgsl), Ptr{gsl_filter_rmedian_workspace}, (Csize_t,), K)
end

"""
    gsl_filter_rmedian_free(w) -> Cvoid

C signature:
`void gsl_filter_rmedian_free(gsl_filter_rmedian_workspace * w)`
"""
function gsl_filter_rmedian_free(w)
    ccall((:gsl_filter_rmedian_free, libgsl), Cvoid, (Ptr{gsl_filter_rmedian_workspace},), w)
end

"""
    gsl_filter_rmedian(arg0, x, y, w) -> Cint

C signature:
`int gsl_filter_rmedian(const gsl_filter_end_t, const gsl_vector * x, gsl_vector * y, gsl_filter_rmedian_workspace * w)`
"""
function gsl_filter_rmedian(arg0, x, y, w)
    ccall((:gsl_filter_rmedian, libgsl), Cint, (gsl_filter_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_rmedian_workspace}), arg0, x, y, w)
end

"""
    gsl_filter_rmedian2(x, y, w) -> Cint

C signature:
`int gsl_filter_rmedian2(const gsl_vector * x, gsl_vector * y, gsl_filter_rmedian_workspace * w)`
"""
function gsl_filter_rmedian2(x, y, w)
    ccall((:gsl_filter_rmedian2, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_filter_rmedian_workspace}), x, y, w)
end

"""
    gsl_filter_impulse_alloc(K) -> Ptr{gsl_filter_impulse_workspace}

C signature:
`gsl_filter_impulse_workspace *gsl_filter_impulse_alloc(const size_t K)`
"""
function gsl_filter_impulse_alloc(K)
    ccall((:gsl_filter_impulse_alloc, libgsl), Ptr{gsl_filter_impulse_workspace}, (Csize_t,), K)
end

"""
    gsl_filter_impulse_free(w) -> Cvoid

C signature:
`void gsl_filter_impulse_free(gsl_filter_impulse_workspace * w)`
"""
function gsl_filter_impulse_free(w)
    ccall((:gsl_filter_impulse_free, libgsl), Cvoid, (Ptr{gsl_filter_impulse_workspace},), w)
end

"""
    gsl_filter_impulse(endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w) -> Cint

C signature:
`int gsl_filter_impulse(const gsl_filter_end_t endtype, const gsl_filter_scale_t scale_type, const double t, const gsl_vector * x, gsl_vector * y, gsl_vector * xmedian, gsl_vector * xsigma, size_t * noutlier, gsl_vector_int * ioutlier, gsl_filter_impulse_workspace * w)`
"""
function gsl_filter_impulse(endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w)
    ccall((:gsl_filter_impulse, libgsl), Cint, (gsl_filter_end_t, gsl_filter_scale_t, Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}, Ref{gsl_vector_int}, Ref{gsl_filter_impulse_workspace}), endtype, scale_type, t, x, y, xmedian, xsigma, noutlier, ioutlier, w)
end

