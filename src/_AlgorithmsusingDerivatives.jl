#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 35.6 Algorithms using Derivatives #
#####################################
export gsl_multiroot_fdfsolver_hybridsj, gsl_multiroot_fdfsolver_hybridsj,
       gsl_multiroot_fdfsolver_hybridj, gsl_multiroot_fdfsolver_newton,
       gsl_multiroot_fdfsolver_gnewton


# This is a modified version of Powell's Hybrid method as implemented in the
# hybrj algorithm in minpack.  Minpack was written by Jorge J. Moré, Burton S.
# Garbow and Kenneth E. Hillstrom.  The Hybrid algorithm retains the fast
# convergence of Newton's method but will also reduce the residual when
# Newton's method is unreliable.          The algorithm uses a generalized
# trust region to keep each step under control.  In order to be accepted a
# proposed new position x' must satisfy the condition |D (x' - x)| < \delta,
# where D is a diagonal scaling matrix and \delta is the size of the trust
# region.  The components of D are computed internally, using the column norms
# of the Jacobian to estimate the sensitivity of the residual to each component
# of x.  This improves the behavior of the algorithm for badly scaled
# functions.          On each iteration the algorithm first determines the
# standard Newton step by solving the system J dx = - f.  If this step falls
# inside the trust region it is used as a trial step in the next stage.  If
# not, the algorithm uses the linear combination of the Newton and gradient
# directions which is predicted to minimize the norm of the function while
# staying inside the trust region,                 dx = - \alpha J^{-1} f(x) -
# \beta \nabla |f(x)|^2.  This combination of Newton and gradient directions is
# referred to as a dogleg step.          The proposed step is now tested by
# evaluating the function at the resulting point, x'.  If the step reduces the
# norm of the function sufficiently then it is accepted and size of the trust
# region is increased.  If the proposed step fails to improve the solution then
# the size of the trust region is decreased and another trial step is computed.
# The speed of the algorithm is increased by computing the changes to the
# Jacobian approximately, using a rank-1 update.  If two successive attempts
# fail to reduce the residual then the full Jacobian is recomputed.  The
# algorithm also monitors the progress of the solution and returns an error if
# several steps fail to make any improvement,             GSL_ENOPROGthe
# iteration is not making any progress, preventing the algorithm from
# continuing.            GSL_ENOPROGJre-evaluations of the Jacobian indicate
# that the iteration is not making any progress, preventing the algorithm from
# continuing.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fdfsolver_hybridsj ()
    ccall( (:gsl_multiroot_fdfsolver_hybridsj, "libgsl"), , () )
end


# This algorithm is an unscaled version of hybridsj.  The steps are controlled
# by a spherical trust region |x' - x| < \delta, instead of a generalized
# region.  This can be useful if the generalized region estimated by hybridsj
# is inappropriate.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fdfsolver_hybridsj ()
    ccall( (:gsl_multiroot_fdfsolver_hybridsj, "libgsl"), , () )
end


# This algorithm is an unscaled version of hybridsj.  The steps are controlled
# by a spherical trust region |x' - x| < \delta, instead of a generalized
# region.  This can be useful if the generalized region estimated by hybridsj
# is inappropriate.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fdfsolver_hybridj ()
    ccall( (:gsl_multiroot_fdfsolver_hybridj, "libgsl"), , () )
end


#  Newton's Method is the standard root-polishing algorithm.  The algorithm
# begins with an initial guess for the location of the solution.  On each
# iteration a linear approximation to the function F is used to estimate the
# step which will zero all the components of the residual.  The iteration is
# defined by the following sequence,                 x -> x' = x - J^{-1} f(x)
# where the Jacobian matrix J is computed from the derivative functions
# provided by f.  The step dx is obtained by solving the linear system,
# J dx = - f(x)  using LU decomposition.  If the Jacobian matrix is singular,
# an error code of GSL_EDOM is returned.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fdfsolver_newton ()
    ccall( (:gsl_multiroot_fdfsolver_newton, "libgsl"), , () )
end


# This is a modified version of Newton's method which attempts to improve
# global convergence by requiring every step to reduce the Euclidean norm of
# the residual, |f(x)|.  If the Newton step leads to an increase in the norm
# then a reduced step of relative size,                 t = (\sqrt(1 + 6 r) -
# 1) / (3 r)  is proposed, with r being the ratio of norms |f(x')|^2/|f(x)|^2.
# This procedure is repeated until a suitable step size is found.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_fdfsolver_gnewton ()
    ccall( (:gsl_multiroot_fdfsolver_gnewton, "libgsl"), , () )
end