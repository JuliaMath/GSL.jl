#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 26.2 Stepping Functions #
###########################
export gsl_odeiv2_step_alloc, gsl_odeiv2_step_reset, gsl_odeiv2_step_free,
       gsl_odeiv2_step_name, gsl_odeiv2_step_order, gsl_odeiv2_step_set_driver,
       gsl_odeiv2_step_apply




# This function returns a pointer to a newly allocated instance of a stepping
# function of type T for a system of dim dimensions. Please note that if you
# use a stepper method that requires access to a driver object, it is advisable
# to use a driver allocation method, which automatically allocates a stepper,
# too.
# 
#   Returns: Ptr{gsl_odeiv2_step}
function gsl_odeiv2_step_alloc(T::Ptr{gsl_odeiv2_step_type}, dim::Integer)
    ccall( (:gsl_odeiv2_step_alloc, :libgsl), Ptr{gsl_odeiv2_step},
        (Ptr{gsl_odeiv2_step_type}, Csize_t), T, dim )
end


# This function resets the stepping function s.  It should be used whenever the
# next use of s will not be a continuation of a previous step.
# 
#   Returns: Cint
function gsl_odeiv2_step_reset()
    s = convert(Ptr{gsl_odeiv2_step}, Array(gsl_odeiv2_step, 1))
    gsl_errno = ccall( (:gsl_odeiv2_step_reset, :libgsl), Cint,
        (Ptr{gsl_odeiv2_step}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(s)[1]
end


# This function frees all the memory associated with the stepping function s.
# 
#   Returns: Void
function gsl_odeiv2_step_free(s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_free, :libgsl), Void, (Ptr{gsl_odeiv2_step},
        ), s )
end


# This function returns a pointer to the name of the stepping function.  For
# example,                 printf ("step method is '%s'\n",
# gsl_odeiv2_step_name (s));  would print something like step method is
# 'rkf45'.
# 
#   Returns: Ptr{Cchar}
function gsl_odeiv2_step_name(s::Ptr{gsl_odeiv2_step})
    output_string = ccall( (:gsl_odeiv2_step_name, :libgsl), Ptr{Cchar},
        (Ptr{gsl_odeiv2_step}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# This function returns the order of the stepping function on the previous
# step. The order can vary if the stepping function itself is adaptive.
# 
#   Returns: Cuint
function gsl_odeiv2_step_order(s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_order, :libgsl), Cuint, (Ptr{gsl_odeiv2_step},
        ), s )
end


# This function sets a pointer of the driver object d for stepper s, to allow
# the stepper to access control (and evolve) object through the driver object.
# This is a requirement for some steppers, to get the desired error level for
# internal iteration of stepper. Allocation of a driver object calls this
# function automatically.
# 
#   Returns: Cint
function gsl_odeiv2_step_set_driver(d::Ptr{gsl_odeiv2_driver})
    s = convert(Ptr{gsl_odeiv2_step}, Array(gsl_odeiv2_step, 1))
    gsl_errno = ccall( (:gsl_odeiv2_step_set_driver, :libgsl), Cint,
        (Ptr{gsl_odeiv2_step}, Ptr{gsl_odeiv2_driver}), s, d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(s)[1]
end


# This function applies the stepping function s to the system of equations
# defined by sys, using the step-size h to advance the system from time t and
# state y to time t+h.  The new state of the system is stored in y on output,
# with an estimate of the absolute error in each component stored in yerr.  If
# the argument dydt_in is not null it should point an array containing the
# derivatives for the system at time t on input. This is optional as the
# derivatives will be computed internally if they are not provided, but allows
# the reuse of existing derivative information.  On output the new derivatives
# of the system at time t+h will be stored in dydt_out if it is not null.
# The stepping function returns GSL_FAILURE if it is unable to compute the
# requested step. Also, if the user-supplied functions defined in the system
# sys return a status other than GSL_SUCCESS the step will be aborted. In that
# case, the elements of y will be restored to their pre-step values and the
# error code from the user-supplied function will be returned. Failure may be
# due to a singularity in the system or too large step-size h. In that case the
# step should be attempted again with a smaller step-size, e.g. h/2.
# If the driver object is not appropriately set via gsl_odeiv2_step_set_driver
# for those steppers that need it, the stepping function returns GSL_EFAULT. If
# the user-supplied functions defined in the system sys returns GSL_EBADFUNC,
# the function returns immediately with the same return code. In this case the
# user must call gsl_odeiv2_step_reset before calling this function again.
# 
#   Returns: Cint
function gsl_odeiv2_step_apply(t::Real, h::Real, y::Real)
    s = convert(Ptr{gsl_odeiv2_step}, Array(gsl_odeiv2_step, 1))
    gsl_errno = ccall( (:gsl_odeiv2_step_apply, :libgsl), Cint,
        (Ptr{gsl_odeiv2_step}, Cdouble, Cdouble, Cdouble), s, t, h, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(s)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_odeiv2_step_apply
