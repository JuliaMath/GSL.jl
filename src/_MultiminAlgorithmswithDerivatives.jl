#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 36.7 Algorithms with Derivatives #
####################################
export gsl_multimin_fdfminimizer_conjugate_fr,
       gsl_multimin_fdfminimizer_conjugate_pr,
       gsl_multimin_fdfminimizer_vector_bfgs2,
       gsl_multimin_fdfminimizer_vector_bfgs,
       gsl_multimin_fdfminimizer_steepest_descent


### Function uses unknown type; disabled
### # This is the Fletcher-Reeves conjugate gradient algorithm. The conjugate
# gradient algorithm proceeds as a succession of line minimizations. The
# sequence of search directions is used to build up an approximation to the
# curvature of the function in the neighborhood of the minimum.          An
# initial search direction p is chosen using the gradient, and line
# minimization is carried out in that direction.  The accuracy of the line
# minimization is specified by the parameter tol.  The minimum along this line
# occurs when the function gradient g and the search direction p are
# orthogonal.  The line minimization terminates when  dot(p,g) < tol |p| |g|.
# The search direction is updated  using the Fletcher-Reeves formula p' = g' -
# \beta g where \beta=-|g'|^2/|g|^2, and the line minimization is then repeated
# for the new search direction.
# 
### #   {$p\cdot g < tol |p| |g|$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fdfminimizer_conjugate_fr ()
###     ccall( (:gsl_multimin_fdfminimizer_conjugate_fr, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This is the Polak-Ribiere conjugate gradient algorithm.  It is similar to the
# Fletcher-Reeves method, differing only in the choice of the coefficient
# \beta. Both methods work well when the evaluation point is close enough to
# the minimum of the objective function that it is well approximated by a
# quadratic hypersurface.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fdfminimizer_conjugate_pr ()
###     ccall( (:gsl_multimin_fdfminimizer_conjugate_pr, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These methods use the vector Broyden-Fletcher-Goldfarb-Shanno (BFGS)
# algorithm.  This is a quasi-Newton method which builds up an approximation to
# the second derivatives of the function f using the difference between
# successive gradient vectors.  By combining the first and second derivatives
# the algorithm is able to take Newton-type steps towards the function minimum,
# assuming quadratic behavior in that region.          The bfgs2 version of
# this minimizer is the most efficient version available, and is a faithful
# implementation of the line minimization scheme described in Fletcher's
# Practical Methods of Optimization, Algorithms 2.6.2 and 2.6.4.  It supersedes
# the original bfgs routine and requires substantially fewer function and
# gradient evaluations.  The user-supplied tolerance tol corresponds to the
# parameter \sigma used by Fletcher.  A value of 0.1 is recommended for typical
# use (larger values correspond to less accurate line searches).
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fdfminimizer_vector_bfgs2 ()
###     ccall( (:gsl_multimin_fdfminimizer_vector_bfgs2, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These methods use the vector Broyden-Fletcher-Goldfarb-Shanno (BFGS)
# algorithm.  This is a quasi-Newton method which builds up an approximation to
# the second derivatives of the function f using the difference between
# successive gradient vectors.  By combining the first and second derivatives
# the algorithm is able to take Newton-type steps towards the function minimum,
# assuming quadratic behavior in that region.          The bfgs2 version of
# this minimizer is the most efficient version available, and is a faithful
# implementation of the line minimization scheme described in Fletcher's
# Practical Methods of Optimization, Algorithms 2.6.2 and 2.6.4.  It supersedes
# the original bfgs routine and requires substantially fewer function and
# gradient evaluations.  The user-supplied tolerance tol corresponds to the
# parameter \sigma used by Fletcher.  A value of 0.1 is recommended for typical
# use (larger values correspond to less accurate line searches).
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fdfminimizer_vector_bfgs ()
###     ccall( (:gsl_multimin_fdfminimizer_vector_bfgs, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # The steepest descent algorithm follows the downhill gradient of the function
# at each step. When a downhill step is successful the step-size is increased
# by a factor of two.  If the downhill step leads to a higher function value
# then the algorithm backtracks and the step size is decreased using the
# parameter tol.  A suitable value of tol for most applications is 0.1.  The
# steepest descent method is inefficient and is included only for demonstration
# purposes.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fdfminimizer_steepest_descent ()
###     ccall( (:gsl_multimin_fdfminimizer_steepest_descent, "libgsl"), , () )
### end