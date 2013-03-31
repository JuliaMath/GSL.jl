#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 26.3 Adaptive Step-size Control #
###################################
export gsl_odeiv2_control_standard_new, gsl_odeiv2_control_y_new,
       gsl_odeiv2_control_yp_new, gsl_odeiv2_control_scaled_new,
       gsl_odeiv2_control_alloc, gsl_odeiv2_control_init,
       gsl_odeiv2_control_free, gsl_odeiv2_control_hadjust,
       gsl_odeiv2_control_name, gsl_odeiv2_control_errlevel,
       gsl_odeiv2_control_set_driver












# The standard control object is a four parameter heuristic based on absolute
# and relative errors eps_abs and eps_rel, and scaling factors a_y and a_dydt
# for the system state y(t) and derivatives y'(t) respectively.          The
# step-size adjustment procedure for this method begins by computing the
# desired error level D_i for each component,                 D_i = eps_abs +
# eps_rel * (a_y |y_i| + a_dydt h |y\prime_i|)  and comparing it with the
# observed error E_i = |yerr_i|.  If the observed error E exceeds the desired
# error level D by more than 10% for any component then the method reduces the
# step-size by an appropriate factor,                 h_new = h_old * S *
# (E/D)^(-1/q)  where q is the consistency order of the method (e.g. q=4 for
# 4(5) embedded RK), and S is a safety factor of 0.9. The ratio E/D is taken to
# be the maximum of the ratios E_i/D_i.          If the observed error E is
# less than 50% of the desired error level D for the maximum ratio E_i/D_i then
# the algorithm takes the opportunity to increase the step-size to bring the
# error in line with the desired level,                 h_new = h_old * S *
# (E/D)^(-1/(q+1))  This encompasses all the standard error scaling methods. To
# avoid uncontrolled changes in the stepsize, the overall scaling factor is
# limited to the range 1/5 to 5.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_odeiv2_control}
#XXX Coerced type for output Ptr{Void}
function gsl_odeiv2_control_standard_new(eps_abs::Cdouble, eps_rel::Cdouble, a_y::Cdouble, a_dydt::Cdouble)
    ccall( (:gsl_odeiv2_control_standard_new, :libgsl), Ptr{Void},
        (Cdouble, Cdouble, Cdouble, Cdouble), eps_abs, eps_rel, a_y, a_dydt )
end


# This function creates a new control object which will keep the local error on
# each step within an absolute error of eps_abs and relative error of eps_rel
# with respect to the solution y_i(t).  This is equivalent to the standard
# control object with a_y=1 and a_dydt=0.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_odeiv2_control}
#XXX Coerced type for output Ptr{Void}
function gsl_odeiv2_control_y_new(eps_abs::Cdouble, eps_rel::Cdouble)
    ccall( (:gsl_odeiv2_control_y_new, :libgsl), Ptr{Void}, (Cdouble,
        Cdouble), eps_abs, eps_rel )
end


# This function creates a new control object which will keep the local error on
# each step within an absolute error of eps_abs and relative error of eps_rel
# with respect to the derivatives of the solution y'_i(t).  This is equivalent
# to the standard control object with a_y=0 and a_dydt=1.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_odeiv2_control}
#XXX Coerced type for output Ptr{Void}
function gsl_odeiv2_control_yp_new(eps_abs::Cdouble, eps_rel::Cdouble)
    ccall( (:gsl_odeiv2_control_yp_new, :libgsl), Ptr{Void}, (Cdouble,
        Cdouble), eps_abs, eps_rel )
end


# This function creates a new control object which uses the same algorithm as
# gsl_odeiv2_control_standard_new but with an absolute error which is scaled
# for each component by the array scale_abs.  The formula for D_i for this
# control object is,                 D_i = eps_abs * s_i + eps_rel * (a_y |y_i|
# + a_dydt h |y\prime_i|)  where s_i is the i-th component of the array
# scale_abs.  The same error control heuristic is used by the Matlab ode suite.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_odeiv2_control}
#XXX Coerced type for output Ptr{Void}
function gsl_odeiv2_control_scaled_new(eps_abs::Cdouble, eps_rel::Cdouble, a_y::Cdouble, a_dydt::Cdouble, scale_abs::Cdouble)
    ccall( (:gsl_odeiv2_control_scaled_new, :libgsl), Ptr{Void}, (Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble), eps_abs, eps_rel, a_y, a_dydt,
        scale_abs )
end


# This function returns a pointer to a newly allocated instance of a control
# function of type T.  This function is only needed for defining new types of
# control functions.  For most purposes the standard control functions
# described above should be sufficient.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_odeiv2_control_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_odeiv2_control}
#XXX Coerced type for output Ptr{Void}
function gsl_odeiv2_control_alloc(T::Ptr{Void})
    ccall( (:gsl_odeiv2_control_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, ),
        T )
end


# This function initializes the control function c with the parameters eps_abs
# (absolute error), eps_rel (relative error), a_y (scaling factor for y) and
# a_dydt (scaling factor for derivatives).
# 
#   Returns: Cint
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
function gsl_odeiv2_control_init(c::Ptr{Void}, eps_abs::Cdouble, eps_rel::Cdouble, a_y::Cdouble, a_dydt::Cdouble)
    gsl_errno = ccall( (:gsl_odeiv2_control_init, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Cdouble, Cdouble, Cdouble), c, eps_abs, eps_rel,
        a_y, a_dydt )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function frees all the memory associated with the control function c.
# 
#   Returns: Void
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
function gsl_odeiv2_control_free(c::Ptr{Void})
    ccall( (:gsl_odeiv2_control_free, :libgsl), Void, (Ptr{Void}, ), c )
end


# This function adjusts the step-size h using the control function c, and the
# current values of y, yerr and dydt.  The stepping function step is also
# needed to determine the order of the method.  If the error in the y-values
# yerr is found to be too large then the step-size h is reduced and the
# function returns GSL_ODEIV_HADJ_DEC.  If the error is sufficiently small then
# h may be increased and GSL_ODEIV_HADJ_INC is returned.  The function returns
# GSL_ODEIV_HADJ_NIL if the step-size is unchanged.  The goal of the function
# is to estimate the largest step-size which satisfies the user-specified
# accuracy requirements for the current point.
# 
#   Returns: Cint
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
#XXX Unknown input type s::Ptr{gsl_odeiv2_step}
#XXX Coerced type for s::Ptr{Void}
function gsl_odeiv2_control_hadjust(c::Ptr{Void}, s::Ptr{Void}, y::Cdouble)
    gsl_errno = ccall( (:gsl_odeiv2_control_hadjust, :libgsl), Cint,
        (Ptr{Void}, Ptr{Void}, Cdouble), c, s, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function returns a pointer to the name of the control function.  For
# example,                 printf ("control method is '%s'\n",
# gsl_odeiv2_control_name (c));  would print something like control method is
# 'standard'
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
function gsl_odeiv2_control_name(c::Ptr{Void})
    output_string = ccall( (:gsl_odeiv2_control_name, :libgsl), Ptr{Cchar},
        (Ptr{Void}, ), c )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# This function calculates the desired error level of the indth component to
# errlev. It requires the value (y) and value of the derivative (dydt) of the
# component, and the current step size h.
# 
#   Returns: Cint
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
function gsl_odeiv2_control_errlevel{gsl_int<:Integer}(c::Ptr{Void}, y::Cdouble, dydt::Cdouble, h::Cdouble, ind::gsl_int)
    errlev = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_odeiv2_control_errlevel, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Cdouble, Cdouble, Csize_t, Ptr{Cdouble}), c, y,
        dydt, h, ind, errlev )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(errlev)
end


# This function sets a pointer of the driver object d for control object c.
# 
#   Returns: Cint
#XXX Unknown input type c::Ptr{gsl_odeiv2_control}
#XXX Coerced type for c::Ptr{Void}
#XXX Unknown input type d::Ptr{gsl_odeiv2_driver}
#XXX Coerced type for d::Ptr{Void}
function gsl_odeiv2_control_set_driver(c::Ptr{Void}, d::Ptr{Void})
    gsl_errno = ccall( (:gsl_odeiv2_control_set_driver, :libgsl), Cint,
        (Ptr{Void}, Ptr{Void}), c, d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
