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
       gsl_monte_miser_params_set








# This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.  The workspace is used to maintain the state
# of the integration.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_monte_miser_state}
#XXX Coerced type for output Ptr{Void}
function gsl_monte_miser_alloc (dim::Csize_t)
    ccall( (:gsl_monte_miser_alloc, "libgsl"), Ptr{Void}, (Csize_t, ), dim
        )
end


# This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_monte_miser_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_miser_init (s::Ptr{Void})
    ccall( (:gsl_monte_miser_init, "libgsl"), Cint, (Ptr{Void}, ), s )
end


# This routines uses the miser Monte Carlo algorithm to integrate the function
# f over the dim-dimensional hypercubic region defined by the lower and upper
# limits in the arrays xl and xu, each of size dim.  The integration uses a
# fixed number of function calls calls, and obtains random sampling points
# using the random number generator r. A previously allocated workspace s must
# be supplied.  The result of the integration is returned in result, with an
# estimated absolute error abserr.
# 
#   Returns: Cint
function gsl_monte_miser_integrate (f::Ptr{gsl_monte_function}, xl::Cdouble)
    ccall( (:gsl_monte_miser_integrate, "libgsl"), Cint,
        (Ptr{gsl_monte_function}, Cdouble), f, xl )
end


# This function frees the memory associated with the integrator state s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_miser_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_miser_free (s::Ptr{Void})
    ccall( (:gsl_monte_miser_free, "libgsl"), Void, (Ptr{Void}, ), s )
end


# This function copies the parameters of the integrator state into the user-
# supplied params structure.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_miser_state}
#XXX Coerced type for s::Ptr{Void}
#XXX Unknown input type params::Ptr{gsl_monte_miser_params}
#XXX Coerced type for params::Ptr{Void}
function gsl_monte_miser_params_get (s::Ptr{Void}, params::Ptr{Void})
    ccall( (:gsl_monte_miser_params_get, "libgsl"), Void, (Ptr{Void},
        Ptr{Void}), s, params )
end


# This function sets the integrator parameters based on values provided in the
# params structure.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_miser_state}
#XXX Coerced type for s::Ptr{Void}
#XXX Unknown input type params::Ptr{gsl_monte_miser_params}
#XXX Coerced type for params::Ptr{Void}
function gsl_monte_miser_params_set (s::Ptr{Void}, params::Ptr{Void})
    ccall( (:gsl_monte_miser_params_set, "libgsl"), Void, (Ptr{Void},
        Ptr{Void}), s, params )
end
