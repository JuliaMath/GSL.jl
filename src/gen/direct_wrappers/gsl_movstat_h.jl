#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_movstat.h ############################################################


"""
    gsl_movstat_alloc(K) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc(const size_t K)`
"""
function gsl_movstat_alloc(K)
    ccall((:gsl_movstat_alloc, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t,), K)
end

"""
    gsl_movstat_alloc2(H, J) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc2(const size_t H, const size_t J)`
"""
function gsl_movstat_alloc2(H, J)
    ccall((:gsl_movstat_alloc2, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t, Csize_t), H, J)
end

"""
    gsl_movstat_alloc_with_size(accum_state_size, H, J) -> Ptr{gsl_movstat_workspace}

C signature:
`gsl_movstat_workspace *gsl_movstat_alloc_with_size(const size_t accum_state_size, const size_t H, const size_t J)`
"""
function gsl_movstat_alloc_with_size(accum_state_size, H, J)
    ccall((:gsl_movstat_alloc_with_size, libgsl), Ptr{gsl_movstat_workspace}, (Csize_t, Csize_t, Csize_t), accum_state_size, H, J)
end

"""
    gsl_movstat_free(w) -> Cvoid

C signature:
`void gsl_movstat_free(gsl_movstat_workspace * w)`
"""
function gsl_movstat_free(w)
    ccall((:gsl_movstat_free, libgsl), Cvoid, (Ptr{gsl_movstat_workspace},), w)
end

"""
    gsl_movstat_apply_accum(endtype, x, accum, accum_params, y, z, w) -> Cint

C signature:
`int gsl_movstat_apply_accum(const gsl_movstat_end_t endtype, const gsl_vector * x, const gsl_movstat_accum * accum, void * accum_params, gsl_vector * y, gsl_vector * z, gsl_movstat_workspace * w)`
"""
function gsl_movstat_apply_accum(endtype, x, accum, accum_params, y, z, w)
    ccall((:gsl_movstat_apply_accum, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_movstat_accum}, Ptr{Cvoid}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, accum, accum_params, y, z, w)
end

"""
    gsl_movstat_apply(endtype, F, x, y, w) -> Cint

C signature:
`int gsl_movstat_apply(const gsl_movstat_end_t endtype, const gsl_movstat_function * F, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_apply(endtype, F, x, y, w)
    ccall((:gsl_movstat_apply, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_movstat_function}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, F, x, y, w)
end

"""
    gsl_movstat_fill(endtype, x, idx, H, J, window) -> Csize_t

C signature:
`size_t gsl_movstat_fill(const gsl_movstat_end_t endtype, const gsl_vector * x, const size_t idx, const size_t H, const size_t J, double * window)`
"""
function gsl_movstat_fill(endtype, x, idx, H, J, window)
    ccall((:gsl_movstat_fill, libgsl), Csize_t, (gsl_movstat_end_t, Ref{gsl_vector}, Csize_t, Csize_t, Csize_t, Ref{Cdouble}), endtype, x, idx, H, J, window)
end

"""
    gsl_movstat_mean(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_mean(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_mean(endtype, x, y, w)
    ccall((:gsl_movstat_mean, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_variance(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_variance(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_variance(endtype, x, y, w)
    ccall((:gsl_movstat_variance, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_sd(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_sd(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_sd(endtype, x, y, w)
    ccall((:gsl_movstat_sd, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_median(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_median(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_median(endtype, x, y, w)
    ccall((:gsl_movstat_median, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_min(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_min(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_min(endtype, x, y, w)
    ccall((:gsl_movstat_min, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_max(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_max(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_max(endtype, x, y, w)
    ccall((:gsl_movstat_max, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

"""
    gsl_movstat_minmax(endtype, x, y_min, y_max, w) -> Cint

C signature:
`int gsl_movstat_minmax(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y_min, gsl_vector * y_max, gsl_movstat_workspace * w)`
"""
function gsl_movstat_minmax(endtype, x, y_min, y_max, w)
    ccall((:gsl_movstat_minmax, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y_min, y_max, w)
end

"""
    gsl_movstat_mad0(endtype, x, xmedian, xmad, w) -> Cint

C signature:
`int gsl_movstat_mad0(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xmedian, gsl_vector * xmad, gsl_movstat_workspace * w)`
"""
function gsl_movstat_mad0(endtype, x, xmedian, xmad, w)
    ccall((:gsl_movstat_mad0, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xmedian, xmad, w)
end

"""
    gsl_movstat_mad(endtype, x, xmedian, xmad, w) -> Cint

C signature:
`int gsl_movstat_mad(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xmedian, gsl_vector * xmad, gsl_movstat_workspace * w)`
"""
function gsl_movstat_mad(endtype, x, xmedian, xmad, w)
    ccall((:gsl_movstat_mad, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xmedian, xmad, w)
end

"""
    gsl_movstat_qqr(endtype, x, q, xqqr, w) -> Cint

C signature:
`int gsl_movstat_qqr(const gsl_movstat_end_t endtype, const gsl_vector * x, const double q, gsl_vector * xqqr, gsl_movstat_workspace * w)`
"""
function gsl_movstat_qqr(endtype, x, q, xqqr, w)
    ccall((:gsl_movstat_qqr, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, q, xqqr, w)
end

"""
    gsl_movstat_Sn(endtype, x, xscale, w) -> Cint

C signature:
`int gsl_movstat_Sn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`
"""
function gsl_movstat_Sn(endtype, x, xscale, w)
    ccall((:gsl_movstat_Sn, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xscale, w)
end

"""
    gsl_movstat_Qn(endtype, x, xscale, w) -> Cint

C signature:
`int gsl_movstat_Qn(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * xscale, gsl_movstat_workspace * w)`
"""
function gsl_movstat_Qn(endtype, x, xscale, w)
    ccall((:gsl_movstat_Qn, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, xscale, w)
end

"""
    gsl_movstat_sum(endtype, x, y, w) -> Cint

C signature:
`int gsl_movstat_sum(const gsl_movstat_end_t endtype, const gsl_vector * x, gsl_vector * y, gsl_movstat_workspace * w)`
"""
function gsl_movstat_sum(endtype, x, y, w)
    ccall((:gsl_movstat_sum, libgsl), Cint, (gsl_movstat_end_t, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_movstat_workspace}), endtype, x, y, w)
end

