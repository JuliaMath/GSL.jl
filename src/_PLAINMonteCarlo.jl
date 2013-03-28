#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 24.2 PLAIN Monte Carlo #
##########################
export gsl_monte_plain_alloc, gsl_monte_plain_init, gsl_monte_plain_integrate,
       gsl_monte_plain_free


### Function uses unknown type; disabled
### # This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.
# 
### #   Returns: Ptr{gsl_monte_plain_state}
### #XXX Unknown output type Ptr{gsl_monte_plain_state}
### function gsl_monte_plain_alloc (dim::Csize_t)
###     ccall( (:gsl_monte_plain_alloc, "libgsl"), Ptr{gsl_monte_plain_state},
###         (Csize_t, ), dim )
### end


### Function uses unknown type; disabled
### # This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_monte_plain_state}
### function gsl_monte_plain_init (s::Ptr{gsl_monte_plain_state})
###     ccall( (:gsl_monte_plain_init, "libgsl"), Cint,
###         (Ptr{gsl_monte_plain_state}, ), s )
### end


### Function uses unknown type; disabled
### # This routines uses the plain Monte Carlo algorithm to integrate the function
# f over the dim-dimensional hypercubic region defined by the lower and upper
# limits in the arrays xl and xu, each of size dim.  The integration uses a
# fixed number of function calls calls, and obtains random sampling points
# using the random number generator r. A previously allocated workspace s must
# be supplied.  The result of the integration is returned in result, with an
# estimated absolute error abserr.
# 
### #   Returns: Cint
### #XXX Unknown input type f::Ptr{gsl_monte_function}
### function gsl_monte_plain_integrate (f::Ptr{gsl_monte_function}, xl::Cdouble)
###     ccall( (:gsl_monte_plain_integrate, "libgsl"), Cint,
###         (Ptr{gsl_monte_function}, Cdouble), f, xl )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the integrator state s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_monte_plain_state}
### function gsl_monte_plain_free (s::Ptr{gsl_monte_plain_state})
###     ccall( (:gsl_monte_plain_free, "libgsl"), Void,
###         (Ptr{gsl_monte_plain_state}, ), s )
### end