#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 26.2 Stepping Functions #
###########################
export odeiv2_step_alloc, odeiv2_step_reset, odeiv2_step_free,
       odeiv2_step_name, odeiv2_step_order, odeiv2_step_set_driver,
       odeiv2_step_apply




# This function returns a pointer to a newly allocated instance of a stepping
# function of type T for a system of dim dimensions. Please note that if you
# use a stepper method that requires access to a driver object, it is advisable
# to use a driver allocation method, which automatically allocates a stepper,
# too.
#
#   Returns: Ptr{gsl_odeiv2_step}
function odeiv2_step_alloc(T::Ref{gsl_odeiv2_step_type}, dim::Integer)
    output_ptr = ccall( (:gsl_odeiv2_step_alloc, libgsl),
        Ptr{gsl_odeiv2_step}, (Ref{gsl_odeiv2_step_type}, Csize_t), T, dim )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function resets the stepping function s.  It should be used whenever the
# next use of s will not be a continuation of a previous step.
#
#   Returns: Cint
function odeiv2_step_reset()
    s = Ref{gsl_odeiv2_step}()
    errno = ccall( (:gsl_odeiv2_step_reset, libgsl), Cint,
        (Ref{gsl_odeiv2_step}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# This function frees all the memory associated with the stepping function s.
#
#   Returns: Void
function odeiv2_step_free(s::Ref{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_free, libgsl), Void, (Ref{gsl_odeiv2_step},
        ), s )
end


# This function returns a pointer to the name of the stepping function.  For
# example,                 printf ("step method is '%s'\n",
# gsl_odeiv2_step_name (s));  would print something like step method is
# 'rkf45'.
#
#   Returns: Ptr{Cchar}
function odeiv2_step_name(s::Ref{gsl_odeiv2_step})
    output_string = output_ptr = ccall( (:gsl_odeiv2_step_name, libgsl),
        Ptr{Cchar}, (Ref{gsl_odeiv2_step}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# This function returns the order of the stepping function on the previous
# step. The order can vary if the stepping function itself is adaptive.
#
#   Returns: Cuint
function odeiv2_step_order(s::Ref{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_order, libgsl), Cuint, (Ref{gsl_odeiv2_step},
        ), s )
end


# This function sets a pointer of the driver object d for stepper s, to allow
# the stepper to access control (and evolve) object through the driver object.
# This is a requirement for some steppers, to get the desired error level for
# internal iteration of stepper. Allocation of a driver object calls this
# function automatically.
#
#   Returns: Cint
function odeiv2_step_set_driver(d::Ref{gsl_odeiv2_driver})
    s = Ref{gsl_odeiv2_step}()
    errno = ccall( (:gsl_odeiv2_step_set_driver, libgsl), Cint,
        (Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_driver}), s, d )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
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
function odeiv2_step_apply(t::Real, h::Real, y::Real)
    s = Ref{gsl_odeiv2_step}()
    errno = ccall( (:gsl_odeiv2_step_apply, libgsl), Cint,
        (Ref{gsl_odeiv2_step}, Cdouble, Cdouble, Cdouble), s, t, h, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end
