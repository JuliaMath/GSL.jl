#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 38.4 Iteration #
##################
export multifit_fsolver_iterate, multifit_fdfsolver_iterate,
       multifit_fsolver_position, multifit_fdfsolver_position


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
#
#   Returns: Cint
function multifit_fsolver_iterate()
    s = Ref{gsl_multifit_fsolver}()
    errno = ccall( (:gsl_multifit_fsolver_iterate, libgsl), Cint,
        (Ref{gsl_multifit_fsolver}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
#
#   Returns: Cint
function multifit_fdfsolver_iterate()
    s = Ref{gsl_multifit_fdfsolver}()
    errno = ccall( (:gsl_multifit_fdfsolver_iterate, libgsl), Cint,
        (Ref{gsl_multifit_fdfsolver}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
#
#   Returns: Ptr{gsl_vector}
function multifit_fsolver_position(s::Ref{gsl_multifit_fsolver})
    output_ptr = ccall( (:gsl_multifit_fsolver_position, libgsl),
        Ptr{gsl_vector}, (Ref{gsl_multifit_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
#
#   Returns: Ptr{gsl_vector}
function multifit_fdfsolver_position(s::Ref{gsl_multifit_fdfsolver})
    output_ptr = ccall( (:gsl_multifit_fdfsolver_position, libgsl),
        Ptr{gsl_vector}, (Ref{gsl_multifit_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
