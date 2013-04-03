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
function gsl_odeiv2_driver_alloc_y_new(sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Real, epsabs::Real, epsrel::Real)
    ccall( (:gsl_odeiv2_driver_alloc_y_new, :libgsl),
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
function gsl_odeiv2_driver_alloc_yp_new(sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Real, epsabs::Real, epsrel::Real)
    ccall( (:gsl_odeiv2_driver_alloc_yp_new, :libgsl),
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
function gsl_odeiv2_driver_alloc_standard_new(sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Real, epsabs::Real, epsrel::Real, a_y::Real, a_dydt::Real)
    ccall( (:gsl_odeiv2_driver_alloc_standard_new, :libgsl),
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
function gsl_odeiv2_driver_alloc_scaled_new(sys::Ptr{gsl_odeiv2_system}, T::Ptr{gsl_odeiv2_step_type}, hstart::Real, epsabs::Real, epsrel::Real, a_y::Real, a_dydt::Real, scale_abs::Real)
    ccall( (:gsl_odeiv2_driver_alloc_scaled_new, :libgsl),
        Ptr{gsl_odeiv2_driver}, (Ptr{gsl_odeiv2_system},
        Ptr{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble,
        Cdouble), sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs )
end


# The function sets a minimum for allowed step size hmin for driver d. Default
# value is 0.
# 
#   Returns: Cint
function gsl_odeiv2_driver_set_hmin(hmin::Real)
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_set_hmin, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, Cdouble), d, hmin )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1]
end
@vectorize_1arg Number gsl_odeiv2_driver_set_hmin


# The function sets a maximum for allowed step size hmax for driver d. Default
# value is GSL_DBL_MAX.
# 
#   Returns: Cint
function gsl_odeiv2_driver_set_hmax(hmax::Real)
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_set_hmax, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, Cdouble), d, hmax )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1]
end
@vectorize_1arg Number gsl_odeiv2_driver_set_hmax


# The function sets a maximum for allowed number of steps nmax for driver d.
# Default value of 0 sets no limit for steps.
# 
#   Returns: Cint
function gsl_odeiv2_driver_set_nmax(nmax::Integer)
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_set_nmax, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, Culong), d, nmax )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1]
end
@vectorize_1arg Number gsl_odeiv2_driver_set_nmax


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
function gsl_odeiv2_driver_apply(t1::Real, y::Real)
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    t = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_apply, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, Ptr{Cdouble}, Cdouble, Cdouble), d, t, t1, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1] ,unsafe_ref(t)[1]
end
@vectorize_2arg Number gsl_odeiv2_driver_apply


# This function evolves the driver system d from t with n steps of size h. If
# the function is unable to complete the calculation, an error code from
# gsl_odeiv2_evolve_apply_fixed_step is returned, and t and y contain the
# values from last successful step.
# 
#   Returns: Cint
function gsl_odeiv2_driver_apply_fixed_step(h::Real, n::Integer, y::Real)
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    t = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_apply_fixed_step, :libgsl),
        Cint, (Ptr{gsl_odeiv2_driver}, Ptr{Cdouble}, Cdouble, Culong, Cdouble),
        d, t, h, n, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1] ,unsafe_ref(t)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_odeiv2_driver_apply_fixed_step


# This function resets the evolution and stepper objects.
# 
#   Returns: Cint
function gsl_odeiv2_driver_reset()
    d = convert(Ptr{gsl_odeiv2_driver}, Array(gsl_odeiv2_driver, 1))
    gsl_errno = ccall( (:gsl_odeiv2_driver_reset, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, ), d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)[1]
end


# This function frees the driver object, and the related evolution, stepper and
# control objects.
# 
#   Returns: Cint
function gsl_odeiv2_driver_free(d::Ptr{gsl_odeiv2_driver})
    gsl_errno = ccall( (:gsl_odeiv2_driver_free, :libgsl), Cint,
        (Ptr{gsl_odeiv2_driver}, ), d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
