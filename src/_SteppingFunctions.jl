#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 26.2 Stepping Functions #
###########################
export gsl_odeiv2_step_alloc, gsl_odeiv2_step_reset, gsl_odeiv2_step_free,
       gsl_odeiv2_step_name, gsl_odeiv2_step_order, gsl_odeiv2_step_set_driver,
       gsl_odeiv2_step_apply, gsl_odeiv2_step_rk2, gsl_odeiv2_step_rk4,
       gsl_odeiv2_step_rkf45, gsl_odeiv2_step_rkck, gsl_odeiv2_step_rk8pd,
       gsl_odeiv2_step_rk1imp, gsl_odeiv2_step_rk2imp, gsl_odeiv2_step_rk4imp,
       gsl_odeiv2_step_bsimp, gsl_odeiv2_step_msadams, gsl_odeiv2_step_msbdf


# This function returns a pointer to a newly allocated instance of a stepping
# function of type T for a system of dim dimensions. Please note that if you
# use a stepper method that requires access to a driver object, it is advisable
# to use a driver allocation method, which automatically allocates a stepper,
# too.
# 
#   Returns: Ptr{gsl_odeiv2_step}
function gsl_odeiv2_step_alloc (T::Ptr{gsl_odeiv2_step_type}, dim::Csize_t)
    ccall( (:gsl_odeiv2_step_alloc, "libgsl"), Ptr{gsl_odeiv2_step},
        (Ptr{gsl_odeiv2_step_type}, Csize_t), T, dim )
end


# This function resets the stepping function s.  It should be used whenever the
# next use of s will not be a continuation of a previous step.
# 
#   Returns: Cint
function gsl_odeiv2_step_reset (s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_reset, "libgsl"), Cint, (Ptr{gsl_odeiv2_step},
        ), s )
end


# This function frees all the memory associated with the stepping function s.
# 
#   Returns: Void
function gsl_odeiv2_step_free (s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_free, "libgsl"), Void, (Ptr{gsl_odeiv2_step},
        ), s )
end


# This function returns a pointer to the name of the stepping function.  For
# example,                 printf ("step method is '%s'\n",
# gsl_odeiv2_step_name (s));  would print something like step method is
# 'rkf45'.
# 
#   Returns: Ptr{Cchar}
function gsl_odeiv2_step_name (s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_name, "libgsl"), Ptr{Cchar},
        (Ptr{gsl_odeiv2_step}, ), s )
end


# This function returns the order of the stepping function on the previous
# step. The order can vary if the stepping function itself is adaptive.
# 
#   Returns: Cuint
function gsl_odeiv2_step_order (s::Ptr{gsl_odeiv2_step})
    ccall( (:gsl_odeiv2_step_order, "libgsl"), Cuint,
        (Ptr{gsl_odeiv2_step}, ), s )
end


# This function sets a pointer of the driver object d for stepper s, to allow
# the stepper to access control (and evolve) object through the driver object.
# This is a requirement for some steppers, to get the desired error level for
# internal iteration of stepper. Allocation of a driver object calls this
# function automatically.
# 
#   Returns: Cint
function gsl_odeiv2_step_set_driver (s::Ptr{gsl_odeiv2_step}, d::Ptr{gsl_odeiv2_driver})
    ccall( (:gsl_odeiv2_step_set_driver, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_step}, Ptr{gsl_odeiv2_driver}), s, d )
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
function gsl_odeiv2_step_apply (s::Ptr{gsl_odeiv2_step}, t::Cdouble, h::Cdouble, y::Cdouble)
    ccall( (:gsl_odeiv2_step_apply, "libgsl"), Cint, (Ptr{gsl_odeiv2_step},
        Cdouble, Cdouble, Cdouble), s, t, h, y )
end


# Explicit embedded Runge-Kutta (2, 3) method.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk2 ()
    ccall( (:gsl_odeiv2_step_rk2, "libgsl"), , () )
end


# Explicit 4th order (classical) Runge-Kutta. Error estimation is carried out
# by the step doubling method. For more efficient estimate of the error, use
# the embedded methods described below.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk4 ()
    ccall( (:gsl_odeiv2_step_rk4, "libgsl"), , () )
end


# Explicit embedded Runge-Kutta-Fehlberg (4, 5) method.  This method is a good
# general-purpose integrator.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rkf45 ()
    ccall( (:gsl_odeiv2_step_rkf45, "libgsl"), , () )
end


# Explicit embedded Runge-Kutta Cash-Karp (4, 5) method.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rkck ()
    ccall( (:gsl_odeiv2_step_rkck, "libgsl"), , () )
end


# Explicit embedded Runge-Kutta Prince-Dormand (8, 9) method.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk8pd ()
    ccall( (:gsl_odeiv2_step_rk8pd, "libgsl"), , () )
end


# Implicit Gaussian first order Runge-Kutta. Also known as implicit Euler or
# backward Euler method. Error estimation is carried out by the step doubling
# method. This algorithm requires the Jacobian and access to the driver object
# via gsl_odeiv2_step_set_driver.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk1imp ()
    ccall( (:gsl_odeiv2_step_rk1imp, "libgsl"), , () )
end


# Implicit Gaussian second order Runge-Kutta. Also known as implicit mid-point
# rule. Error estimation is carried out by the step doubling method. This
# stepper requires the Jacobian and access to the driver object via
# gsl_odeiv2_step_set_driver.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk2imp ()
    ccall( (:gsl_odeiv2_step_rk2imp, "libgsl"), , () )
end


# Implicit Gaussian 4th order Runge-Kutta. Error estimation is carried out by
# the step doubling method. This algorithm requires the Jacobian and access to
# the driver object via gsl_odeiv2_step_set_driver.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_rk4imp ()
    ccall( (:gsl_odeiv2_step_rk4imp, "libgsl"), , () )
end


# Implicit Bulirsch-Stoer method of Bader and Deuflhard. The method is
# generally suitable for stiff problems. This stepper requires the Jacobian.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_bsimp ()
    ccall( (:gsl_odeiv2_step_bsimp, "libgsl"), , () )
end


# A variable-coefficient linear multistep Adams method in Nordsieck form. This
# stepper uses explicit Adams-Bashforth (predictor) and implicit Adams-Moulton
# (corrector) methods in P(EC)^m functional iteration mode. Method order varies
# dynamically between 1 and 12. This stepper requires the access to the driver
# object via gsl_odeiv2_step_set_driver.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_msadams ()
    ccall( (:gsl_odeiv2_step_msadams, "libgsl"), , () )
end


# A variable-coefficient linear multistep backward differentiation formula
# (BDF) method in Nordsieck form. This stepper uses the explicit BDF formula as
# predictor and implicit BDF formula as corrector. A modified Newton iteration
# method is used to solve the system of non-linear equations. Method order
# varies dynamically between 1 and 5. The method is generally suitable for
# stiff problems. This stepper requires the Jacobian and the access to the
# driver object via gsl_odeiv2_step_set_driver.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_odeiv2_step_msbdf ()
    ccall( (:gsl_odeiv2_step_msbdf, "libgsl"), , () )
end