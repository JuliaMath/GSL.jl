#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 16.4 Mixed-radix FFT routines for complex data #
##################################################
export gsl_fft_complex_wavetable, gsl_fft_complex_wavetable_alloc,
       gsl_fft_complex_wavetable_free, gsl_fft_complex_workspace_alloc,
       gsl_fft_complex_workspace_free, gsl_fft_complex_forward,
       gsl_fft_complex_transform, gsl_fft_complex_backward,
       gsl_fft_complex_inverse, gsl_fft_complex_inverse




type gsl_fft_complex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::Ptr{Csize_t}
    trig::Ptr{gsl_complex}
    twiddle::Ptr{Ptr{gsl_complex}}
end


# This function prepares a trigonometric lookup table for a complex FFT of
# length n. The function returns a pointer to the newly allocated
# gsl_fft_complex_wavetable if no errors were detected, and a null pointer in
# the case of error.  The length n is factorized into a product of
# subtransforms, and the factors and their trigonometric coefficients are
# stored in the wavetable. The trigonometric coefficients are computed using
# direct calls to sin and cos, for accuracy.  Recursion relations could be used
# to compute the lookup table faster, but if an application performs many FFTs
# of the same length then this computation is a one-off overhead which does not
# affect the final throughput.          The wavetable structure can be used
# repeatedly for any transform of the same length.  The table is not modified
# by calls to any of the other FFT functions.  The same wavetable can be used
# for both forward and backward (or inverse) transforms of a given length.
# 
#   Returns: Ptr{gsl_fft_complex_wavetable}
function gsl_fft_complex_wavetable_alloc(n::Integer)
    ccall( (:gsl_fft_complex_wavetable_alloc, :libgsl),
        Ptr{gsl_fft_complex_wavetable}, (Csize_t, ), n )
end
@vectorize_1arg Number gsl_fft_complex_wavetable_alloc


# This function frees the memory associated with the wavetable wavetable.  The
# wavetable can be freed if no further FFTs of the same length will be needed.
# 
#   Returns: Void
function gsl_fft_complex_wavetable_free(wavetable::Ptr{gsl_fft_complex_wavetable})
    ccall( (:gsl_fft_complex_wavetable_free, :libgsl), Void,
        (Ptr{gsl_fft_complex_wavetable}, ), wavetable )
end


# This function allocates a workspace for a complex transform of length n.
# 
#   Returns: Ptr{gsl_fft_complex_workspace}
function gsl_fft_complex_workspace_alloc(n::Integer)
    ccall( (:gsl_fft_complex_workspace_alloc, :libgsl),
        Ptr{gsl_fft_complex_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number gsl_fft_complex_workspace_alloc


# This function frees the memory associated with the workspace workspace. The
# workspace can be freed if no further FFTs of the same length will be needed.
# 
#   Returns: Void
function gsl_fft_complex_workspace_free(workspace::Ptr{gsl_fft_complex_workspace})
    ccall( (:gsl_fft_complex_workspace_free, :libgsl), Void,
        (Ptr{gsl_fft_complex_workspace}, ), workspace )
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data, using a mixed radix
# decimation-in-frequency algorithm.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4, 5, 6 and
# 7.  Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing the trigonometric lookup tables
# and a workspace work.  For the transform version of the function the sign
# argument can be either forward (-1) or backward (+1).          The functions
# return a value of 0 if no errors were detected. The following gsl_errno
# conditions are defined for these functions:             GSL_EDOMThe length of
# the data n is not a positive integer (i.e. n is zero).
# GSL_EINVALThe length of the data n and the length used to compute the given
# wavetable do not match.
# 
#   Returns: Cint
function gsl_fft_complex_forward(data::gsl_complex_packed_array, stride::Integer, n::Integer, wavetable::Ptr{gsl_fft_complex_wavetable})
    work = convert(Ptr{gsl_fft_complex_workspace}, Array(gsl_fft_complex_workspace, 1))
    gsl_errno = ccall( (:gsl_fft_complex_forward, :libgsl), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t,
        Ptr{gsl_fft_complex_wavetable}, Ptr{gsl_fft_complex_workspace}), data,
        stride, n, wavetable, work )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(work)[1]
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data, using a mixed radix
# decimation-in-frequency algorithm.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4, 5, 6 and
# 7.  Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing the trigonometric lookup tables
# and a workspace work.  For the transform version of the function the sign
# argument can be either forward (-1) or backward (+1).          The functions
# return a value of 0 if no errors were detected. The following gsl_errno
# conditions are defined for these functions:             GSL_EDOMThe length of
# the data n is not a positive integer (i.e. n is zero).
# GSL_EINVALThe length of the data n and the length used to compute the given
# wavetable do not match.
# 
#   Returns: Cint
function gsl_fft_complex_transform(data::gsl_complex_packed_array, stride::Integer, n::Integer, wavetable::Ptr{gsl_fft_complex_wavetable}, sign::gsl_fft_direction)
    work = convert(Ptr{gsl_fft_complex_workspace}, Array(gsl_fft_complex_workspace, 1))
    gsl_errno = ccall( (:gsl_fft_complex_transform, :libgsl), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t,
        Ptr{gsl_fft_complex_wavetable}, Ptr{gsl_fft_complex_workspace},
        gsl_fft_direction), data, stride, n, wavetable, work, sign )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(work)[1]
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data, using a mixed radix
# decimation-in-frequency algorithm.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4, 5, 6 and
# 7.  Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing the trigonometric lookup tables
# and a workspace work.  For the transform version of the function the sign
# argument can be either forward (-1) or backward (+1).          The functions
# return a value of 0 if no errors were detected. The following gsl_errno
# conditions are defined for these functions:             GSL_EDOMThe length of
# the data n is not a positive integer (i.e. n is zero).
# GSL_EINVALThe length of the data n and the length used to compute the given
# wavetable do not match.
# 
#   Returns: Cint
function gsl_fft_complex_backward(data::gsl_complex_packed_array, stride::Integer, n::Integer, wavetable::Ptr{gsl_fft_complex_wavetable})
    work = convert(Ptr{gsl_fft_complex_workspace}, Array(gsl_fft_complex_workspace, 1))
    gsl_errno = ccall( (:gsl_fft_complex_backward, :libgsl), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t,
        Ptr{gsl_fft_complex_wavetable}, Ptr{gsl_fft_complex_workspace}), data,
        stride, n, wavetable, work )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(work)[1]
end


# These functions compute forward, backward and inverse FFTs of length n with
# stride stride, on the packed complex array data, using a mixed radix
# decimation-in-frequency algorithm.  There is no restriction on the length n.
# Efficient modules are provided for subtransforms of length 2, 3, 4, 5, 6 and
# 7.  Any remaining factors are computed with a slow, O(n^2), general-n module.
# The caller must supply a wavetable containing the trigonometric lookup tables
# and a workspace work.  For the transform version of the function the sign
# argument can be either forward (-1) or backward (+1).          The functions
# return a value of 0 if no errors were detected. The following gsl_errno
# conditions are defined for these functions:             GSL_EDOMThe length of
# the data n is not a positive integer (i.e. n is zero).
# GSL_EINVALThe length of the data n and the length used to compute the given
# wavetable do not match.
# 
#   Returns: Cint
function gsl_fft_complex_inverse(data::gsl_complex_packed_array, stride::Integer, n::Integer, wavetable::Ptr{gsl_fft_complex_wavetable})
    work = convert(Ptr{gsl_fft_complex_workspace}, Array(gsl_fft_complex_workspace, 1))
    gsl_errno = ccall( (:gsl_fft_complex_inverse, :libgsl), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t,
        Ptr{gsl_fft_complex_wavetable}, Ptr{gsl_fft_complex_workspace}), data,
        stride, n, wavetable, work )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(work)[1]
end


# 
# 
#   Returns: Cint
function gsl_fft_complex_inverse(data::gsl_complex_packed_array, stride::Integer, n::Integer, wavetable::Ptr{gsl_fft_complex_wavetable})
    work = convert(Ptr{gsl_fft_complex_workspace}, Array(gsl_fft_complex_workspace, 1))
    gsl_errno = ccall( (:gsl_fft_complex_inverse, :libgsl), Cint,
        (gsl_complex_packed_array, Csize_t, Csize_t,
        Ptr{gsl_fft_complex_wavetable}, Ptr{gsl_fft_complex_workspace}), data,
        stride, n, wavetable, work )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(work)[1]
end
