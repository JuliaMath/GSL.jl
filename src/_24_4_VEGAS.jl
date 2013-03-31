#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############
# 24.4 VEGAS #
##############
export gsl_monte_vegas_alloc, gsl_monte_vegas_init, gsl_monte_vegas_integrate,
       gsl_monte_vegas_free, gsl_monte_vegas_chisq, gsl_monte_vegas_runval,
       gsl_monte_vegas_params_get, gsl_monte_vegas_params_set






# This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.  The workspace is used to maintain the state
# of the integration.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_monte_vegas_state}
#XXX Coerced type for output Ptr{Void}
function gsl_monte_vegas_alloc{gsl_int<:Integer}(dim::gsl_int)
    ccall( (:gsl_monte_vegas_alloc, :libgsl), Ptr{Void}, (Csize_t, ), dim )
end


# This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_vegas_init(s::Ptr{Void})
    gsl_errno = ccall( (:gsl_monte_vegas_init, :libgsl), Cint, (Ptr{Void},
        ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This routines uses the vegas Monte Carlo algorithm to integrate the function
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
#   Returns: Cint
function gsl_monte_vegas_integrate(xl::Cdouble)
    f = convert(Ptr{gsl_monte_function}, Array(gsl_monte_function, 1))
    gsl_errno = ccall( (:gsl_monte_vegas_integrate, :libgsl), Cint,
        (Ptr{gsl_monte_function}, Cdouble), f, xl )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f)
end


# This function frees the memory associated with the integrator state s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_vegas_free(s::Ptr{Void})
    ccall( (:gsl_monte_vegas_free, :libgsl), Void, (Ptr{Void}, ), s )
end


# This function returns the chi-squared per degree of freedom for the weighted
# estimate of the integral.  The returned value should be close to 1.  A value
# which differs significantly from 1 indicates that the values from different
# iterations are inconsistent.  In this case the weighted error will be under-
# estimated, and further iterations of the algorithm are needed to obtain
# reliable results.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_vegas_chisq(s::Ptr{Void})
    ccall( (:gsl_monte_vegas_chisq, :libgsl), Cdouble, (Ptr{Void}, ), s )
end


# This function returns the raw (unaveraged) values of the integral result and
# its error sigma from the most recent iteration of the algorithm.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
function gsl_monte_vegas_runval(s::Ptr{Void})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    sigma = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_monte_vegas_runval, :libgsl), Void, (Ptr{Void},
        Ptr{Cdouble}, Ptr{Cdouble}), s, result, sigma )
    return unsafe_ref(result) ,unsafe_ref(sigma)
end


# This function copies the parameters of the integrator state into the user-
# supplied params structure.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
#XXX Unknown input type params::Ptr{gsl_monte_vegas_params}
#XXX Coerced type for params::Ptr{Void}
function gsl_monte_vegas_params_get(s::Ptr{Void}, params::Ptr{Void})
    ccall( (:gsl_monte_vegas_params_get, :libgsl), Void, (Ptr{Void},
        Ptr{Void}), s, params )
end


# This function sets the integrator parameters based on values provided in the
# params structure.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_monte_vegas_state}
#XXX Coerced type for s::Ptr{Void}
#XXX Unknown input type params::Ptr{gsl_monte_vegas_params}
#XXX Coerced type for params::Ptr{Void}
function gsl_monte_vegas_params_set(s::Ptr{Void}, params::Ptr{Void})
    ccall( (:gsl_monte_vegas_params_set, :libgsl), Void, (Ptr{Void},
        Ptr{Void}), s, params )
end
