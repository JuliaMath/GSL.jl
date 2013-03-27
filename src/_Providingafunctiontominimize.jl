#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 36.4 Providing a function to minimize #
#########################################
export gsl_multimin_function_fdf, gsl_multimin_function_fdf,
       gsl_multimin_function_fdf, gsl_multimin_function_fdf,
       gsl_multimin_function_fdf, gsl_multimin_function, gsl_multimin_function,
       gsl_multimin_function


# This data type defines a general function of n variables with parameters and
# the corresponding gradient vector of derivatives,             double (* f)
# (const gsl_vector * x, void * params)this function should return the result
# f(x,params) for argument x and parameters params.  If the function cannot be
# computed, an error value of GSL_NAN should be returned.            void (*
# df) (const gsl_vector * x, void * params, gsl_vector * g)this function should
# store the n-dimensional gradient  g_i = d f(x,params) / d x_i in the vector g
# for argument x and parameters params, returning an appropriate error code if
# the function cannot be computed.            void (* fdf) (const gsl_vector *
# x, void * params, double * f, gsl_vector * g)This function should set the
# values of the f and g as above, for arguments x and parameters params.  This
# function provides an optimization of the separate functions for f(x) and
# g(x)—it is always faster to compute the function and its derivative at the
# same time.            size_t nthe dimension of the system, i.e. the number of
# components of the vectors x.            void * paramsa pointer to the
# parameters of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   {$g_i = \partial f(x,\hbox{\it params}) / \partial x_i$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function_fdf ()
    ccall( (:gsl_multimin_function_fdf, "libgsl"), , () )
end


# This data type defines a general function of n variables with parameters,
# double (* f) (const gsl_vector * x, void * params)this function should return
# the result  f(x,params) for argument x and parameters params.  If the
# function cannot be computed, an error value of GSL_NAN should be returned.
# size_t nthe dimension of the system, i.e. the number of components of the
# vectors x.            void * paramsa pointer to the parameters of the
# function.
# 
#   {$f(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function_fdf ()
    ccall( (:gsl_multimin_function_fdf, "libgsl"), , () )
end


# This data type defines a general function of n variables with parameters,
# double (* f) (const gsl_vector * x, void * params)this function should return
# the result  f(x,params) for argument x and parameters params.  If the
# function cannot be computed, an error value of GSL_NAN should be returned.
# size_t nthe dimension of the system, i.e. the number of components of the
# vectors x.            void * paramsa pointer to the parameters of the
# function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function_fdf ()
    ccall( (:gsl_multimin_function_fdf, "libgsl"), , () )
end


# This data type defines a general function of n variables with parameters,
# double (* f) (const gsl_vector * x, void * params)this function should return
# the result  f(x,params) for argument x and parameters params.  If the
# function cannot be computed, an error value of GSL_NAN should be returned.
# size_t nthe dimension of the system, i.e. the number of components of the
# vectors x.            void * paramsa pointer to the parameters of the
# function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function_fdf ()
    ccall( (:gsl_multimin_function_fdf, "libgsl"), , () )
end


# This data type defines a general function of n variables with parameters,
# double (* f) (const gsl_vector * x, void * params)this function should return
# the result  f(x,params) for argument x and parameters params.  If the
# function cannot be computed, an error value of GSL_NAN should be returned.
# size_t nthe dimension of the system, i.e. the number of components of the
# vectors x.            void * paramsa pointer to the parameters of the
# function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function_fdf ()
    ccall( (:gsl_multimin_function_fdf, "libgsl"), , () )
end


# This data type defines a general function of n variables with parameters,
# double (* f) (const gsl_vector * x, void * params)this function should return
# the result  f(x,params) for argument x and parameters params.  If the
# function cannot be computed, an error value of GSL_NAN should be returned.
# size_t nthe dimension of the system, i.e. the number of components of the
# vectors x.            void * paramsa pointer to the parameters of the
# function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function ()
    ccall( (:gsl_multimin_function, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function ()
    ccall( (:gsl_multimin_function, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multimin_function ()
    ccall( (:gsl_multimin_function, "libgsl"), , () )
end