#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################
# 39.2 Initializing the B-splines solver #
##########################################
export bspline_alloc, bspline_free, bspline_deriv_alloc, bspline_deriv_free


# This function allocates a workspace for computing B-splines of order k. The
# number of breakpoints is given by nbreak. This leads to n = nbreak + k - 2
# basis functions. Cubic B-splines are specified by k = 4. The size of the
# workspace is O(5k + nbreak).
#
#   Returns: Ptr{gsl_bspline_workspace}
function bspline_alloc(k::Integer, nbreak::Integer)
    output_ptr = ccall( (:gsl_bspline_alloc, libgsl),
        Ptr{gsl_bspline_workspace}, (Csize_t, Csize_t), k, nbreak )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number bspline_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function bspline_free(w::Ref{gsl_bspline_workspace})
    ccall( (:gsl_bspline_free, libgsl), Void, (Ref{gsl_bspline_workspace},
        ), w )
end


# This function allocates a workspace for computing the derivatives of a
# B-spline basis function of order k.  The size of the workspace is O(2k^2).
#
#   Returns: Ptr{gsl_bspline_deriv_workspace}
function bspline_deriv_alloc(k::Integer)
    output_ptr = ccall( (:gsl_bspline_deriv_alloc, libgsl),
        Ptr{gsl_bspline_deriv_workspace}, (Csize_t, ), k )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number bspline_deriv_alloc


# This function frees the memory associated with the derivative workspace w.
#
#   Returns: Void
function bspline_deriv_free(w::Ref{gsl_bspline_deriv_workspace})
    ccall( (:gsl_bspline_deriv_free, libgsl), Void,
        (Ref{gsl_bspline_deriv_workspace}, ), w )
end
