#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 35.3 Providing the function to solve #
########################################
export gsl_multiroot_function, gsl_multiroot_function, gsl_multiroot_function,
       gsl_multiroot_function_fdf, gsl_multiroot_function_fdf,
       gsl_multiroot_function_fdf, gsl_multiroot_function_fdf,
       gsl_multiroot_function_fdf


# This data type defines a general system of functions with parameters.
# int (* f) (const gsl_vector * x, void * params, gsl_vector * f)this function
# should store the vector result  f(x,params) in f for argument x and
# parameters params, returning an appropriate error code if the function cannot
# be computed.            size_t nthe dimension of the system, i.e. the number
# of components of the vectors x and f.            void * paramsa pointer to
# the parameters of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function ()
    ccall( (:gsl_multiroot_function, "libgsl"), , () )
end


# This data type defines a general system of functions with parameters and the
# corresponding Jacobian matrix of derivatives,             int (* f) (const
# gsl_vector * x, void * params, gsl_vector * f)this function should store the
# vector result  f(x,params) in f for argument x and parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)this function
# should store the n-by-n matrix result  J_ij = d f_i(x,params) / d x_j in J
# for argument x and parameters params, returning an appropriate error code if
# the function cannot be computed.            int (* fdf) (const gsl_vector *
# x, void * params, gsl_vector * f, gsl_matrix * J)This function should set the
# values of the f and J as above, for arguments x and parameters params.  This
# function provides an optimization of the separate functions for f(x) and
# J(x)—it is always faster to compute the function and its derivative at the
# same time.            size_t nthe dimension of the system, i.e. the number of
# components of the vectors x and f.            void * paramsa pointer to the
# parameters of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   {$J_{ij} = \partial f_i(x,\hbox{\it params}) / \partial x_j$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function ()
    ccall( (:gsl_multiroot_function, "libgsl"), , () )
end


# This data type defines a general system of functions with parameters and the
# corresponding Jacobian matrix of derivatives,             int (* f) (const
# gsl_vector * x, void * params, gsl_vector * f)this function should store the
# vector result  f(x,params) in f for argument x and parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)this function
# should store the n-by-n matrix result  J_ij = d f_i(x,params) / d x_j in J
# for argument x and parameters params, returning an appropriate error code if
# the function cannot be computed.            int (* fdf) (const gsl_vector *
# x, void * params, gsl_vector * f, gsl_matrix * J)This function should set the
# values of the f and J as above, for arguments x and parameters params.  This
# function provides an optimization of the separate functions for f(x) and
# J(x)—it is always faster to compute the function and its derivative at the
# same time.            size_t nthe dimension of the system, i.e. the number of
# components of the vectors x and f.            void * paramsa pointer to the
# parameters of the function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function ()
    ccall( (:gsl_multiroot_function, "libgsl"), , () )
end


# This data type defines a general system of functions with parameters and the
# corresponding Jacobian matrix of derivatives,             int (* f) (const
# gsl_vector * x, void * params, gsl_vector * f)this function should store the
# vector result  f(x,params) in f for argument x and parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)this function
# should store the n-by-n matrix result  J_ij = d f_i(x,params) / d x_j in J
# for argument x and parameters params, returning an appropriate error code if
# the function cannot be computed.            int (* fdf) (const gsl_vector *
# x, void * params, gsl_vector * f, gsl_matrix * J)This function should set the
# values of the f and J as above, for arguments x and parameters params.  This
# function provides an optimization of the separate functions for f(x) and
# J(x)—it is always faster to compute the function and its derivative at the
# same time.            size_t nthe dimension of the system, i.e. the number of
# components of the vectors x and f.            void * paramsa pointer to the
# parameters of the function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function_fdf ()
    ccall( (:gsl_multiroot_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function_fdf ()
    ccall( (:gsl_multiroot_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function_fdf ()
    ccall( (:gsl_multiroot_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function_fdf ()
    ccall( (:gsl_multiroot_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multiroot_function_fdf ()
    ccall( (:gsl_multiroot_function_fdf, "libgsl"), , () )
end