#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################
# 27.5 Evaluation of Interpolating Functions #
##############################################
export interp_eval, interp_eval_e, interp_eval_deriv, interp_eval_deriv_e,
       interp_eval_deriv2, interp_eval_deriv2_e, interp_eval_integ,
       interp_eval_integ_e


# These functions return the interpolated value of y for a given point x, using
# the interpolation object interp, data arrays xa and ya and the accelerator
# acc.  When x is outside the range of xa, the error code GSL_EDOM is returned
# with a value of GSL_NAN for y.
# 
#   Returns: Cdouble
function interp_eval(interp::Ptr{gsl_interp}, xa::Real)
    ccall( (:gsl_interp_eval, :libgsl), Cdouble, (Ptr{gsl_interp},
        Cdouble), interp, xa )
end


# These functions return the interpolated value of y for a given point x, using
# the interpolation object interp, data arrays xa and ya and the accelerator
# acc.  When x is outside the range of xa, the error code GSL_EDOM is returned
# with a value of GSL_NAN for y.
# 
#   Returns: Cint
function interp_eval_e(interp::Ptr{gsl_interp}, xa::Real)
    errno = ccall( (:gsl_interp_eval_e, :libgsl), Cint, (Ptr{gsl_interp},
        Cdouble), interp, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions return the derivative d of an interpolated function for a
# given point x, using the interpolation object interp, data arrays xa and ya
# and the accelerator acc.
# 
#   Returns: Cdouble
function interp_eval_deriv(interp::Ptr{gsl_interp}, xa::Real)
    ccall( (:gsl_interp_eval_deriv, :libgsl), Cdouble, (Ptr{gsl_interp},
        Cdouble), interp, xa )
end


# These functions return the derivative d of an interpolated function for a
# given point x, using the interpolation object interp, data arrays xa and ya
# and the accelerator acc.
# 
#   Returns: Cint
function interp_eval_deriv_e(interp::Ptr{gsl_interp}, xa::Real)
    errno = ccall( (:gsl_interp_eval_deriv_e, :libgsl), Cint,
        (Ptr{gsl_interp}, Cdouble), interp, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions return the second derivative d2 of an interpolated function
# for a given point x, using the interpolation object interp, data arrays xa
# and ya and the accelerator acc.
# 
#   Returns: Cdouble
function interp_eval_deriv2(interp::Ptr{gsl_interp}, xa::Real)
    ccall( (:gsl_interp_eval_deriv2, :libgsl), Cdouble, (Ptr{gsl_interp},
        Cdouble), interp, xa )
end


# These functions return the second derivative d2 of an interpolated function
# for a given point x, using the interpolation object interp, data arrays xa
# and ya and the accelerator acc.
# 
#   Returns: Cint
function interp_eval_deriv2_e(interp::Ptr{gsl_interp}, xa::Real)
    errno = ccall( (:gsl_interp_eval_deriv2_e, :libgsl), Cint,
        (Ptr{gsl_interp}, Cdouble), interp, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions return the numerical integral result of an interpolated
# function over the range [a, b], using the interpolation object interp, data
# arrays xa and ya and the accelerator acc.
# 
#   Returns: Cdouble
function interp_eval_integ(interp::Ptr{gsl_interp}, xa::Real)
    ccall( (:gsl_interp_eval_integ, :libgsl), Cdouble, (Ptr{gsl_interp},
        Cdouble), interp, xa )
end


# These functions return the numerical integral result of an interpolated
# function over the range [a, b], using the interpolation object interp, data
# arrays xa and ya and the accelerator acc.
# 
#   Returns: Cint
function interp_eval_integ_e(interp::Ptr{gsl_interp}, xa::Real)
    errno = ccall( (:gsl_interp_eval_integ_e, :libgsl), Cint,
        (Ptr{gsl_interp}, Cdouble), interp, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
