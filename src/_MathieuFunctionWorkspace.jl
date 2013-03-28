#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 7.26.1 Mathieu Function Workspace #
#####################################
export gsl_sf_mathieu_alloc, gsl_sf_mathieu_free


### Function uses unknown type; disabled
### # This function returns a workspace for the array versions of the Mathieu
# routines.  The arguments n and qmax specify the maximum order and q-value of
# Mathieu functions which can be computed with this workspace.
# 
### #   This is required in order to properly 
### #   terminate the infinite eigenvalue matrix for high precision solutions. 
### #   The characteristic values for all orders @math{0 \to n} are stored in 
### #   the work structure array element @kbd{work->char_value}. 
### #   Returns: Ptr{gsl_sf_mathieu_workspace}
### #XXX Unknown output type Ptr{gsl_sf_mathieu_workspace}
### function gsl_sf_mathieu_alloc (n::Csize_t, qmax::Cdouble)
###     ccall( (:gsl_sf_mathieu_alloc, "libgsl"),
###         Ptr{gsl_sf_mathieu_workspace}, (Csize_t, Cdouble), n, qmax )
### end


### Function uses unknown type; disabled
### # This function frees the workspace work.
# 
### #   Returns: Void
### #XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
### function gsl_sf_mathieu_free (work::Ptr{gsl_sf_mathieu_workspace})
###     ccall( (:gsl_sf_mathieu_free, "libgsl"), Void,
###         (Ptr{gsl_sf_mathieu_workspace}, ), work )
### end