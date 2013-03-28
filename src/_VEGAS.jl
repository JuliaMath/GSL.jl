#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############
# 24.4 VEGAS #
##############
export gsl_monte_vegas_alloc, gsl_monte_vegas_init, gsl_monte_vegas_integrate,
       gsl_monte_vegas_free, gsl_monte_vegas_chisq, gsl_monte_vegas_runval,
       gsl_monte_vegas_params_get, gsl_monte_vegas_params_set, alpha,
       iterations, stage, mode, verbose, ostream


### Function uses unknown type; disabled
### # This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.  The workspace is used to maintain the state
# of the integration.
# 
### #   Returns: Ptr{gsl_monte_vegas_state}
### #XXX Unknown output type Ptr{gsl_monte_vegas_state}
### function gsl_monte_vegas_alloc (dim::Csize_t)
###     ccall( (:gsl_monte_vegas_alloc, "libgsl"), Ptr{gsl_monte_vegas_state},
###         (Csize_t, ), dim )
### end


### Function uses unknown type; disabled
### # This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### function gsl_monte_vegas_init (s::Ptr{gsl_monte_vegas_state})
###     ccall( (:gsl_monte_vegas_init, "libgsl"), Cint,
###         (Ptr{gsl_monte_vegas_state}, ), s )
### end


### Function uses unknown type; disabled
### # This routines uses the vegas Monte Carlo algorithm to integrate the function
# f over the dim-dimensional hypercubic region defined by the lower and upper
# limits in the arrays xl and xu, each of size dim.  The integration uses a
# fixed number of function calls calls, and obtains random sampling points
# using the random number generator r. A previously allocated workspace s must
# be supplied.  The result of the integration is returned in result, with an
# estimated absolute error abserr.  The result and its error estimate are based
# on a weighted average of independent samples. The chi-squared per degree of
# freedom for the weighted average is returned via the state struct component,
# s->chisq, and must be consistent with 1 for the weighted average to be
# reliable.
# 
### #   Returns: Cint
### #XXX Unknown input type f::Ptr{gsl_monte_function}
### function gsl_monte_vegas_integrate (f::Ptr{gsl_monte_function}, xl::Cdouble)
###     ccall( (:gsl_monte_vegas_integrate, "libgsl"), Cint,
###         (Ptr{gsl_monte_function}, Cdouble), f, xl )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the integrator state s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### function gsl_monte_vegas_free (s::Ptr{gsl_monte_vegas_state})
###     ccall( (:gsl_monte_vegas_free, "libgsl"), Void,
###         (Ptr{gsl_monte_vegas_state}, ), s )
### end


### Function uses unknown type; disabled
### # This function returns the chi-squared per degree of freedom for the weighted
# estimate of the integral.  The returned value should be close to 1.  A value
# which differs significantly from 1 indicates that the values from different
# iterations are inconsistent.  In this case the weighted error will be under-
# estimated, and further iterations of the algorithm are needed to obtain
# reliable results.
# 
### #   Returns: Cdouble
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### function gsl_monte_vegas_chisq (s::Ptr{gsl_monte_vegas_state})
###     ccall( (:gsl_monte_vegas_chisq, "libgsl"), Cdouble,
###         (Ptr{gsl_monte_vegas_state}, ), s )
### end


### Function uses unknown type; disabled
### # This function returns the raw (unaveraged) values of the integral result and
# its error sigma from the most recent iteration of the algorithm.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### function gsl_monte_vegas_runval (s::Ptr{gsl_monte_vegas_state}, result::Ptr{Cdouble}, sigma::Ptr{Cdouble})
###     ccall( (:gsl_monte_vegas_runval, "libgsl"), Void,
###         (Ptr{gsl_monte_vegas_state}, Ptr{Cdouble}, Ptr{Cdouble}), s, result,
###         sigma )
### end


### Function uses unknown type; disabled
### # This function copies the parameters of the integrator state into the user-
# supplied params structure.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### #XXX Unknown input type params::Ptr{gsl_monte_vegas_params}
### function gsl_monte_vegas_params_get (s::Ptr{gsl_monte_vegas_state}, params::Ptr{gsl_monte_vegas_params})
###     ccall( (:gsl_monte_vegas_params_get, "libgsl"), Void,
###         (Ptr{gsl_monte_vegas_state}, Ptr{gsl_monte_vegas_params}), s, params )
### end


### Function uses unknown type; disabled
### # This function sets the integrator parameters based on values provided in the
# params structure.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
### #XXX Unknown input type params::Ptr{gsl_monte_vegas_params}
### function gsl_monte_vegas_params_set (s::Ptr{gsl_monte_vegas_state}, params::Ptr{gsl_monte_vegas_params})
###     ccall( (:gsl_monte_vegas_params_set, "libgsl"), Void,
###         (Ptr{gsl_monte_vegas_state}, Ptr{gsl_monte_vegas_params}), s, params )
### end


# The parameter alpha controls the stiffness of the rebinning algorithm.  It is
# typically set between one and two. A value of zero prevents rebinning of the
# grid.  The default value is 1.5.
# 
#   Returns: Cdouble
function alpha ()
    ccall( (:alpha, "libgsl"), Cdouble, () )
end


# The number of iterations to perform for each call to the routine. The default
# value is 5 iterations.
# 
#   Returns: Csize_t
function iterations ()
    ccall( (:iterations, "libgsl"), Csize_t, () )
end


# Setting this determines the stage of the calculation.  Normally, stage = 0
# which begins with a new uniform grid and empty weighted average.  Calling
# vegas with stage = 1 retains the grid from the previous run but discards the
# weighted average, so that one can “tune” the grid using a relatively small
# number of points and then do a large run with stage = 1 on the optimized
# grid.  Setting stage = 2 keeps the grid and the weighted average from the
# previous run, but may increase (or decrease) the number of histogram bins in
# the grid depending on the number of calls available.  Choosing stage = 3
# enters at the main loop, so that nothing is changed, and is equivalent to
# performing additional iterations in a previous call.
# 
#   Returns: Cint
function stage ()
    ccall( (:stage, "libgsl"), Cint, () )
end


# The possible choices are GSL_VEGAS_MODE_IMPORTANCE,
# GSL_VEGAS_MODE_STRATIFIED, GSL_VEGAS_MODE_IMPORTANCE_ONLY.  This determines
# whether vegas will use importance sampling or stratified sampling, or whether
# it can pick on its own.  In low dimensions vegas uses strict stratified
# sampling (more precisely, stratified sampling is chosen if there are fewer
# than 2 bins per box).
# 
#   Returns: Cint
function mode ()
    ccall( (:mode, "libgsl"), Cint, () )
end


# These parameters set the level of information printed by vegas. All
# information is written to the stream ostream.  The default setting of verbose
# is -1, which turns off all output.  A verbose value of 0 prints summary
# information about the weighted average and final result, while a value of 1
# also displays the grid coordinates.  A value of 2 prints information from the
# rebinning procedure for each iteration.
# 
#   Returns: Cint
function verbose ()
    ccall( (:verbose, "libgsl"), Cint, () )
end


### Function uses unknown type; disabled
### # These parameters set the level of information printed by vegas. All
# information is written to the stream ostream.  The default setting of verbose
# is -1, which turns off all output.  A verbose value of 0 prints summary
# information about the weighted average and final result, while a value of 1
# also displays the grid coordinates.  A value of 2 prints information from the
# rebinning procedure for each iteration.
# 
### #   Returns: Ptr{FILE}
### #XXX Unknown output type Ptr{FILE}
### function ostream ()
###     ccall( (:ostream, "libgsl"), Ptr{FILE}, () )
### end