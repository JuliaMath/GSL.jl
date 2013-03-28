#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 38.6 Minimization Algorithms using Derivatives #
##################################################
#############
# Footnotes #
#############
export gsl_multifit_fdfsolver_lmsder, gsl_multifit_fdfsolver_lmsder,
       gsl_multifit_fdfsolver_lmsder, gsl_multifit_fdfsolver_lmsder,
       gsl_multifit_fdfsolver_lmder


### Function uses unknown type; disabled
### # This is a robust and efficient version of the Levenberg-Marquardt algorithm
# as implemented in the scaled lmder routine in minpack.  Minpack was written
# by Jorge J. Moré, Burton S. Garbow and Kenneth E. Hillstrom.          The
# algorithm uses a generalized trust region to keep each step under control.
# In order to be accepted a proposed new position x' must satisfy the condition
# |D (x' - x)| < \delta, where D is a diagonal scaling matrix and \delta is the
# size of the trust region.  The components of D are computed internally, using
# the column norms of the Jacobian to estimate the sensitivity of the residual
# to each component of x.  This improves the behavior of the algorithm for
# badly scaled functions.          On each iteration the algorithm attempts to
# minimize the linear system |F + J p| subject to the constraint |D p| <
# \Delta.  The solution to this constrained linear system is found using the
# Levenberg-Marquardt method.          The proposed step is now tested by
# evaluating the function at the resulting point, x'.  If the step reduces the
# norm of the function sufficiently, and follows the predicted behavior of the
# function within the trust region, then it is accepted and the size of the
# trust region is increased.  If the proposed step fails to improve the
# solution, or differs significantly from the expected behavior within the
# trust region, then the size of the trust region is decreased and another
# trial step is computed.          The algorithm also monitors the progress of
# the solution and returns an error if the changes in the solution are smaller
# than the machine precision.  The possible error codes are,
# GSL_ETOLFthe decrease in the function falls below machine precision
# GSL_ETOLXthe change in the position vector falls below machine precision
# GSL_ETOLGthe norm of the gradient, relative to the norm of the function,
# falls below machine precision            GSL_ENOPROGthe routine has made 10
# or more attempts to find a suitable trial step without success (but
# subsequent calls can be made to continue the search).1  These error codes
# indicate that further iterations will be unlikely to change the solution from
# its current value.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multifit_fdfsolver_lmsder ()
###     ccall( (:gsl_multifit_fdfsolver_lmsder, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is an unscaled version of the lmder algorithm.  The elements of the
# diagonal scaling matrix D are set to 1.  This algorithm may be useful in
# circumstances where the scaled version of lmder converges too slowly, or the
# function is already scaled appropriately.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multifit_fdfsolver_lmsder ()
###     ccall( (:gsl_multifit_fdfsolver_lmsder, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is an unscaled version of the lmder algorithm.  The elements of the
# diagonal scaling matrix D are set to 1.  This algorithm may be useful in
# circumstances where the scaled version of lmder converges too slowly, or the
# function is already scaled appropriately.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multifit_fdfsolver_lmsder ()
###     ccall( (:gsl_multifit_fdfsolver_lmsder, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is an unscaled version of the lmder algorithm.  The elements of the
# diagonal scaling matrix D are set to 1.  This algorithm may be useful in
# circumstances where the scaled version of lmder converges too slowly, or the
# function is already scaled appropriately.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multifit_fdfsolver_lmsder ()
###     ccall( (:gsl_multifit_fdfsolver_lmsder, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is an unscaled version of the lmder algorithm.  The elements of the
# diagonal scaling matrix D are set to 1.  This algorithm may be useful in
# circumstances where the scaled version of lmder converges too slowly, or the
# function is already scaled appropriately.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multifit_fdfsolver_lmder ()
###     ccall( (:gsl_multifit_fdfsolver_lmder, "libgsl"), , () )
### end