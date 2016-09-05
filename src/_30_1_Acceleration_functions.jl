#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 30.1 Acceleration functions #
###############################
export sum_levin_u_alloc, sum_levin_u_free, sum_levin_u_accel


# This function allocates a workspace for a Levin u-transform of n terms.  The
# size of the workspace is O(2n^2 + 3n).
#
#   Returns: Ptr{gsl_sum_levin_u_workspace}
function sum_levin_u_alloc(n::Integer)
    output_ptr = ccall( (:gsl_sum_levin_u_alloc, libgsl),
        Ptr{gsl_sum_levin_u_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number sum_levin_u_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function sum_levin_u_free(w::Ref{gsl_sum_levin_u_workspace})
    ccall( (:gsl_sum_levin_u_free, libgsl), Void,
        (Ref{gsl_sum_levin_u_workspace}, ), w )
end


# This function takes the terms of a series in array of size array_size and
# computes the extrapolated limit of the series using a Levin u-transform.
# Additional working space must be provided in w.  The extrapolated sum is
# stored in sum_accel, with an estimate of the absolute error stored in abserr.
# The actual term-by-term sum is returned in w->sum_plain. The algorithm
# calculates the truncation error (the difference between two successive
# extrapolations) and round-off error (propagated from the individual terms) to
# choose an optimal number of terms for the extrapolation.  All the terms of
# the series passed in through array should be non-zero.
#
#   Returns: Cint
function sum_levin_u_accel{tA<:Real}(array_in::AbstractVector{tA})
    array_size = length(array_in)
    array = convert(Vector{Cdouble}, array_in)
    w = Ref{gsl_sum_levin_u_workspace}()
    sum_accel = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_sum_levin_u_accel, libgsl), Cint, (Ref{Cdouble},
        Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}, Ref{Cdouble}),
        array, array_size, w, sum_accel, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return w[], sum_accel[], abserr[]
end
