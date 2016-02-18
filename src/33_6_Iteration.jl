#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 33.6 Iteration #
##################
export root_fsolver_iterate, root_fdfsolver_iterate, root_fdfsolver_iterate,
       root_fsolver_root, root_fdfsolver_root, root_fsolver_x_lower,
       root_fsolver_x_upper


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_EZERODIVthe derivative
# of the function vanished at the iteration point, preventing the algorithm
# from continuing without a division by zero.
#
#   Returns: Cint
function root_fsolver_iterate(s::Ptr{gsl_root_fsolver})
    errno = ccall( (:gsl_root_fsolver_iterate, libgsl), Cint,
        (Ptr{gsl_root_fsolver}, ), s )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_EZERODIVthe derivative
# of the function vanished at the iteration point, preventing the algorithm
# from continuing without a division by zero.
#
#   Returns: Cint
function root_fdfsolver_iterate(s::Ptr{gsl_root_fdfsolver})
    errno = ccall( (:gsl_root_fdfsolver_iterate, libgsl), Cint,
        (Ptr{gsl_root_fdfsolver}, ), s )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end


# These functions return the current estimate of the root for the solver s.
#
#   Returns: Cdouble
function root_fsolver_root(s::Ptr{gsl_root_fsolver})
    ccall( (:gsl_root_fsolver_root, libgsl), Cdouble,
        (Ptr{gsl_root_fsolver}, ), s )
end


# These functions return the current estimate of the root for the solver s.
#
#   Returns: Cdouble
function root_fdfsolver_root(s::Ptr{gsl_root_fdfsolver})
    ccall( (:gsl_root_fdfsolver_root, libgsl), Cdouble,
        (Ptr{gsl_root_fdfsolver}, ), s )
end


# These functions return the current bracketing interval for the solver s.
#
#   Returns: Cdouble
function root_fsolver_x_lower(s::Ptr{gsl_root_fsolver})
    ccall( (:gsl_root_fsolver_x_lower, libgsl), Cdouble,
        (Ptr{gsl_root_fsolver}, ), s )
end


# These functions return the current bracketing interval for the solver s.
#
#   Returns: Cdouble
function root_fsolver_x_upper(s::Ptr{gsl_root_fsolver})
    ccall( (:gsl_root_fsolver_x_upper, libgsl), Cdouble,
        (Ptr{gsl_root_fsolver}, ), s )
end
