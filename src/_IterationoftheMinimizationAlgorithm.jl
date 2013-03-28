#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 38.4 Iteration #
##################
export gsl_multifit_fsolver_iterate, gsl_multifit_fdfsolver_iterate,
       gsl_multifit_fsolver_position, gsl_multifit_fdfsolver_position


### Function uses unknown type; disabled
### # These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
### function gsl_multifit_fsolver_iterate (s::Ptr{gsl_multifit_fsolver})
###     ccall( (:gsl_multifit_fsolver_iterate, "libgsl"), Cint,
###         (Ptr{gsl_multifit_fsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned.  The
# solver maintains a current estimate of the best-fit parameters at all times.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
### function gsl_multifit_fdfsolver_iterate (s::Ptr{gsl_multifit_fdfsolver})
###     ccall( (:gsl_multifit_fdfsolver_iterate, "libgsl"), Cint,
###         (Ptr{gsl_multifit_fdfsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
# 
### #   Returns: Ptr{gsl_vector}
### #XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
### #XXX Unknown output type Ptr{gsl_vector}
### function gsl_multifit_fsolver_position (s::Ptr{gsl_multifit_fsolver})
###     ccall( (:gsl_multifit_fsolver_position, "libgsl"), Ptr{gsl_vector},
###         (Ptr{gsl_multifit_fsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions return the current position (i.e. best-fit parameters) s->x
# of the solver s.
# 
### #   Returns: Ptr{gsl_vector}
### #XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
### #XXX Unknown output type Ptr{gsl_vector}
### function gsl_multifit_fdfsolver_position (s::Ptr{gsl_multifit_fdfsolver})
###     ccall( (:gsl_multifit_fdfsolver_position, "libgsl"), Ptr{gsl_vector},
###         (Ptr{gsl_multifit_fdfsolver}, ), s )
### end