#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 34.7 Minimization Algorithms #
################################
export gsl_min_fminimizer_goldensection, gsl_min_fminimizer_brent,
       gsl_min_fminimizer_quad_golden


### Function uses unknown type; disabled
### #  The golden section algorithm is the simplest method of bracketing the
# minimum of a function.  It is the slowest algorithm provided by the library,
# with linear convergence.          On each iteration, the algorithm first
# compares the subintervals from the endpoints to the current minimum.  The
# larger subinterval is divided in a golden section (using the famous ratio
# (3-\sqrt 5)/2 = 0.3189660...) and the value of the function at this new point
# is calculated.  The new value is used with the constraint f(a') > f(x') <
# f(b') to a select new interval containing the minimum, by discarding the
# least useful point.  This procedure can be continued indefinitely until the
# interval is sufficiently small.  Choosing the golden section as the bisection
# ratio can be shown to provide the fastest convergence for this type of
# algorithm.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_min_fminimizer_goldensection ()
###     ccall( (:gsl_min_fminimizer_goldensection, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### #  The Brent minimization algorithm combines a parabolic interpolation with the
# golden section algorithm.  This produces a fast algorithm which is still
# robust.          The outline of the algorithm can be summarized as follows:
# on each iteration Brent's method approximates the function using an
# interpolating parabola through three existing points.  The minimum of the
# parabola is taken as a guess for the minimum.  If it lies within the bounds
# of the current interval then the interpolating point is accepted, and used to
# generate a smaller interval.  If the interpolating point is not accepted then
# the algorithm falls back to an ordinary golden section step.  The full
# details of Brent's method include some additional checks to improve
# convergence.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_min_fminimizer_brent ()
###     ccall( (:gsl_min_fminimizer_brent, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is a variant of Brent's algorithm which uses the safeguarded step-length
# algorithm of Gill and Murray.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_min_fminimizer_quad_golden ()
###     ccall( (:gsl_min_fminimizer_quad_golden, "libgsl"), , () )
### end