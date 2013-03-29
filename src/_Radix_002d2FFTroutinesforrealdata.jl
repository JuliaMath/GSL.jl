#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 16.6 Radix-2 FFT routines for real data #
###########################################
export gsl_fft_real_radix2_transform, gsl_fft_halfcomplex_radix2_inverse,
       gsl_fft_halfcomplex_radix2_backward, gsl_fft_halfcomplex_radix2_unpack






# This function computes an in-place radix-2 FFT of length n and stride stride
# on the real array data.  The output is a half-complex sequence, which is
# stored in-place.  The arrangement of the half-complex terms uses the
# following scheme: for k < n/2 the real part of the k-th term is stored in
# location k, and the corresponding imaginary part is stored in location n-k.
# Terms with k > n/2 can be reconstructed using the symmetry  z_k = z^*_{n-k}.
# The terms for k=0 and k=n/2 are both purely real, and count as a special
# case.  Their real parts are stored in locations 0 and n/2 respectively, while
# their imaginary parts which are zero are not stored.          The following
# table shows the correspondence between the output data and the equivalent
# results obtained by considering the input data as a complex sequence with
# zero imaginary part (assuming stride=1),                 complex[0].real    =
# data[0]           complex[0].imag    =    0           complex[1].real    =
# data[1]           complex[1].imag    =    data[n-1]           ...............
# ................           complex[k].real    =    data[k]
# complex[k].imag    =    data[n-k]           ...............
# ................           complex[n/2].real  =    data[n/2]
# complex[n/2].imag  =    0           ...............         ................
# complex[k'].real   =    data[k]        k' = n - k           complex[k'].imag
# =   -data[n-k]           ...............         ................
# complex[n-1].real  =    data[1]           complex[n-1].imag  =   -data[n-1]
# Note that the output data can be converted into the full complex sequence
# using the function gsl_fft_halfcomplex_radix2_unpack described below.
# 
#   Returns: Cint
function gsl_fft_real_radix2_transform (data::Cdouble)
    ccall( (:gsl_fft_real_radix2_transform, "libgsl"), Cint, (Cdouble, ),
        data )
end


# These functions compute the inverse or backwards in-place radix-2 FFT of
# length n and stride stride on the half-complex sequence data stored according
# the output scheme used by gsl_fft_real_radix2.  The result is a real array
# stored in natural order.
# 
#   Returns: Cint
function gsl_fft_halfcomplex_radix2_inverse (data::Cdouble)
    ccall( (:gsl_fft_halfcomplex_radix2_inverse, "libgsl"), Cint, (Cdouble,
        ), data )
end


# These functions compute the inverse or backwards in-place radix-2 FFT of
# length n and stride stride on the half-complex sequence data stored according
# the output scheme used by gsl_fft_real_radix2.  The result is a real array
# stored in natural order.
# 
#   Returns: Cint
function gsl_fft_halfcomplex_radix2_backward (data::Cdouble)
    ccall( (:gsl_fft_halfcomplex_radix2_backward, "libgsl"), Cint,
        (Cdouble, ), data )
end


# This function converts halfcomplex_coefficient, an array of half-complex
# coefficients as returned by gsl_fft_real_radix2_transform, into an ordinary
# complex array, complex_coefficient.  It fills in the complex array using the
# symmetry  z_k = z_{n-k}^* to reconstruct the redundant elements.  The
# algorithm for the conversion is,                 complex_coefficient[0].real
# = halfcomplex_coefficient[0];           complex_coefficient[0].imag
# = 0.0;                      for (i = 1; i < n - i; i++)             {
# double hc_real                 = halfcomplex_coefficient[i*stride];
# double hc_imag                 = halfcomplex_coefficient[(n-i)*stride];
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
function gsl_fft_halfcomplex_radix2_unpack (halfcomplex_coefficient::Cdouble)
    ccall( (:gsl_fft_halfcomplex_radix2_unpack, "libgsl"), Cint, (Cdouble,
        ), halfcomplex_coefficient )
end
