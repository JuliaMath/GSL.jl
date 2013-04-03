#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 30.2 Acceleration functions without error estimation #
########################################################
export sum_levin_utrunc_alloc, sum_levin_utrunc_free, sum_levin_utrunc_accel


# This function allocates a workspace for a Levin u-transform of n terms,
# without error estimation.  The size of the workspace is O(3n).
# 
#   Returns: Ptr{gsl_sum_levin_utrunc_workspace}
function sum_levin_utrunc_alloc(n::Integer)
    ccall( (:gsl_sum_levin_utrunc_alloc, :libgsl),
        Ptr{gsl_sum_levin_utrunc_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number sum_levin_utrunc_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function sum_levin_utrunc_free(w::Ptr{gsl_sum_levin_utrunc_workspace})
    ccall( (:gsl_sum_levin_utrunc_free, :libgsl), Void,
        (Ptr{gsl_sum_levin_utrunc_workspace}, ), w )
end


# This function takes the terms of a series in array of size array_size and
# computes the extrapolated limit of the series using a Levin u-transform.
# Additional working space must be provided in w.  The extrapolated sum is
# stored in sum_accel.  The actual term-by-term sum is returned in
# w->sum_plain. The algorithm terminates when the difference between two
# successive extrapolations reaches a minimum or is sufficiently small. The
# difference between these two values is used as estimate of the error and is
# stored in abserr_trunc.  To improve the reliability of the algorithm the
# extrapolated values are replaced by moving averages when calculating the
# truncation error, smoothing out any fluctuations.
# 
#   Returns: Cint
function sum_levin_utrunc_accel{tA<:Real}(array_in::Vector{tA}, array_size::Integer)
    convert(Vector{Cdouble}, array_in)
    w = convert(Ptr{gsl_sum_levin_utrunc_workspace}, Array(gsl_sum_levin_utrunc_workspace, 1))
    sum_accel = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr_trunc = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sum_levin_utrunc_accel, :libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{gsl_sum_levin_utrunc_workspace},
        Ptr{Cdouble}, Ptr{Cdouble}), array, array_size, w, sum_accel,
        abserr_trunc )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(w) ,unsafe_ref(sum_accel) ,unsafe_ref(abserr_trunc)
end
