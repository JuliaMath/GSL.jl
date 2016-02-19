#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 34.5 Iteration #
##################
export min_fminimizer_iterate,
       min_fminimizer_x_minimum, min_fminimizer_x_upper,
       min_fminimizer_x_lower, min_fminimizer_f_minimum,
       min_fminimizer_f_upper, min_fminimizer_f_lower


# This function performs a single iteration of the minimizer s.  If the
# iteration encounters an unexpected problem then an error code will be
# returned,             GSL_EBADFUNCthe iteration encountered a singular point
# where the function evaluated to Inf or NaN.            GSL_FAILUREthe
# algorithm could not improve the current best approximation or bounding
# interval.
#
#   Returns: Cint
function min_fminimizer_iterate()
    s = Ref{gsl_min_fminimizer}()
    errno = ccall( (:gsl_min_fminimizer_iterate, libgsl), Cint,
        (Ref{gsl_min_fminimizer}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# This function returns the current estimate of the position of the minimum for
# the minimizer s.
#
#   Returns: Cdouble
function min_fminimizer_x_minimum(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_x_minimum, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end


# These functions return the current upper and lower bound of the interval for
# the minimizer s.
#
#   Returns: Cdouble
function min_fminimizer_x_upper(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_x_upper, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end


# These functions return the current upper and lower bound of the interval for
# the minimizer s.
#
#   Returns: Cdouble
function min_fminimizer_x_lower(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_x_lower, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end


# These functions return the value of the function at the current estimate of
# the minimum and at the upper and lower bounds of the interval for the
# minimizer s.
#
#   Returns: Cdouble
function min_fminimizer_f_minimum(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_f_minimum, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end


# These functions return the value of the function at the current estimate of
# the minimum and at the upper and lower bounds of the interval for the
# minimizer s.
# 
#   Returns: Cdouble
function min_fminimizer_f_upper(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_f_upper, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end


# These functions return the value of the function at the current estimate of
# the minimum and at the upper and lower bounds of the interval for the
# minimizer s.
# 
#   Returns: Cdouble
function min_fminimizer_f_lower(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_f_lower, libgsl), Cdouble,
        (Ref{gsl_min_fminimizer}, ), s )
end
