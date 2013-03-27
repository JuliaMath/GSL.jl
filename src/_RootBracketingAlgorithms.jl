#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 33.8 Root Bracketing Algorithms #
###################################
export gsl_root_fsolver_bisection, gsl_root_fsolver_falsepos,
       gsl_root_fsolver_brent


#  The bisection algorithm is the simplest method of bracketing the roots of a
# function.   It is the slowest algorithm provided by the library, with linear
# convergence.          On each iteration, the interval is bisected and the
# value of the function at the midpoint is calculated.  The sign of this value
# is used to determine which half of the interval does not contain a root.
# That half is discarded to give a new, smaller interval containing the root.
# This procedure can be continued indefinitely until the interval is
# sufficiently small.          At any time the current estimate of the root is
# taken as the midpoint of the interval.
# 
#   eps file "roots-bisection.eps" 
#   @iftex 
#   @sp 1 
#   @center @image{roots-bisection,3.4in} 
#   @quotation 
#   Four iterations of bisection, where @math{a_n} is @math{n}th position of 
#   the beginning of the interval and @math{b_n} is the @math{n}th position 
#   of the end.  The midpoint of each interval is also indicated. 
#   @end quotation 
#   @end iftex 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fsolver_bisection ()
    ccall( (:gsl_root_fsolver_bisection, "libgsl"), , () )
end


#  The false position algorithm is a method of finding roots based on linear
# interpolation.  Its convergence is linear, but it is usually faster than
# bisection.          On each iteration a line is drawn between the endpoints
# (a,f(a)) and (b,f(b)) and the point where this line crosses the x-axis taken
# as a “midpoint”.  The value of the function at this point is calculated and
# its sign is used to determine which side of the interval does not contain a
# root.  That side is discarded to give a new, smaller interval containing the
# root.  This procedure can be continued indefinitely until the interval is
# sufficiently small.          The best estimate of the root is taken from the
# linear interpolation of the interval on the current iteration.
# 
#   eps file "roots-false-position.eps" 
#   @iftex 
#   @image{roots-false-position,4in} 
#   @quotation 
#   Several iterations of false position, where @math{a_n} is @math{n}th 
#   position of the beginning of the interval and @math{b_n} is the 
#   @math{n}th position of the end. 
#   @end quotation 
#   @end iftex 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fsolver_falsepos ()
    ccall( (:gsl_root_fsolver_falsepos, "libgsl"), , () )
end


#  The Brent-Dekker method (referred to here as Brent's method) combines an
# interpolation strategy with the bisection algorithm.  This produces a fast
# algorithm which is still robust.          On each iteration Brent's method
# approximates the function using an interpolating curve.  On the first
# iteration this is a linear interpolation of the two endpoints.  For
# subsequent iterations the algorithm uses an inverse quadratic fit to the last
# three points, for higher accuracy.  The intercept of the interpolating curve
# with the x-axis is taken as a guess for the root.  If it lies within the
# bounds of the current interval then the interpolating point is accepted, and
# used to generate a smaller interval.  If the interpolating point is not
# accepted then the algorithm falls back to an ordinary bisection step.
# The best estimate of the root is taken from the most recent interpolation or
# bisection.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fsolver_brent ()
    ccall( (:gsl_root_fsolver_brent, "libgsl"), , () )
end