#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 7.26.1 Mathieu Function Workspace #
#####################################
export sf_mathieu_alloc, sf_mathieu_free


# This function returns a workspace for the array versions of the Mathieu
# routines.  The arguments n and qmax specify the maximum order and q-value of
# Mathieu functions which can be computed with this workspace.
#
#   Returns: Ptr{gsl_sf_mathieu_workspace}
function sf_mathieu_alloc(n::Integer, qmax::Real)
    output_ptr = ccall( (:gsl_sf_mathieu_alloc, libgsl),
        Ptr{gsl_sf_mathieu_workspace}, (Csize_t, Cdouble), n, qmax )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_2arg Number sf_mathieu_alloc


# This function frees the workspace work.
#
#   Returns: Void
function sf_mathieu_free(work::Ref{gsl_sf_mathieu_workspace})
    ccall( (:gsl_sf_mathieu_free, libgsl), Void,
        (Ref{gsl_sf_mathieu_workspace}, ), work )
end
