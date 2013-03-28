#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############
# 24.3 MISER #
##############
#############
# Footnotes #
#############
export gsl_monte_miser_alloc, gsl_monte_miser_init, gsl_monte_miser_integrate,
       gsl_monte_miser_free, gsl_monte_miser_params_get,
       gsl_monte_miser_params_set, estimate_frac, min_calls,
       min_calls_per_bisection, alpha, dither


### Function uses unknown type; disabled
### # This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.  The workspace is used to maintain the state
# of the integration.
# 
### #   Returns: Ptr{gsl_monte_miser_state}
### #XXX Unknown output type Ptr{gsl_monte_miser_state}
### function gsl_monte_miser_alloc (dim::Csize_t)
###     ccall( (:gsl_monte_miser_alloc, "libgsl"), Ptr{gsl_monte_miser_state},
###         (Csize_t, ), dim )
### end


### Function uses unknown type; disabled
### # This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_monte_miser_state}
### function gsl_monte_miser_init (s::Ptr{gsl_monte_miser_state})
###     ccall( (:gsl_monte_miser_init, "libgsl"), Cint,
###         (Ptr{gsl_monte_miser_state}, ), s )
### end


### Function uses unknown type; disabled
### # This routines uses the miser Monte Carlo algorithm to integrate the function
# f over the dim-dimensional hypercubic region defined by the lower and upper
# limits in the arrays xl and xu, each of size dim.  The integration uses a
# fixed number of function calls calls, and obtains random sampling points
# using the random number generator r. A previously allocated workspace s must
# be supplied.  The result of the integration is returned in result, with an
# estimated absolute error abserr.
# 
### #   Returns: Cint
### #XXX Unknown input type f::Ptr{gsl_monte_function}
### function gsl_monte_miser_integrate (f::Ptr{gsl_monte_function}, xl::Cdouble)
###     ccall( (:gsl_monte_miser_integrate, "libgsl"), Cint,
###         (Ptr{gsl_monte_function}, Cdouble), f, xl )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the integrator state s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_miser_state}
### function gsl_monte_miser_free (s::Ptr{gsl_monte_miser_state})
###     ccall( (:gsl_monte_miser_free, "libgsl"), Void,
###         (Ptr{gsl_monte_miser_state}, ), s )
### end


### Function uses unknown type; disabled
### # This function copies the parameters of the integrator state into the user-
# supplied params structure.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_miser_state}
### #XXX Unknown input type params::Ptr{gsl_monte_miser_params}
### function gsl_monte_miser_params_get (s::Ptr{gsl_monte_miser_state}, params::Ptr{gsl_monte_miser_params})
###     ccall( (:gsl_monte_miser_params_get, "libgsl"), Void,
###         (Ptr{gsl_monte_miser_state}, Ptr{gsl_monte_miser_params}), s, params )
### end


### Function uses unknown type; disabled
### # This function sets the integrator parameters based on values provided in the
# params structure.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_miser_state}
### #XXX Unknown input type params::Ptr{gsl_monte_miser_params}
### function gsl_monte_miser_params_set (s::Ptr{gsl_monte_miser_state}, params::Ptr{gsl_monte_miser_params})
###     ccall( (:gsl_monte_miser_params_set, "libgsl"), Void,
###         (Ptr{gsl_monte_miser_state}, Ptr{gsl_monte_miser_params}), s, params )
### end


# This parameter specifies the fraction of the currently available number of
# function calls which are allocated to estimating the variance at each
# recursive step. The default value is 0.1.
# 
#   Returns: Cdouble
function estimate_frac ()
    ccall( (:estimate_frac, "libgsl"), Cdouble, () )
end


# This parameter specifies the minimum number of function calls required for
# each estimate of the variance. If the number of function calls allocated to
# the estimate using estimate_frac falls below min_calls then min_calls are
# used instead.  This ensures that each estimate maintains a reasonable level
# of accuracy.  The default value of min_calls is 16 * dim.
# 
#   Returns: Csize_t
function min_calls ()
    ccall( (:min_calls, "libgsl"), Csize_t, () )
end


# This parameter specifies the minimum number of function calls required to
# proceed with a bisection step.  When a recursive step has fewer calls
# available than min_calls_per_bisection it performs a plain Monte Carlo
# estimate of the current sub-region and terminates its branch of the
# recursion.  The default value of this parameter is 32 * min_calls.
# 
#   Returns: Csize_t
function min_calls_per_bisection ()
    ccall( (:min_calls_per_bisection, "libgsl"), Csize_t, () )
end


# This parameter controls how the estimated variances for the two sub-regions
# of a bisection are combined when allocating points.  With recursive sampling
# the overall variance should scale better than 1/N, since the values from the
# sub-regions will be obtained using a procedure which explicitly minimizes
# their variance.  To accommodate this behavior the miser algorithm allows the
# total variance to depend on a scaling parameter \alpha,
# \Var(f) = {\sigma_a \over N_a^\alpha} + {\sigma_b \over N_b^\alpha}.  The
# authors of the original paper describing miser recommend the value \alpha = 2
# as a good choice, obtained from numerical experiments, and this is used as
# the default value in this implementation.
# 
#   Returns: Cdouble
function alpha ()
    ccall( (:alpha, "libgsl"), Cdouble, () )
end


# This parameter introduces a random fractional variation of size dither into
# each bisection, which can be used to break the symmetry of integrands which
# are concentrated near the exact center of the hypercubic integration region.
# The default value of dither is zero, so no variation is introduced. If
# needed, a typical value of dither is 0.1.
# 
#   Returns: Cdouble
function dither ()
    ccall( (:dither, "libgsl"), Cdouble, () )
end