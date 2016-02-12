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

