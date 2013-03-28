#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 39.6 Greville abscissae #
###########################
export gsl_bspline_greville_abscissa


### Function uses unknown type; disabled
### # Returns the location of the i-th Greville abscissa for the given spline
# basis.  Here, i = 0, ..., gsl_bspline_ncoeffs(w) - 1.
# 
### #   Returns: Cdouble
### #XXX Unknown input type *w::gsl_bspline_workspace
### function gsl_bspline_greville_abscissa (i::Csize_t, *w::gsl_bspline_workspace)
###     ccall( (:gsl_bspline_greville_abscissa, "libgsl"), Cdouble, (Csize_t,
###         gsl_bspline_workspace), i, *w )
### end