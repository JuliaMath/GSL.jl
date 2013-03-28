#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################
# 39.2 Initializing the B-splines solver #
##########################################
export gsl_bspline_alloc, gsl_bspline_free, gsl_bspline_deriv_alloc,
       gsl_bspline_deriv_free


### Function uses unknown type; disabled
### # This function allocates a workspace for computing B-splines of order k. The
# number of breakpoints is given by nbreak. This leads to n = nbreak + k - 2
# basis functions. Cubic B-splines are specified by k = 4. The size of the
# workspace is O(5k + nbreak).
# 
### #   Returns: Ptr{gsl_bspline_workspace}
### #XXX Unknown output type Ptr{gsl_bspline_workspace}
### function gsl_bspline_alloc (k::Csize_t, nbreak::Csize_t)
###     ccall( (:gsl_bspline_alloc, "libgsl"), Ptr{gsl_bspline_workspace},
###         (Csize_t, Csize_t), k, nbreak )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_bspline_workspace}
### function gsl_bspline_free (w::Ptr{gsl_bspline_workspace})
###     ccall( (:gsl_bspline_free, "libgsl"), Void,
###         (Ptr{gsl_bspline_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function allocates a workspace for computing the derivatives of a
# B-spline basis function of order k.  The size of the workspace is O(2k^2).
# 
### #   Returns: Ptr{gsl_bspline_deriv_workspace}
### #XXX Unknown output type Ptr{gsl_bspline_deriv_workspace}
### function gsl_bspline_deriv_alloc (k::Csize_t)
###     ccall( (:gsl_bspline_deriv_alloc, "libgsl"),
###         Ptr{gsl_bspline_deriv_workspace}, (Csize_t, ), k )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the derivative workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_bspline_deriv_workspace}
### function gsl_bspline_deriv_free (w::Ptr{gsl_bspline_deriv_workspace})
###     ccall( (:gsl_bspline_deriv_free, "libgsl"), Void,
###         (Ptr{gsl_bspline_deriv_workspace}, ), w )
### end