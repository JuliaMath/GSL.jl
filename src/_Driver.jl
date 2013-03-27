#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# 26.5 Driver #
###############
export gsl_odeiv2_driver_alloc_y_new, gsl_odeiv2_driver_alloc_yp_new,
       gsl_odeiv2_driver_alloc_standard_new,
       gsl_odeiv2_driver_alloc_scaled_new, gsl_odeiv2_driver_set_hmin,
       gsl_odeiv2_driver_set_hmax, gsl_odeiv2_driver_set_nmax,
       gsl_odeiv2_driver_apply, gsl_odeiv2_driver_apply_fixed_step,
       gsl_odeiv2_driver_reset, gsl_odeiv2_driver_free


# These functions return a pointer to a newly allocated instance of a driver
# object. The functions automatically allocate and initialise the evolve,
# control and stepper objects for ODE system sys using stepper type T. The
# initial step size is given in hstart. The rest of the arguments follow the
# syntax and semantics of the control functions with same name
# (gsl_odeiv2_control_*_new).
# 
#   Returns: Ptr{gsl_odeiv2_driver}
function gsl_odeiv2_driver_alloc_y_new (sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Cdouble, epsabs::Cdouble, epsrel::Cdouble)
    ccall( (:gsl_odeiv2_driver_alloc_y_new, "libgsl"),
        Ptr{gsl_odeiv2_driver}, (Ptr{gsl_odeiv2_system},
        Ptr{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart,
        epsabs, epsrel )
end


# These functions return a pointer to a newly allocated instance of a driver
# object. The functions automatically allocate and initialise the evolve,
# control and stepper objects for ODE system sys using stepper type T. The
# initial step size is given in hstart. The rest of the arguments follow the
# syntax and semantics of the control functions with same name
# (gsl_odeiv2_control_*_new).
# 
#   Returns: Ptr{gsl_odeiv2_driver}
function gsl_odeiv2_driver_alloc_yp_new (sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Cdouble, epsabs::Cdouble, epsrel::Cdouble)
    ccall( (:gsl_odeiv2_driver_alloc_yp_new, "libgsl"),
        Ptr{gsl_odeiv2_driver}, (Ptr{gsl_odeiv2_system},
        Ptr{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart,
        epsabs, epsrel )
end


# These functions return a pointer to a newly allocated instance of a driver
# object. The functions automatically allocate and initialise the evolve,
# control and stepper objects for ODE system sys using stepper type T. The
# initial step size is given in hstart. The rest of the arguments follow the
# syntax and semantics of the control functions with same name
# (gsl_odeiv2_control_*_new).
# 
#   Returns: Ptr{gsl_odeiv2_driver}
function gsl_odeiv2_driver_alloc_standard_new (sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Cdouble, epsabs::Cdouble, epsrel::Cdouble, a_y::Cdouble, a_dydt::Cdouble)
    ccall( (:gsl_odeiv2_driver_alloc_standard_new, "libgsl"),
        Ptr{gsl_odeiv2_driver}, (Ptr{gsl_odeiv2_system},
        Ptr{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble,
        Cdouble), sys, T, hstart, epsabs, epsrel, a_y, a_dydt )
end


# These functions return a pointer to a newly allocated instance of a driver
# object. The functions automatically allocate and initialise the evolve,
# control and stepper objects for ODE system sys using stepper type T. The
# initial step size is given in hstart. The rest of the arguments follow the
# syntax and semantics of the control functions with same name
# (gsl_odeiv2_control_*_new).
# 
#   Returns: Ptr{gsl_odeiv2_driver}
function gsl_odeiv2_driver_alloc_scaled_new (sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Cdouble, epsabs::Cdouble, epsrel::Cdouble, a_y::Cdouble, a_dydt::Cdouble, scale_abs::Cdouble)
    ccall( (:gsl_odeiv2_driver_alloc_scaled_new, "libgsl"),
        Ptr{gsl_odeiv2_driver}, (Ptr{gsl_odeiv2_system},
        Ptr{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble,
        Cdouble), sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs )
end


# The function sets a minimum for allowed step size hmin for driver d. Default
# value is 0.
# 
#   Returns: Cint
function gsl_odeiv2_driver_set_hmin (d::Ptr{gsl_odeiv2_driver}, hmin::Cdouble)
    ccall( (:gsl_odeiv2_driver_set_hmin, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, Cdouble), d, hmin )
end


# The function sets a maximum for allowed step size hmax for driver d. Default
# value is GSL_DBL_MAX.
# 
#   Returns: Cint
function gsl_odeiv2_driver_set_hmax (d::Ptr{gsl_odeiv2_driver}, hmax::Cdouble)
    ccall( (:gsl_odeiv2_driver_set_hmax, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, Cdouble), d, hmax )
end


# The function sets a maximum for allowed number of steps nmax for driver d.
# Default value of 0 sets no limit for steps.
# 
#   Returns: Cint
#XXX Unknown input type nmax::unsignedlongint
function gsl_odeiv2_driver_set_nmax (d::Ptr{gsl_odeiv2_driver}, nmax::unsignedlongint)
    ccall( (:gsl_odeiv2_driver_set_nmax, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, unsignedlongint), d, nmax )
end


# This function evolves the driver system d from t to t1. Initially vector y
# should contain the values of dependent variables at point t. If the function
# is unable to complete the calculation, an error code from
# gsl_odeiv2_evolve_apply is returned, and t and y contain the values from last
# successful step.          If maximum number of steps is reached, a value of
# GSL_EMAXITER is returned. If the step size drops below minimum value, the
# function returns with GSL_ENOPROG. If the user-supplied functions defined in
# the system sys returns GSL_EBADFUNC, the function returns immediately with
# the same return code. In this case the user must call gsl_odeiv2_driver_reset
# before calling this function again.
# 
#   Returns: Cint
function gsl_odeiv2_driver_apply (d::Ptr{gsl_odeiv2_driver}, t::Ptr{Cdouble}, t1::Cdouble, y::Cdouble)
    ccall( (:gsl_odeiv2_driver_apply, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, Ptr{Cdouble}, Cdouble, Cdouble), d, t, t1, y )
end


# This function evolves the driver system d from t with n steps of size h. If
# the function is unable to complete the calculation, an error code from
# gsl_odeiv2_evolve_apply_fixed_step is returned, and t and y contain the
# values from last successful step.
# 
#   Returns: Cint
#XXX Unknown input type n::unsignedlongint
function gsl_odeiv2_driver_apply_fixed_step (d::Ptr{gsl_odeiv2_driver}, t::Ptr{Cdouble}, h::Cdouble, n::unsignedlongint, y::Cdouble)
    ccall( (:gsl_odeiv2_driver_apply_fixed_step, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, Ptr{Cdouble}, Cdouble, unsignedlongint,
        Cdouble), d, t, h, n, y )
end


# This function resets the evolution and stepper objects.
# 
#   Returns: Cint
function gsl_odeiv2_driver_reset (d::Ptr{gsl_odeiv2_driver})
    ccall( (:gsl_odeiv2_driver_reset, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, ), d )
end


# This function frees the driver object, and the related evolution, stepper and
# control objects.
# 
#   Returns: Cint
function gsl_odeiv2_driver_free (d::Ptr{gsl_odeiv2_driver})
    ccall( (:gsl_odeiv2_driver_free, "libgsl"), Cint,
        (Ptr{gsl_odeiv2_driver}, ), d )
end