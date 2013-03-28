#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 26.1 Defining the ODE System #
################################
export gsl_odeiv2_system, gsl_odeiv2_system, gsl_odeiv2_system,
       gsl_odeiv2_system


### Function uses unknown type; disabled
### # This data type defines a general ODE system with arbitrary parameters.
# int (* function) (double t, const double y[], double dydt[], void *
# params)This function should store the vector elements  f_i(t,y,params) in the
# array dydt, for arguments (t,y) and parameters params.            The
# function should return GSL_SUCCESS if the calculation was completed
# successfully. Any other return value indicates an error. A special return
# value GSL_EBADFUNC causes gsl_odeiv2 routines to immediately stop and return.
# The user must call an appropriate reset function (e.g.
# gsl_odeiv2_driver_reset or gsl_odeiv2_step_reset) before continuing. Use
# return values distinct from standard GSL error codes to distinguish your
# function as the source of the error.            int (* jacobian) (double t,
# const double y[], double * dfdy, double dfdt[], void * params);This function
# should store the vector of derivative elements  in the array dfdt and the
# Jacobian matrix  J_{ij} in the array dfdy, regarded as a row-ordered matrix
# J(i,j) = dfdy[i * dimension + j] where dimension is the dimension of the
# system.            Not all of the stepper algorithms of gsl_odeiv2 make use
# of the Jacobian matrix, so it may not be necessary to provide this function
# (the jacobian element of the struct can be replaced by a null pointer for
# those algorithms).            The function should return GSL_SUCCESS if the
# calculation was completed successfully. Any other return value indicates an
# error. A special return value GSL_EBADFUNC causes gsl_odeiv2 routines to
# immediately stop and return. The user must call an appropriate reset function
# (e.g. gsl_odeiv2_driver_reset or gsl_odeiv2_step_reset) before continuing.
# Use return values distinct from standard GSL error codes to distinguish your
# function as the source of the error.            size_t dimension;This is the
# dimension of the system of equations.            void * paramsThis is a
# pointer to the arbitrary parameters of the system.
# 
### #   {$f_i(t,y,\hbox{\it params})$} 
### #   {$\partial f_i(t,y,params) / \partial t$} @math{df_i(t,y,params)/dt} 
### #   {$J_{ij}$} 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_odeiv2_system ()
###     ccall( (:gsl_odeiv2_system, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_odeiv2_system ()
###     ccall( (:gsl_odeiv2_system, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_odeiv2_system ()
###     ccall( (:gsl_odeiv2_system, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_odeiv2_system ()
###     ccall( (:gsl_odeiv2_system, "libgsl"), , () )
### end