#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 39.3 Constructing the knots vector #
######################################
export gsl_bspline_knots, gsl_bspline_knots_uniform


### Function uses unknown type; disabled
### # This function computes the knots associated with the given breakpoints and
# stores them internally in w->knots.
# 
### #   Returns: Cint
### #XXX Unknown input type breakpts::Ptr{gsl_vector}
### #XXX Unknown input type w::Ptr{gsl_bspline_workspace}
### function gsl_bspline_knots (breakpts::Ptr{gsl_vector}, w::Ptr{gsl_bspline_workspace})
###     ccall( (:gsl_bspline_knots, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_bspline_workspace}), breakpts, w )
### end


### Function uses unknown type; disabled
### # This function assumes uniformly spaced breakpoints on [a,b] and constructs
# the corresponding knot vector using the previously specified nbreak
# parameter. The knots are stored in w->knots.
# 
### #   Returns: Cint
### #XXX Unknown input type w::Ptr{gsl_bspline_workspace}
### function gsl_bspline_knots_uniform (a::Cdouble, b::Cdouble, w::Ptr{gsl_bspline_workspace})
###     ccall( (:gsl_bspline_knots_uniform, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_bspline_workspace}), a, b, w )
### end