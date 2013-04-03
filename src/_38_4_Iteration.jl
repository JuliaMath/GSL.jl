#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 38.4 Iteration #
##################
export gsl_multifit_fsolver_iterate, gsl_multifit_fdfsolver_iterate,
       gsl_multifit_fsolver_position, gsl_multifit_fdfsolver_position


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
# 
#   Returns: Cint
function gsl_multifit_fsolver_iterate()
    s = convert(Ptr{gsl_multifit_fsolver}, Array(gsl_multifit_fsolver, 1))
    gsl_errno = ccall( (:gsl_multifit_fsolver_iterate, :libgsl), Cint,
        (Ptr{gsl_multifit_fsolver}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(s)[1]
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
# 
#   Returns: Cint
function gsl_multifit_fdfsolver_iterate()
    s = convert(Ptr{gsl_multifit_fdfsolver}, Array(gsl_multifit_fdfsolver, 1))
    gsl_errno = ccall( (:gsl_multifit_fdfsolver_iterate, :libgsl), Cint,
        (Ptr{gsl_multifit_fdfsolver}, ), s )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(s)[1]
end


# These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
# 
#   Returns: Ptr{gsl_vector}
function gsl_multifit_fsolver_position(s::Ptr{gsl_multifit_fsolver})
    ccall( (:gsl_multifit_fsolver_position, :libgsl), Ptr{gsl_vector},
        (Ptr{gsl_multifit_fsolver}, ), s )
end


# These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
# 
#   Returns: Ptr{gsl_vector}
function gsl_multifit_fdfsolver_position(s::Ptr{gsl_multifit_fdfsolver})
    ccall( (:gsl_multifit_fdfsolver_position, :libgsl), Ptr{gsl_vector},
        (Ptr{gsl_multifit_fdfsolver}, ), s )
end
