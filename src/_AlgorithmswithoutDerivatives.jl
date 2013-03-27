#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 35.7 Algorithms without Derivatives #
#######################################
export gsl_multiroot_fsolver_hybrids, gsl_multiroot_fsolver_hybrid,
       gsl_multiroot_fsolver_dnewton, gsl_multiroot_fsolver_broyden


# This is a version of the Hybrid algorithm which replaces calls to the
# Jacobian function by its finite difference approximation.  The finite
# difference approximation is computed using gsl_multiroots_fdjac with a
# relative step size of GSL_SQRT_DBL_EPSILON.  Note that this step size will
# not be suitable for all problems.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fsolver_hybrids ()
    ccall( (:gsl_multiroot_fsolver_hybrids, "libgsl"), , () )
end


# This is a finite difference version of the Hybrid algorithm without internal
# scaling.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fsolver_hybrid ()
    ccall( (:gsl_multiroot_fsolver_hybrid, "libgsl"), , () )
end


#  The discrete Newton algorithm is the simplest method of solving a
# multidimensional system.  It uses the Newton iteration                 x -> x
# - J^{-1} f(x)  where the Jacobian matrix J is approximated by taking finite
# differences of the function f.  The approximation scheme used by this
# implementation is,                 J_{ij} = (f_i(x + \delta_j) - f_i(x)) /
# \delta_j  where \delta_j is a step of size \sqrt\epsilon |x_j| with \epsilon
# being the machine precision ( \epsilon \approx 2.22 \times 10^-16).  The
# order of convergence of Newton's algorithm is quadratic, but the finite
# differences require n^2 function evaluations on each iteration.  The
# algorithm may become unstable if the finite differences are not a good
# approximation to the true derivatives.
# 
#   {$\epsilon \approx 2.22 \times 10^{-16}$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fsolver_dnewton ()
    ccall( (:gsl_multiroot_fsolver_dnewton, "libgsl"), , () )
end


#  The Broyden algorithm is a version of the discrete Newton algorithm which
# attempts to avoids the expensive update of the Jacobian matrix on each
# iteration.  The changes to the Jacobian are also approximated, using a rank-1
# update,                 J^{-1} \to J^{-1} - (J^{-1} df - dx) dx^T J^{-1} /
# dx^T J^{-1} df  where the vectors dx and df are the changes in x and f.  On
# the first iteration the inverse Jacobian is estimated using finite
# differences, as in the discrete Newton algorithm.          This approximation
# gives a fast update but is unreliable if the changes are not small, and the
# estimate of the inverse Jacobian becomes worse as time passes.  The algorithm
# has a tendency to become unstable unless it starts close to the root.  The
# Jacobian is refreshed if this instability is detected (consult the source for
# details).          This algorithm is included only for demonstration
# purposes, and is not recommended for serious use.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fsolver_broyden ()
    ccall( (:gsl_multiroot_fsolver_broyden, "libgsl"), , () )
end