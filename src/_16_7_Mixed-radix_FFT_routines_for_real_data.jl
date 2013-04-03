#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 16.7 Mixed-radix FFT routines for real data #
###############################################
export fft_real_wavetable_alloc, fft_halfcomplex_wavetable_alloc,
       fft_real_wavetable_free, fft_halfcomplex_wavetable_free,
       fft_real_workspace_alloc, fft_real_workspace_free, fft_real_transform,
       fft_halfcomplex_transform, fft_real_unpack, fft_halfcomplex_unpack












# These functions prepare trigonometric lookup tables for an FFT of size n real
# elements.  The functions return a pointer to the newly allocated struct if no
# errors were detected, and a null pointer in the case of error.  The length n
# is factorized into a product of subtransforms, and the factors and their
# trigonometric coefficients are stored in the wavetable. The trigonometric
# coefficients are computed using direct calls to sin and cos, for accuracy.
# Recursion relations could be used to compute the lookup table faster, but if
# an application performs many FFTs of the same length then computing the
# wavetable is a one-off overhead which does not affect the final throughput.
# The wavetable structure can be used repeatedly for any transform of the same
# length.  The table is not modified by calls to any of the other FFT
# functions.  The appropriate type of wavetable must be used for forward real
# or inverse half-complex transforms.
# 
#   Returns: Ptr{gsl_fft_real_wavetable}
function fft_real_wavetable_alloc(n::Integer)
    ccall( (:gsl_fft_real_wavetable_alloc, :libgsl),
        Ptr{gsl_fft_real_wavetable}, (Csize_t, ), n )
end
@vectorize_1arg Number fft_real_wavetable_alloc


# These functions prepare trigonometric lookup tables for an FFT of size n real
# elements.  The functions return a pointer to the newly allocated struct if no
# errors were detected, and a null pointer in the case of error.  The length n
# is factorized into a product of subtransforms, and the factors and their
# trigonometric coefficients are stored in the wavetable. The trigonometric
# coefficients are computed using direct calls to sin and cos, for accuracy.
# Recursion relations could be used to compute the lookup table faster, but if
# an application performs many FFTs of the same length then computing the
# wavetable is a one-off overhead which does not affect the final throughput.
# The wavetable structure can be used repeatedly for any transform of the same
# length.  The table is not modified by calls to any of the other FFT
# functions.  The appropriate type of wavetable must be used for forward real
# or inverse half-complex transforms.
# 
#   Returns: Ptr{gsl_fft_halfcomplex_wavetable}
function fft_halfcomplex_wavetable_alloc(n::Integer)
    ccall( (:gsl_fft_halfcomplex_wavetable_alloc, :libgsl),
        Ptr{gsl_fft_halfcomplex_wavetable}, (Csize_t, ), n )
end
@vectorize_1arg Number fft_halfcomplex_wavetable_alloc


# These functions free the memory associated with the wavetable wavetable. The
# wavetable can be freed if no further FFTs of the same length will be needed.
# 
#   Returns: Void
function fft_real_wavetable_free(wavetable::Ptr{gsl_fft_real_wavetable})
    ccall( (:gsl_fft_real_wavetable_free, :libgsl), Void,
        (Ptr{gsl_fft_real_wavetable}, ), wavetable )
end


# These functions free the memory associated with the wavetable wavetable. The
# wavetable can be freed if no further FFTs of the same length will be needed.
# 
#   Returns: Void
function fft_halfcomplex_wavetable_free(wavetable::Ptr{gsl_fft_halfcomplex_wavetable})
    ccall( (:gsl_fft_halfcomplex_wavetable_free, :libgsl), Void,
        (Ptr{gsl_fft_halfcomplex_wavetable}, ), wavetable )
end


# This function allocates a workspace for a real transform of length n.  The
# same workspace can be used for both forward real and inverse halfcomplex
# transforms.
# 
#   Returns: Ptr{gsl_fft_real_workspace}
function fft_real_workspace_alloc(n::Integer)
    ccall( (:gsl_fft_real_workspace_alloc, :libgsl),
        Ptr{gsl_fft_real_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number fft_real_workspace_alloc


# This function frees the memory associated with the workspace workspace. The
# workspace can be freed if no further FFTs of the same length will be needed.
# 
#   Returns: Void
function fft_real_workspace_free(workspace::Ptr{gsl_fft_real_workspace})
    ccall( (:gsl_fft_real_workspace_free, :libgsl), Void,
        (Ptr{gsl_fft_real_workspace}, ), workspace )
end


# These functions compute the FFT of data, a real or half-complex array of
# length n, using a mixed radix decimation-in-frequency algorithm.  For
# gsl_fft_real_transform data is an array of time-ordered real data.  For
# gsl_fft_halfcomplex_transform data contains Fourier coefficients in the half-
# complex ordering described above.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4 and 5.
# Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing trigonometric lookup tables and
# a workspace work.
# 
#   Returns: Cint
function fft_real_transform(data::Real)
    errno = ccall( (:gsl_fft_real_transform, :libgsl), Cint, (Cdouble, ),
        data )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number fft_real_transform


# These functions compute the FFT of data, a real or half-complex array of
# length n, using a mixed radix decimation-in-frequency algorithm.  For
# gsl_fft_real_transform data is an array of time-ordered real data.  For
# gsl_fft_halfcomplex_transform data contains Fourier coefficients in the half-
# complex ordering described above.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4 and 5.
# Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing trigonometric lookup tables and
# a workspace work.
# 
#   Returns: Cint
function fft_halfcomplex_transform(data::Real)
    errno = ccall( (:gsl_fft_halfcomplex_transform, :libgsl), Cint,
        (Cdouble, ), data )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number fft_halfcomplex_transform


# This function converts a single real array, real_coefficient into an
# equivalent complex array, complex_coefficient, (with imaginary part set to
# zero), suitable for gsl_fft_complex routines.  The algorithm for the
# conversion is simply,                 for (i = 0; i < n; i++)             {
# complex_coefficient[i*stride].real                 =
# real_coefficient[i*stride];               complex_coefficient[i*stride].imag
# = 0.0;             }
# 
#   Returns: Cint
function fft_real_unpack(real_coefficient::Real)
    errno = ccall( (:gsl_fft_real_unpack, :libgsl), Cint, (Cdouble, ),
        real_coefficient )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number fft_real_unpack


# This function converts halfcomplex_coefficient, an array of half-complex
# coefficients as returned by gsl_fft_real_transform, into an ordinary complex
# array, complex_coefficient.  It fills in the complex array using the symmetry
# z_k = z_{n-k}^* to reconstruct the redundant elements.  The algorithm for the
# conversion is,                 complex_coefficient[0].real             =
# halfcomplex_coefficient[0];           complex_coefficient[0].imag
# = 0.0;                      for (i = 1; i < n - i; i++)             {
# double hc_real                 = halfcomplex_coefficient[(2 * i - 1)*stride];
# double hc_imag                 = halfcomplex_coefficient[(2 * i)*stride];
# complex_coefficient[i*stride].real = hc_real;
# complex_coefficient[i*stride].imag = hc_imag;
# complex_coefficient[(n - i)*stride].real = hc_real;
# complex_coefficient[(n - i)*stride].imag = -hc_imag;             }
# if (i == n - i)             {
# complex_coefficient[i*stride].real                 =
# halfcomplex_coefficient[(n - 1)*stride];
# complex_coefficient[i*stride].imag                 = 0.0;             }
# 
#   Returns: Cint
function fft_halfcomplex_unpack(halfcomplex_coefficient::Real)
    errno = ccall( (:gsl_fft_halfcomplex_unpack, :libgsl), Cint, (Cdouble,
        ), halfcomplex_coefficient )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number fft_halfcomplex_unpack
