#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 24.2 PLAIN Monte Carlo #
##########################
export monte_plain_alloc, monte_plain_init, monte_plain_integrate,
       monte_plain_free






# This function allocates and initializes a workspace for Monte Carlo
# integration in dim dimensions.
# 
#   Returns: Ptr{gsl_monte_plain_state}
function monte_plain_alloc(dim::Integer)
    output_ptr = ccall( (:gsl_monte_plain_alloc, :libgsl),
        Ptr{gsl_monte_plain_state}, (Csize_t, ), dim )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
@vectorize_1arg Number monte_plain_alloc


# This function initializes a previously allocated integration state.  This
# allows an existing workspace to be reused for different integrations.
# 
#   Returns: Cint
function monte_plain_init(s::Ptr{gsl_monte_plain_state})
    errno = ccall( (:gsl_monte_plain_init, :libgsl), Cint,
        (Ptr{gsl_monte_plain_state}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This routines uses the plain Monte Carlo algorithm to integrate the function
# f over the dim-dimensional hypercubic region defined by the lower and upper
# limits in the arrays xl and xu, each of size dim.  The integration uses a
# fixed number of function calls calls, and obtains random sampling points
# using the random number generator r. A previously allocated workspace s must
# be supplied.  The result of the integration is returned in result, with an
# estimated absolute error abserr.
# 
#   Returns: Cint
function monte_plain_integrate(xl::Real)
    f = convert(Ptr{gsl_monte_function}, Array(gsl_monte_function, 1))
    errno = ccall( (:gsl_monte_plain_integrate, :libgsl), Cint,
        (Ptr{gsl_monte_function}, Cdouble), f, xl )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(f)
end
@vectorize_1arg Number monte_plain_integrate


# This function frees the memory associated with the integrator state s.
# 
#   Returns: Void
function monte_plain_free(s::Ptr{gsl_monte_plain_state})
    ccall( (:gsl_monte_plain_free, :libgsl), Void,
        (Ptr{gsl_monte_plain_state}, ), s )
end
