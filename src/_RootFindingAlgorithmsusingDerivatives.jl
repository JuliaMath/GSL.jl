#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 33.9 Root Finding Algorithms using Derivatives #
##################################################
#############
# Footnotes #
#############
export gsl_root_fdfsolver_newton, gsl_root_fdfsolver_secant,
       gsl_root_fdfsolver_steffenson


#  Newton's Method is the standard root-polishing algorithm.  The algorithm
# begins with an initial guess for the location of the root.  On each
# iteration, a line tangent to the function f is drawn at that position.  The
# point where this line crosses the x-axis becomes the new guess.  The
# iteration is defined by the following sequence,                 x_{i+1} = x_i
# - f(x_i)/f'(x_i)  Newton's method converges quadratically for single roots,
# and linearly for multiple roots.
# 
#   eps file "roots-newtons-method.eps" 
#   @iftex 
#   @sp 1 
#   @center @image{roots-newtons-method,3.4in} 
#   @quotation 
#   Several iterations of Newton's Method, where @math{g_n} is the 
#   @math{n}th guess. 
#   @end quotation 
#   @end iftex 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fdfsolver_newton ()
    ccall( (:gsl_root_fdfsolver_newton, "libgsl"), , () )
end


#  The secant method is a simplified version of Newton's method which does not
# require the computation of the derivative on every step.          On its
# first iteration the algorithm begins with Newton's method, using the
# derivative to compute a first step,                 x_1 = x_0 -
# f(x_0)/f'(x_0)  Subsequent iterations avoid the evaluation of the derivative
# by replacing it with a numerical estimate, the slope of the line through the
# previous two points,                 x_{i+1} = x_i f(x_i) / f'_{est} where
# f'_{est} = (f(x_i) - f(x_{i-1})/(x_i - x_{i-1})  When the derivative does not
# change significantly in the vicinity of the root the secant method gives a
# useful saving.  Asymptotically the secant method is faster than Newton's
# method whenever the cost of evaluating the derivative is more than 0.44 times
# the cost of evaluating the function itself.  As with all methods of computing
# a numerical derivative the estimate can suffer from cancellation errors if
# the separation of the points becomes too small.          On single roots, the
# method has a convergence of order (1 + \sqrt 5)/2 (approximately 1.62).  It
# converges linearly for multiple roots.
# 
#   eps file "roots-secant-method.eps" 
#   @iftex 
#   @tex 
#   \input epsf 
#   \medskip 
#   \centerline{\epsfxsize=5in\epsfbox{roots-secant-method.eps}} 
#   @end tex 
#   @quotation 
#   Several iterations of Secant Method, where @math{g_n} is the @math{n}th 
#   guess. 
#   @end quotation 
#   @end iftex 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fdfsolver_secant ()
    ccall( (:gsl_root_fdfsolver_secant, "libgsl"), , () )
end


#  The Steffenson Method1 provides the fastest convergence of all the routines.
# It combines the basic Newton algorithm with an Aitken “delta-squared”
# acceleration.  If the Newton iterates are x_i then the acceleration procedure
# generates a new sequence R_i,                 R_i = x_i - (x_{i+1} - x_i)^2 /
# (x_{i+2} - 2 x_{i+1} + x_{i})  which converges faster than the original
# sequence under reasonable conditions.  The new sequence requires three terms
# before it can produce its first value so the method returns accelerated
# values on the second and subsequent iterations.  On the first iteration it
# returns the ordinary Newton estimate.  The Newton iterate is also returned if
# the denominator of the acceleration term ever becomes zero.          As with
# all acceleration procedures this method can become unstable if the function
# is not well-behaved.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_root_fdfsolver_steffenson ()
    ccall( (:gsl_root_fdfsolver_steffenson, "libgsl"), , () )
end