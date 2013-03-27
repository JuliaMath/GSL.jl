#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 16.3 Radix-2 FFT routines for complex data #
##############################################
export gsl_fft_complex_radix2_forward, gsl_fft_complex_radix2_transform,
       gsl_fft_complex_radix2_backward, gsl_fft_complex_radix2_inverse,
       gsl_fft_complex_radix2_dif_forward,
       gsl_fft_complex_radix2_dif_transform,
       gsl_fft_complex_radix2_dif_backward, gsl_fft_complex_radix2_dif_inverse


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data using an in-place radix-2
# decimation-in-time algorithm.  The length of the transform n is restricted to
# powers of two.  For the transform version of the function the sign argument
# can be either forward (-1) or backward (+1).          The functions return a
# value of GSL_SUCCESS if no errors were detected, or GSL_EDOM if the length of
# the data n is not a power of two.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_forward (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_forward, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data using an in-place radix-2
# decimation-in-time algorithm.  The length of the transform n is restricted to
# powers of two.  For the transform version of the function the sign argument
# can be either forward (-1) or backward (+1).          The functions return a
# value of GSL_SUCCESS if no errors were detected, or GSL_EDOM if the length of
# the data n is not a power of two.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_transform (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t, sign::gsl_fft_direction)
    ccall( (:gsl_fft_complex_radix2_transform, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t, gsl_fft_direction), data,
        stride, n, sign )
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data using an in-place radix-2
# decimation-in-time algorithm.  The length of the transform n is restricted to
# powers of two.  For the transform version of the function the sign argument
# can be either forward (-1) or backward (+1).          The functions return a
# value of GSL_SUCCESS if no errors were detected, or GSL_EDOM if the length of
# the data n is not a power of two.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_backward (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_backward, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data using an in-place radix-2
# decimation-in-time algorithm.  The length of the transform n is restricted to
# powers of two.  For the transform version of the function the sign argument
# can be either forward (-1) or backward (+1).          The functions return a
# value of GSL_SUCCESS if no errors were detected, or GSL_EDOM if the length of
# the data n is not a power of two.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_inverse (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_inverse, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end


# These are decimation-in-frequency versions of the radix-2 FFT functions.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_dif_forward (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_dif_forward, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end


# These are decimation-in-frequency versions of the radix-2 FFT functions.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_dif_transform (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t, sign::gsl_fft_direction)
    ccall( (:gsl_fft_complex_radix2_dif_transform, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t, gsl_fft_direction), data,
        stride, n, sign )
end


# These are decimation-in-frequency versions of the radix-2 FFT functions.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_dif_backward (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_dif_backward, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end


# These are decimation-in-frequency versions of the radix-2 FFT functions.
# 
#   Returns: Cint
function gsl_fft_complex_radix2_dif_inverse (data::gsl_complex_packed_array, stride::Csize_t, n::Csize_t)
    ccall( (:gsl_fft_complex_radix2_dif_inverse, "libgsl"), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t), data, stride, n )
end