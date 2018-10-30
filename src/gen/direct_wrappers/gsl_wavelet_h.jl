#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_wavelet.h ############################################################


"""
    gsl_wavelet_alloc(T, k) -> Ptr{gsl_wavelet}

C signature:
`gsl_wavelet *gsl_wavelet_alloc (const gsl_wavelet_type * T, size_t k)`
"""
function gsl_wavelet_alloc(T, k)
    ccall((:gsl_wavelet_alloc, libgsl), Ptr{gsl_wavelet}, (Ref{gsl_wavelet_type}, Csize_t), T, k)
end

"""
    gsl_wavelet_free(w) -> Cvoid

C signature:
`void gsl_wavelet_free (gsl_wavelet * w)`
"""
function gsl_wavelet_free(w)
    ccall((:gsl_wavelet_free, libgsl), Cvoid, (Ptr{gsl_wavelet},), w)
end

"""
    gsl_wavelet_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_wavelet_name (const gsl_wavelet * w)`
"""
function gsl_wavelet_name(w)
    ccall((:gsl_wavelet_name, libgsl), Ptr{Cchar}, (Ptr{gsl_wavelet},), w)
end

"""
    gsl_wavelet_workspace_alloc(n) -> Ptr{gsl_wavelet_workspace}

C signature:
`gsl_wavelet_workspace *gsl_wavelet_workspace_alloc (size_t n)`
"""
function gsl_wavelet_workspace_alloc(n)
    ccall((:gsl_wavelet_workspace_alloc, libgsl), Ptr{gsl_wavelet_workspace}, (Csize_t,), n)
end

"""
    gsl_wavelet_workspace_free(work) -> Cvoid

C signature:
`void gsl_wavelet_workspace_free (gsl_wavelet_workspace * work)`
"""
function gsl_wavelet_workspace_free(work)
    ccall((:gsl_wavelet_workspace_free, libgsl), Cvoid, (Ptr{gsl_wavelet_workspace},), work)
end

"""
    gsl_wavelet_transform(w, data, stride, n, dir, work) -> Cint

C signature:
`int gsl_wavelet_transform (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet_transform(w, data, stride, n, dir, work)
    ccall((:gsl_wavelet_transform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, stride, n, dir, work)
end

"""
    gsl_wavelet_transform_forward(w, data, stride, n, work) -> Cint

C signature:
`int gsl_wavelet_transform_forward (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet_transform_forward(w, data, stride, n, work)
    ccall((:gsl_wavelet_transform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, stride, n, work)
end

"""
    gsl_wavelet_transform_inverse(w, data, stride, n, work) -> Cint

C signature:
`int gsl_wavelet_transform_inverse (const gsl_wavelet * w, double *data, size_t stride, size_t n, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet_transform_inverse(w, data, stride, n, work)
    ccall((:gsl_wavelet_transform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, stride, n, work)
end

