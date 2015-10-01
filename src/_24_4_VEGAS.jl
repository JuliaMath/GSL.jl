#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############
# 24.4 VEGAS #
##############
export monte_vegas_alloc, monte_vegas_init, monte_vegas_integrate,
       monte_vegas_free, monte_vegas_chisq, monte_vegas_runval,
       monte_vegas_params_get, monte_vegas_params_set






# This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.  The workspace is used to maintain the state
# of the integration.
# 
#   Returns: Ptr{gsl_monte_vegas_state}
function monte_vegas_alloc(dim::Integer)
    output_ptr = ccall( (:gsl_monte_vegas_alloc, libgsl),
        Ptr{gsl_monte_vegas_state}, (Csize_t, ), dim )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
@vectorize_1arg Number monte_vegas_alloc


# This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
#   Returns: Cint
function monte_vegas_init(s::Ptr{gsl_monte_vegas_state})
    errno = ccall( (:gsl_monte_vegas_init, libgsl), Cint,
        (Ptr{gsl_monte_vegas_state}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
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
function monte_vegas_integrate(xl::Real)
    f = convert(Ptr{gsl_monte_function}, Array(gsl_monte_function, 1))
    errno = ccall( (:gsl_monte_vegas_integrate, libgsl), Cint,
        (Ptr{gsl_monte_function}, Cdouble), f, xl )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(f)
end
@vectorize_1arg Number monte_vegas_integrate


# This function frees the memory associated with the integrator state s.
# 
#   Returns: Void
function monte_vegas_free(s::Ptr{gsl_monte_vegas_state})
    ccall( (:gsl_monte_vegas_free, libgsl), Void,
        (Ptr{gsl_monte_vegas_state}, ), s )
end


# This function returns the chi-squared per degree of freedom for the weighted
# estimate of the integral.  The returned value should be close to 1.  A value
# which differs significantly from 1 indicates that the values from different
# iterations are inconsistent.  In this case the weighted error will be under-
# estimated, and further iterations of the algorithm are needed to obtain
# reliable results.
# 
#   Returns: Cdouble
function monte_vegas_chisq(s::Ptr{gsl_monte_vegas_state})
    ccall( (:gsl_monte_vegas_chisq, libgsl), Cdouble,
        (Ptr{gsl_monte_vegas_state}, ), s )
end


# This function returns the raw (unaveraged) values of the integral result and
# its error sigma from the most recent iteration of the algorithm.
# 
#   Returns: Void
function monte_vegas_runval(s::Ptr{gsl_monte_vegas_state})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    sigma = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_monte_vegas_runval, libgsl), Void,
        (Ptr{gsl_monte_vegas_state}, Ptr{Cdouble}, Ptr{Cdouble}), s, result,
        sigma )
    return result[], unsafe_load(sigma)
end


# This function copies the parameters of the integrator state into the user-
# supplied params structure.
# 
#   Returns: Void
function monte_vegas_params_get(s::Ptr{gsl_monte_vegas_state})
    params = convert(Ptr{gsl_monte_vegas_params}, Array(gsl_monte_vegas_params, 1))
    ccall( (:gsl_monte_vegas_params_get, libgsl), Void,
        (Ptr{gsl_monte_vegas_state}, Ptr{gsl_monte_vegas_params}), s, params )
    return unsafe_load(params)
end


# This function sets the integrator parameters based on values provided in the
# params structure.
# 
#   Returns: Void
function monte_vegas_params_set(s::Ptr{gsl_monte_vegas_state}, params::Ptr{gsl_monte_vegas_params})
    ccall( (:gsl_monte_vegas_params_set, libgsl), Void,
        (Ptr{gsl_monte_vegas_state}, Ptr{gsl_monte_vegas_params}), s, params )
end
