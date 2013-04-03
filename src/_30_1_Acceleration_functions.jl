#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 30.1 Acceleration functions #
###############################
export gsl_sum_levin_u_alloc, gsl_sum_levin_u_free, gsl_sum_levin_u_accel


# This function allocates a workspace for a Levin u-transform of n terms.  The
# size of the workspace is O(2n^2 + 3n).
# 
#   Returns: Ptr{gsl_sum_levin_u_workspace}
function gsl_sum_levin_u_alloc(n::Integer)
    ccall( (:gsl_sum_levin_u_alloc, :libgsl),
        Ptr{gsl_sum_levin_u_workspace}, (Csize_t, ), n )
end
@vectorize_1arg Number gsl_sum_levin_u_alloc


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_sum_levin_u_free(w::Ptr{gsl_sum_levin_u_workspace})
    ccall( (:gsl_sum_levin_u_free, :libgsl), Void,
        (Ptr{gsl_sum_levin_u_workspace}, ), w )
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
function gsl_sum_levin_u_accel{tA<:Real}(array::Ptr{tA}, array_size::Integer)
    w = convert(Ptr{gsl_sum_levin_u_workspace}, Array(gsl_sum_levin_u_workspace, 1))
    sum_accel = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sum_levin_u_accel, :libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{gsl_sum_levin_u_workspace}, Ptr{Cdouble},
        Ptr{Cdouble}), array, array_size, w, sum_accel, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(w)[1] ,unsafe_ref(sum_accel)[1] ,unsafe_ref(abserr)[1]
end
