#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 31.3.2 Wavelet transforms in two dimension #
##############################################
export gsl_wavelet2d_transform, gsl_wavelet2d_transform_forward,
       gsl_wavelet2d_transform_inverse, gsl_wavelet2d_transform_matrix,
       gsl_wavelet2d_transform_matrix_forward,
       gsl_wavelet2d_transform_matrix_inverse, gsl_wavelet2d_nstransform,
       gsl_wavelet2d_nstransform_forward, gsl_wavelet2d_nstransform_inverse,
       gsl_wavelet2d_nstransform_matrix,
       gsl_wavelet2d_nstransform_matrix_forward,
       gsl_wavelet2d_nstransform_matrix_inverse


# These functions compute two-dimensional in-place forward and inverse discrete
# wavelet transforms in standard form on the array data stored in row-major
# form with dimensions size1 and size2 and physical row length tda.  The
# dimensions must be equal (square matrix) and are restricted to powers of two.
# For the transform version of the function the argument dir can be either
# forward (+1) or backward (-1).  A workspace work of the appropriate size must
# be provided.  On exit, the appropriate elements of the array data are
# replaced by their two-dimensional wavelet transform.          The functions
# return a status of GSL_SUCCESS upon successful completion.  GSL_EINVAL is
# returned if size1 and size2 are not equal and integer powers of 2, or if
# insufficient workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type dir::gsl_wavelet_direction
#XXX Coerced type for dir::Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, dir::Void, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Void, Ptr{Void}), w, data,
        tda, size1, size2, dir, work )
end


# These functions compute two-dimensional in-place forward and inverse discrete
# wavelet transforms in standard form on the array data stored in row-major
# form with dimensions size1 and size2 and physical row length tda.  The
# dimensions must be equal (square matrix) and are restricted to powers of two.
# For the transform version of the function the argument dir can be either
# forward (+1) or backward (-1).  A workspace work of the appropriate size must
# be provided.  On exit, the appropriate elements of the array data are
# replaced by their two-dimensional wavelet transform.          The functions
# return a status of GSL_SUCCESS upon successful completion.  GSL_EINVAL is
# returned if size1 and size2 are not equal and integer powers of 2, or if
# insufficient workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform_forward (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform_forward, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Ptr{Void}), w, data, tda,
        size1, size2, work )
end


# These functions compute two-dimensional in-place forward and inverse discrete
# wavelet transforms in standard form on the array data stored in row-major
# form with dimensions size1 and size2 and physical row length tda.  The
# dimensions must be equal (square matrix) and are restricted to powers of two.
# For the transform version of the function the argument dir can be either
# forward (+1) or backward (-1).  A workspace work of the appropriate size must
# be provided.  On exit, the appropriate elements of the array data are
# replaced by their two-dimensional wavelet transform.          The functions
# return a status of GSL_SUCCESS upon successful completion.  GSL_EINVAL is
# returned if size1 and size2 are not equal and integer powers of 2, or if
# insufficient workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform_inverse (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform_inverse, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Ptr{Void}), w, data, tda,
        size1, size2, work )
end


# These functions compute the two-dimensional in-place wavelet transform on a
# matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type dir::gsl_wavelet_direction
#XXX Coerced type for dir::Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform_matrix (w::Ptr{Void}, m::Ptr{gsl_matrix}, dir::Void, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform_matrix, "libgsl"), Cint, (Ptr{Void},
        Ptr{gsl_matrix}, Void, Ptr{Void}), w, m, dir, work )
end


# These functions compute the two-dimensional in-place wavelet transform on a
# matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform_matrix_forward (w::Ptr{Void}, m::Ptr{gsl_matrix}, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform_matrix_forward, "libgsl"), Cint,
        (Ptr{Void}, Ptr{gsl_matrix}, Ptr{Void}), w, m, work )
end


# These functions compute the two-dimensional in-place wavelet transform on a
# matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_transform_matrix_inverse (w::Ptr{Void}, m::Ptr{gsl_matrix}, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_transform_matrix_inverse, "libgsl"), Cint,
        (Ptr{Void}, Ptr{gsl_matrix}, Ptr{Void}), w, m, work )
end


# These functions compute the two-dimensional wavelet transform in non-standard
# form.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type dir::gsl_wavelet_direction
#XXX Coerced type for dir::Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, dir::Void, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Void, Ptr{Void}), w, data,
        tda, size1, size2, dir, work )
end


# These functions compute the two-dimensional wavelet transform in non-standard
# form.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform_forward (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform_forward, "libgsl"), Cint,
        (Ptr{Void}, Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Ptr{Void}), w,
        data, tda, size1, size2, work )
end


# These functions compute the two-dimensional wavelet transform in non-standard
# form.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform_inverse (w::Ptr{Void}, data::Ptr{Cdouble}, tda::Csize_t, size1::Csize_t, size2::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform_inverse, "libgsl"), Cint,
        (Ptr{Void}, Ptr{Cdouble}, Csize_t, Csize_t, Csize_t, Ptr{Void}), w,
        data, tda, size1, size2, work )
end


# These functions compute the non-standard form of the two-dimensional in-place
# wavelet transform on a matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type dir::gsl_wavelet_direction
#XXX Coerced type for dir::Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform_matrix (w::Ptr{Void}, m::Ptr{gsl_matrix}, dir::Void, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform_matrix, "libgsl"), Cint, (Ptr{Void},
        Ptr{gsl_matrix}, Void, Ptr{Void}), w, m, dir, work )
end


# These functions compute the non-standard form of the two-dimensional in-place
# wavelet transform on a matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform_matrix_forward (w::Ptr{Void}, m::Ptr{gsl_matrix}, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform_matrix_forward, "libgsl"), Cint,
        (Ptr{Void}, Ptr{gsl_matrix}, Ptr{Void}), w, m, work )
end


# These functions compute the non-standard form of the two-dimensional in-place
# wavelet transform on a matrix a.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet2d_nstransform_matrix_inverse (w::Ptr{Void}, m::Ptr{gsl_matrix}, work::Ptr{Void})
    ccall( (:gsl_wavelet2d_nstransform_matrix_inverse, "libgsl"), Cint,
        (Ptr{Void}, Ptr{gsl_matrix}, Ptr{Void}), w, m, work )
end
