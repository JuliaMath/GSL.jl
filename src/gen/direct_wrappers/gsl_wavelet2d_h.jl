#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_wavelet2d.h ##########################################################


"""
    gsl_wavelet2d_transform(w, data, tda, size1, size2, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_transform (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform(w, data, tda, size1, size2, dir, work)
    ccall((:gsl_wavelet2d_transform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, dir, work)
end

"""
    gsl_wavelet2d_transform_forward(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_forward (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform_forward(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_transform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

"""
    gsl_wavelet2d_transform_inverse(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_inverse (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform_inverse(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_transform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

"""
    gsl_wavelet2d_nstransform(w, data, tda, size1, size2, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform(w, data, tda, size1, size2, dir, work)
    ccall((:gsl_wavelet2d_nstransform, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, dir, work)
end

"""
    gsl_wavelet2d_nstransform_forward(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_forward (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform_forward(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_nstransform_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

"""
    gsl_wavelet2d_nstransform_inverse(w, data, tda, size1, size2, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_inverse (const gsl_wavelet * w, double *data, size_t tda, size_t size1, size_t size2, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform_inverse(w, data, tda, size1, size2, work)
    ccall((:gsl_wavelet2d_nstransform_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_wavelet_workspace}), w, data, tda, size1, size2, work)
end

"""
    gsl_wavelet2d_transform_matrix(w, a, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform_matrix(w, a, dir, work)
    ccall((:gsl_wavelet2d_transform_matrix, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, a, dir, work)
end

"""
    gsl_wavelet2d_transform_matrix_forward(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix_forward (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform_matrix_forward(w, a, work)
    ccall((:gsl_wavelet2d_transform_matrix_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

"""
    gsl_wavelet2d_transform_matrix_inverse(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_transform_matrix_inverse (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_transform_matrix_inverse(w, a, work)
    ccall((:gsl_wavelet2d_transform_matrix_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

"""
    gsl_wavelet2d_nstransform_matrix(w, a, dir, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_direction dir, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform_matrix(w, a, dir, work)
    ccall((:gsl_wavelet2d_nstransform_matrix, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, gsl_wavelet_direction, Ref{gsl_wavelet_workspace}), w, a, dir, work)
end

"""
    gsl_wavelet2d_nstransform_matrix_forward(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix_forward (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform_matrix_forward(w, a, work)
    ccall((:gsl_wavelet2d_nstransform_matrix_forward, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

"""
    gsl_wavelet2d_nstransform_matrix_inverse(w, a, work) -> Cint

C signature:
`int gsl_wavelet2d_nstransform_matrix_inverse (const gsl_wavelet * w, gsl_matrix * a, gsl_wavelet_workspace * work)`
"""
function gsl_wavelet2d_nstransform_matrix_inverse(w, a, work)
    ccall((:gsl_wavelet2d_nstransform_matrix_inverse, libgsl), Cint, (Ref{gsl_wavelet}, Ref{gsl_matrix}, Ref{gsl_wavelet_workspace}), w, a, work)
end

