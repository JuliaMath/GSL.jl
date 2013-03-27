#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 33.4 Providing the function to solve #
########################################
export gsl_function, gsl_function, gsl_function_fdf, gsl_function_fdf,
       gsl_function_fdf, gsl_function_fdf


# This data type defines a general function with parameters.             double
# (* function) (double x, void * params)this function should return the value
# f(x,params) for argument x and parameters params void * paramsa pointer to
# the parameters of the function
# 
#   {$f(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_function ()
    ccall( (:gsl_function, "libgsl"), , () )
end


# This data type defines a general function with parameters and its first
# derivative.             double (* f) (double x, void * params)this function
# should return the value of  f(x,params) for argument x and parameters params
# double (* df) (double x, void * params)this function should return the value
# of the derivative of f with respect to x,  f'(x,params), for argument x and
# parameters params void (* fdf) (double x, void * params, double * f, double *
# df)this function should set the values of the function f to  f(x,params) and
# its derivative df to  f'(x,params) for argument x and parameters params.
# This function provides an optimization of the separate functions for f(x) and
# f'(x)—it is always faster to compute the function and its derivative at the
# same time.            void * paramsa pointer to the parameters of the
# function
# 
#   {$f(x,\hbox{\it params})$} 
#   {$f'(x,\hbox{\it params})$} 
#   {$f(x,\hbox{\it params})$} 
#   {$f'(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_function ()
    ccall( (:gsl_function, "libgsl"), , () )
end


# This data type defines a general function with parameters and its first
# derivative.             double (* f) (double x, void * params)this function
# should return the value of  f(x,params) for argument x and parameters params
# double (* df) (double x, void * params)this function should return the value
# of the derivative of f with respect to x,  f'(x,params), for argument x and
# parameters params void (* fdf) (double x, void * params, double * f, double *
# df)this function should set the values of the function f to  f(x,params) and
# its derivative df to  f'(x,params) for argument x and parameters params.
# This function provides an optimization of the separate functions for f(x) and
# f'(x)—it is always faster to compute the function and its derivative at the
# same time.            void * paramsa pointer to the parameters of the
# function
# 
#   Returns: 
#XXX Unknown output type 
function gsl_function_fdf ()
    ccall( (:gsl_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_function_fdf ()
    ccall( (:gsl_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_function_fdf ()
    ccall( (:gsl_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_function_fdf ()
    ccall( (:gsl_function_fdf, "libgsl"), , () )
end