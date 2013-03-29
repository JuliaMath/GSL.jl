#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 31.3.1 Wavelet transforms in one dimension #
##############################################
export gsl_wavelet_transform, gsl_wavelet_transform_forward,
       gsl_wavelet_transform_inverse




# These functions compute in-place forward and inverse discrete wavelet
# transforms of length n with stride stride on the array data. The length of
# the transform n is restricted to powers of two.  For the transform version of
# the function the argument dir can be either forward (+1) or backward (-1).  A
# workspace work of length n must be provided.          For the forward
# transform, the elements of the original array are replaced by the discrete
# wavelet transform  f_i -> w_{j,k} in a packed triangular storage layout,
# where j is the index of the level  j = 0 ... J-1 and k is the index of the
# coefficient within each level,  k = 0 ... (2^j)-1.  The total number of
# levels is J = \log_2(n).  The output data has the following form,
# (s_{-1,0}, d_{0,0}, d_{1,0}, d_{1,1}, d_{2,0}, ...,             d_{j,k}, ...,
# d_{J-1,2^{J-1}-1})  where the first element is the smoothing coefficient
# s_{-1,0}, followed by the detail coefficients  d_{j,k} for each level j.  The
# backward transform inverts these coefficients to obtain the original data.
# These functions return a status of GSL_SUCCESS upon successful completion.
# GSL_EINVAL is returned if n is not an integer power of 2 or if insufficient
# workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type dir::gsl_wavelet_direction
#XXX Coerced type for dir::Void
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet_transform (w::Ptr{Void}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t, dir::Void, work::Ptr{Void})
    ccall( (:gsl_wavelet_transform, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Void, Ptr{Void}), w, data, stride, n,
        dir, work )
end


# These functions compute in-place forward and inverse discrete wavelet
# transforms of length n with stride stride on the array data. The length of
# the transform n is restricted to powers of two.  For the transform version of
# the function the argument dir can be either forward (+1) or backward (-1).  A
# workspace work of length n must be provided.          For the forward
# transform, the elements of the original array are replaced by the discrete
# wavelet transform  f_i -> w_{j,k} in a packed triangular storage layout,
# where j is the index of the level  j = 0 ... J-1 and k is the index of the
# coefficient within each level,  k = 0 ... (2^j)-1.  The total number of
# levels is J = \log_2(n).  The output data has the following form,
# (s_{-1,0}, d_{0,0}, d_{1,0}, d_{1,1}, d_{2,0}, ...,             d_{j,k}, ...,
# d_{J-1,2^{J-1}-1})  where the first element is the smoothing coefficient
# s_{-1,0}, followed by the detail coefficients  d_{j,k} for each level j.  The
# backward transform inverts these coefficients to obtain the original data.
# These functions return a status of GSL_SUCCESS upon successful completion.
# GSL_EINVAL is returned if n is not an integer power of 2 or if insufficient
# workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet_transform_forward (w::Ptr{Void}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet_transform_forward, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Void}), w, data, stride, n, work )
end


# These functions compute in-place forward and inverse discrete wavelet
# transforms of length n with stride stride on the array data. The length of
# the transform n is restricted to powers of two.  For the transform version of
# the function the argument dir can be either forward (+1) or backward (-1).  A
# workspace work of length n must be provided.          For the forward
# transform, the elements of the original array are replaced by the discrete
# wavelet transform  f_i -> w_{j,k} in a packed triangular storage layout,
# where j is the index of the level  j = 0 ... J-1 and k is the index of the
# coefficient within each level,  k = 0 ... (2^j)-1.  The total number of
# levels is J = \log_2(n).  The output data has the following form,
# (s_{-1,0}, d_{0,0}, d_{1,0}, d_{1,1}, d_{2,0}, ...,             d_{j,k}, ...,
# d_{J-1,2^{J-1}-1})  where the first element is the smoothing coefficient
# s_{-1,0}, followed by the detail coefficients  d_{j,k} for each level j.  The
# backward transform inverts these coefficients to obtain the original data.
# These functions return a status of GSL_SUCCESS upon successful completion.
# GSL_EINVAL is returned if n is not an integer power of 2 or if insufficient
# workspace is provided.
# 
#   Returns: Cint
#XXX Unknown input type w::Ptr{gsl_wavelet}
#XXX Coerced type for w::Ptr{Void}
#XXX Unknown input type work::Ptr{gsl_wavelet_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_wavelet_transform_inverse (w::Ptr{Void}, data::Ptr{Cdouble}, stride::Csize_t, n::Csize_t, work::Ptr{Void})
    ccall( (:gsl_wavelet_transform_inverse, "libgsl"), Cint, (Ptr{Void},
        Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Void}), w, data, stride, n, work )
end
