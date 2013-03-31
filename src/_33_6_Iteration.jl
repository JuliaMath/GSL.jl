#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 33.6 Iteration #
##################
export gsl_root_fsolver_iterate, gsl_root_fdfsolver_iterate,
       gsl_root_fdfsolver_iterate, gsl_root_fsolver_root,
       gsl_root_fdfsolver_root, gsl_root_fsolver_x_lower,
       gsl_root_fsolver_x_upper


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_EZERODIVthe derivative
# of the function vanished at the iteration point, preventing the algorithm
# from continuing without a division by zero.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_iterate(s::Ptr{Void})
    gsl_errno = ccall( (:gsl_root_fsolver_iterate, :libgsl), Cint,
        (Ptr{Void}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_EZERODIVthe derivative
# of the function vanished at the iteration point, preventing the algorithm
# from continuing without a division by zero.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_iterate(s::Ptr{Void})
    gsl_errno = ccall( (:gsl_root_fdfsolver_iterate, :libgsl), Cint,
        (Ptr{Void}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# These functions return the current estimate of the root for the solver s.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_iterate(s::Ptr{Void})
    gsl_errno = ccall( (:gsl_root_fdfsolver_iterate, :libgsl), Cint,
        (Ptr{Void}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# These functions return the current estimate of the root for the solver s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_root(s::Ptr{Void})
    ccall( (:gsl_root_fsolver_root, :libgsl), Cdouble, (Ptr{Void}, ), s )
end


# These functions return the current estimate of the root for the solver s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_root(s::Ptr{Void})
    ccall( (:gsl_root_fdfsolver_root, :libgsl), Cdouble, (Ptr{Void}, ), s )
end


# These functions return the current bracketing interval for the solver s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_x_lower(s::Ptr{Void})
    ccall( (:gsl_root_fsolver_x_lower, :libgsl), Cdouble, (Ptr{Void}, ), s
        )
end


# These functions return the current bracketing interval for the solver s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_x_upper(s::Ptr{Void})
    ccall( (:gsl_root_fsolver_x_upper, :libgsl), Cdouble, (Ptr{Void}, ), s
        )
end
