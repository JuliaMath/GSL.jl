#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_rstat.h ##############################################################


"""
    gsl_rstat_quantile_alloc(p) -> Ptr{gsl_rstat_quantile_workspace}

C signature:
`gsl_rstat_quantile_workspace *gsl_rstat_quantile_alloc(const double p)`
"""
function gsl_rstat_quantile_alloc(p)
    ccall((:gsl_rstat_quantile_alloc, libgsl), Ptr{gsl_rstat_quantile_workspace}, (Cdouble,), p)
end

"""
    gsl_rstat_quantile_free(w) -> Cvoid

C signature:
`void gsl_rstat_quantile_free(gsl_rstat_quantile_workspace *w)`
"""
function gsl_rstat_quantile_free(w)
    ccall((:gsl_rstat_quantile_free, libgsl), Cvoid, (Ptr{gsl_rstat_quantile_workspace},), w)
end

"""
    gsl_rstat_quantile_reset(w) -> Cint

C signature:
`int gsl_rstat_quantile_reset(gsl_rstat_quantile_workspace *w)`
"""
function gsl_rstat_quantile_reset(w)
    ccall((:gsl_rstat_quantile_reset, libgsl), Cint, (Ptr{gsl_rstat_quantile_workspace},), w)
end

"""
    gsl_rstat_quantile_add(x, w) -> Cint

C signature:
`int gsl_rstat_quantile_add(const double x, gsl_rstat_quantile_workspace *w)`
"""
function gsl_rstat_quantile_add(x, w)
    ccall((:gsl_rstat_quantile_add, libgsl), Cint, (Cdouble, Ref{gsl_rstat_quantile_workspace}), x, w)
end

"""
    gsl_rstat_quantile_get(w) -> Cdouble

C signature:
`double gsl_rstat_quantile_get(gsl_rstat_quantile_workspace *w)`
"""
function gsl_rstat_quantile_get(w)
    ccall((:gsl_rstat_quantile_get, libgsl), Cdouble, (Ptr{gsl_rstat_quantile_workspace},), w)
end

"""
    gsl_rstat_alloc() -> Ptr{gsl_rstat_workspace}

C signature:
`gsl_rstat_workspace *gsl_rstat_alloc(void)`
"""
function gsl_rstat_alloc()
    ccall((:gsl_rstat_alloc, libgsl), Ptr{gsl_rstat_workspace}, (), )
end

"""
    gsl_rstat_free(w) -> Cvoid

C signature:
`void gsl_rstat_free(gsl_rstat_workspace *w)`
"""
function gsl_rstat_free(w)
    ccall((:gsl_rstat_free, libgsl), Cvoid, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_n(w) -> Csize_t

C signature:
`size_t gsl_rstat_n(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_n(w)
    ccall((:gsl_rstat_n, libgsl), Csize_t, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_add(x, w) -> Cint

C signature:
`int gsl_rstat_add(const double x, gsl_rstat_workspace *w)`
"""
function gsl_rstat_add(x, w)
    ccall((:gsl_rstat_add, libgsl), Cint, (Cdouble, Ref{gsl_rstat_workspace}), x, w)
end

"""
    gsl_rstat_min(w) -> Cdouble

C signature:
`double gsl_rstat_min(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_min(w)
    ccall((:gsl_rstat_min, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_max(w) -> Cdouble

C signature:
`double gsl_rstat_max(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_max(w)
    ccall((:gsl_rstat_max, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_mean(w) -> Cdouble

C signature:
`double gsl_rstat_mean(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_mean(w)
    ccall((:gsl_rstat_mean, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_variance(w) -> Cdouble

C signature:
`double gsl_rstat_variance(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_variance(w)
    ccall((:gsl_rstat_variance, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_sd(w) -> Cdouble

C signature:
`double gsl_rstat_sd(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_sd(w)
    ccall((:gsl_rstat_sd, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_rms(w) -> Cdouble

C signature:
`double gsl_rstat_rms(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_rms(w)
    ccall((:gsl_rstat_rms, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_sd_mean(w) -> Cdouble

C signature:
`double gsl_rstat_sd_mean(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_sd_mean(w)
    ccall((:gsl_rstat_sd_mean, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_median(w) -> Cdouble

C signature:
`double gsl_rstat_median(gsl_rstat_workspace *w)`
"""
function gsl_rstat_median(w)
    ccall((:gsl_rstat_median, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_skew(w) -> Cdouble

C signature:
`double gsl_rstat_skew(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_skew(w)
    ccall((:gsl_rstat_skew, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_kurtosis(w) -> Cdouble

C signature:
`double gsl_rstat_kurtosis(const gsl_rstat_workspace *w)`
"""
function gsl_rstat_kurtosis(w)
    ccall((:gsl_rstat_kurtosis, libgsl), Cdouble, (Ptr{gsl_rstat_workspace},), w)
end

"""
    gsl_rstat_reset(w) -> Cint

C signature:
`int gsl_rstat_reset(gsl_rstat_workspace *w)`
"""
function gsl_rstat_reset(w)
    ccall((:gsl_rstat_reset, libgsl), Cint, (Ptr{gsl_rstat_workspace},), w)
end

