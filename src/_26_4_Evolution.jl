#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 26.4 Evolution #
##################
export gsl_odeiv2_evolve_alloc, gsl_odeiv2_evolve_apply,
       gsl_odeiv2_evolve_apply_fixed_step, gsl_odeiv2_evolve_reset,
       gsl_odeiv2_evolve_free, gsl_odeiv2_evolve_set_driver


# This function returns a pointer to a newly allocated instance of an evolution
# function for a system of dim dimensions.
# 
#   Returns: Ptr{gsl_odeiv2_evolve}
function gsl_odeiv2_evolve_alloc(dim::Integer)
    ccall( (:gsl_odeiv2_evolve_alloc, :libgsl), Ptr{gsl_odeiv2_evolve},
        (Csize_t, ), dim )
end
@vectorize_1arg Number gsl_odeiv2_evolve_alloc


# This function advances the system (e, sys) from time t and position y using
# the stepping function step.  The new time and position are stored in t and y
# on output.          The initial step-size is taken as h. The control function
# con is applied to check whether the local error estimated by the stepping
# function step using step-size h exceeds the required error tolerance. If the
# error is too high, the step is retried by calling step with a decreased step-
# size. This process is continued until an acceptable step-size is found. An
# estimate of the local error for the step can be obtained from the components
# of the array e->yerr[].          If the user-supplied functions defined in
# the system sys returns GSL_EBADFUNC, the function returns immediately with
# the same return code. In this case the user must call gsl_odeiv2_step_reset
# and gsl_odeiv2_evolve_reset before calling this function again.
# Otherwise, if the user-supplied functions defined in the system sys or the
# stepping function step return a status other than GSL_SUCCESS, the step is
# retried with a decreased step-size. If the step-size decreases below machine
# precision, a status of GSL_FAILURE is returned if the user functions returned
# GSL_SUCCESS. Otherwise the value returned by user function is returned. If no
# acceptable step can be made, t and y will be restored to their pre-step
# values and h contains the final attempted step-size.          If the step is
# successful the function returns a suggested step-size for the next step in h.
# The maximum time t1 is guaranteed not to be exceeded by the time-step. On the
# final time-step the value of t will be set to t1 exactly.
# 
#   Returns: Cint
function gsl_odeiv2_evolve_apply(sys::Ptr{gsl_odeiv2_system}, t1::Real, y::Real)
    e = convert(Ptr{gsl_odeiv2_evolve}, Array(gsl_odeiv2_evolve, 1))
    con = convert(Ptr{gsl_odeiv2_control}, Array(gsl_odeiv2_control, 1))
    step = convert(Ptr{gsl_odeiv2_step}, Array(gsl_odeiv2_step, 1))
    t = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    h = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_odeiv2_evolve_apply, :libgsl), Cint,
        (Ptr{gsl_odeiv2_evolve}, Ptr{gsl_odeiv2_control}, Ptr{gsl_odeiv2_step},
        Ptr{gsl_odeiv2_system}, Ptr{Cdouble}, Cdouble, Ptr{Cdouble}, Cdouble),
        e, con, step, sys, t, t1, h, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(e)[1] ,unsafe_ref(con)[1] ,unsafe_ref(step)[1] ,unsafe_ref(t)[1] ,unsafe_ref(h)[1]
end


# This function advances the ODE-system (e, sys, con) from time t and position
# y using the stepping function step by a specified step size h. If the local
# error estimated by the stepping function exceeds the desired error level, the
# step is not taken and the function returns GSL_FAILURE. Otherwise the value
# returned by user function is returned.
# 
#   Returns: Cint
function gsl_odeiv2_evolve_apply_fixed_step(sys::Ptr{gsl_odeiv2_system}, h::Real, y::Real)
    e = convert(Ptr{gsl_odeiv2_evolve}, Array(gsl_odeiv2_evolve, 1))
    con = convert(Ptr{gsl_odeiv2_control}, Array(gsl_odeiv2_control, 1))
    step = convert(Ptr{gsl_odeiv2_step}, Array(gsl_odeiv2_step, 1))
    t = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_odeiv2_evolve_apply_fixed_step, :libgsl),
        Cint, (Ptr{gsl_odeiv2_evolve}, Ptr{gsl_odeiv2_control},
        Ptr{gsl_odeiv2_step}, Ptr{gsl_odeiv2_system}, Ptr{Cdouble}, Cdouble,
        Cdouble), e, con, step, sys, t, h, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(e)[1] ,unsafe_ref(con)[1] ,unsafe_ref(step)[1] ,unsafe_ref(t)[1]
end


# This function resets the evolution function e.  It should be used whenever
# the next use of e will not be a continuation of a previous step.
# 
#   Returns: Cint
function gsl_odeiv2_evolve_reset()
    e = convert(Ptr{gsl_odeiv2_evolve}, Array(gsl_odeiv2_evolve, 1))
    gsl_errno = ccall( (:gsl_odeiv2_evolve_reset, :libgsl), Cint,
        (Ptr{gsl_odeiv2_evolve}, ), e )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(e)[1]
end


# This function frees all the memory associated with the evolution function e.
# 
#   Returns: Void
function gsl_odeiv2_evolve_free(e::Ptr{gsl_odeiv2_evolve})
    ccall( (:gsl_odeiv2_evolve_free, :libgsl), Void,
        (Ptr{gsl_odeiv2_evolve}, ), e )
end


# This function sets a pointer of the driver object d for evolve object e.
# 
#   Returns: Cint
function gsl_odeiv2_evolve_set_driver(d::Ptr{gsl_odeiv2_driver})
    e = convert(Ptr{gsl_odeiv2_evolve}, Array(gsl_odeiv2_evolve, 1))
    gsl_errno = ccall( (:gsl_odeiv2_evolve_set_driver, :libgsl), Cint,
        (Ptr{gsl_odeiv2_evolve}, Ptr{gsl_odeiv2_driver}), e, d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(e)[1]
end
