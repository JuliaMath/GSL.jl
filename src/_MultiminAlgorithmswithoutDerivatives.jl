#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 36.8 Algorithms without Derivatives #
#######################################
export gsl_multimin_fminimizer_nmsimplex2, gsl_multimin_fminimizer_nmsimplex,
       gsl_multimin_fminimizer_nmsimplex2rand


### Function uses unknown type; disabled
### # These methods use the Simplex algorithm of Nelder and Mead.  Starting from
# the initial vector x = p_0, the algorithm constructs an additional n vectors
# p_i using the step size vector  s = step_size as follows:                 p_0
# = (x_0, x_1, ... , x_n)           p_1 = (x_0 + s_0, x_1, ... , x_n)
# p_2 = (x_0, x_1 + s_1, ... , x_n)           ... = ...           p_n = (x_0,
# x_1, ... , x_n + s_n)  These vectors form the n+1 vertices of a simplex in n
# dimensions.  On each iteration the algorithm uses simple geometrical
# transformations to update the vector corresponding to the highest function
# value.  The geometric transformations are reflection, reflection followed by
# expansion, contraction and multiple contraction.  Using these transformations
# the simplex moves through the space towards the minimum, where it contracts
# itself.          After each iteration, the best vertex is returned.  Note,
# that due to the nature of the algorithm not every step improves the current
# best parameter vector.  Usually several iterations are required.          The
# minimizer-specific characteristic size is calculated as the average distance
# from the geometrical center of the simplex to all its vertices.  This size
# can be used as a stopping criteria, as the simplex contracts itself near the
# minimum. The size is returned by the function gsl_multimin_fminimizer_size.
# The nmsimplex2 version of this minimiser is a new O(N) operations
# implementation of the earlier O(N^2) operations nmsimplex minimiser.  It uses
# the same underlying algorithm, but the simplex updates are computed more
# efficiently for high-dimensional problems.  In addition, the size of simplex
# is calculated as the rms distance of each vertex from the center rather than
# the mean distance, allowing a linear update of this quantity on each step.
# The memory usage is O(N^2) for both algorithms.
# 
### #   {$s = \var{step\_size}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fminimizer_nmsimplex2 ()
###     ccall( (:gsl_multimin_fminimizer_nmsimplex2, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # These methods use the Simplex algorithm of Nelder and Mead.  Starting from
# the initial vector x = p_0, the algorithm constructs an additional n vectors
# p_i using the step size vector  s = step_size as follows:                 p_0
# = (x_0, x_1, ... , x_n)           p_1 = (x_0 + s_0, x_1, ... , x_n)
# p_2 = (x_0, x_1 + s_1, ... , x_n)           ... = ...           p_n = (x_0,
# x_1, ... , x_n + s_n)  These vectors form the n+1 vertices of a simplex in n
# dimensions.  On each iteration the algorithm uses simple geometrical
# transformations to update the vector corresponding to the highest function
# value.  The geometric transformations are reflection, reflection followed by
# expansion, contraction and multiple contraction.  Using these transformations
# the simplex moves through the space towards the minimum, where it contracts
# itself.          After each iteration, the best vertex is returned.  Note,
# that due to the nature of the algorithm not every step improves the current
# best parameter vector.  Usually several iterations are required.          The
# minimizer-specific characteristic size is calculated as the average distance
# from the geometrical center of the simplex to all its vertices.  This size
# can be used as a stopping criteria, as the simplex contracts itself near the
# minimum. The size is returned by the function gsl_multimin_fminimizer_size.
# The nmsimplex2 version of this minimiser is a new O(N) operations
# implementation of the earlier O(N^2) operations nmsimplex minimiser.  It uses
# the same underlying algorithm, but the simplex updates are computed more
# efficiently for high-dimensional problems.  In addition, the size of simplex
# is calculated as the rms distance of each vertex from the center rather than
# the mean distance, allowing a linear update of this quantity on each step.
# The memory usage is O(N^2) for both algorithms.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fminimizer_nmsimplex ()
###     ccall( (:gsl_multimin_fminimizer_nmsimplex, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This method is a variant of nmsimplex2 which initialises the simplex around
# the starting point x using a randomly-oriented set of basis vectors instead
# of the fixed coordinate axes. The final dimensions of the simplex are scaled
# along the coordinate axes by the vector step_size.  The randomisation uses a
# simple deterministic generator so that repeated calls to
# gsl_multimin_fminimizer_set for a given solver object will vary the
# orientation in a well-defined way.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_multimin_fminimizer_nmsimplex2rand ()
###     ccall( (:gsl_multimin_fminimizer_nmsimplex2rand, "libgsl"), , () )
### end