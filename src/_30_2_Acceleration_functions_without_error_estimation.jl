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
    output_ptr = ccall( (:gsl_sum_levin_utrunc_alloc, libgsl),
        Ptr{gsl_sum_levin_utrunc_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number sum_levin_utrunc_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function sum_levin_utrunc_free(w::Ref{gsl_sum_levin_utrunc_workspace})
    ccall( (:gsl_sum_levin_utrunc_free, libgsl), Void,
        (Ref{gsl_sum_levin_utrunc_workspace}, ), w )
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
function sum_levin_utrunc_accel{tA<:Real}(array_in::AbstractVector{tA})
    array_size = length(array_in)
    array = convert(Vector{Cdouble}, array_in)
    w = Ref{gsl_sum_levin_utrunc_workspace}()
    sum_accel = Ref{Cdouble}()
    abserr_trunc = Ref{Cdouble}()
    errno = ccall( (:gsl_sum_levin_utrunc_accel, libgsl), Cint,
        (Ref{Cdouble}, Csize_t, Ref{gsl_sum_levin_utrunc_workspace},
        Ref{Cdouble}, Ref{Cdouble}), array, array_size, w, sum_accel,
        abserr_trunc )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return w[], sum_accel[], abserr_trunc[]
end
