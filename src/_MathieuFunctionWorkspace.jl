#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 7.26.1 Mathieu Function Workspace #
#####################################
export gsl_sf_mathieu_alloc, gsl_sf_mathieu_free


# This function returns a workspace for the array versions of the Mathieu
# routines.  The arguments n and qmax specify the maximum order and q-value of
# Mathieu functions which can be computed with this workspace.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_sf_mathieu_alloc (n::Csize_t, qmax::Cdouble)
    ccall( (:gsl_sf_mathieu_alloc, "libgsl"), Ptr{Void}, (Csize_t,
        Cdouble), n, qmax )
end


# This function frees the workspace work.
# 
#   Returns: Void
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_free (work::Ptr{Void})
    ccall( (:gsl_sf_mathieu_free, "libgsl"), Void, (Ptr{Void}, ), work )
end
