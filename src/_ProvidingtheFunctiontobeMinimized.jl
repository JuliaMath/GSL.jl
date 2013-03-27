#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 38.3 Providing the Function to be Minimized #
###############################################
export gsl_multifit_function, gsl_multifit_function, gsl_multifit_function,
       gsl_multifit_function, gsl_multifit_function_fdf,
       gsl_multifit_function_fdf, gsl_multifit_function_fdf,
       gsl_multifit_function_fdf, gsl_multifit_function_fdf,
       gsl_multifit_function_fdf


# This data type defines a general system of functions with arbitrary
# parameters.             int (* f) (const gsl_vector * x, void * params,
# gsl_vector * f)this function should store the vector result  f(x,params) in f
# for argument x and arbitrary parameters params, returning an appropriate
# error code if the function cannot be computed.            size_t nthe number
# of functions, i.e. the number of components of the vector f.
# size_t pthe number of independent variables, i.e. the number of components of
# the vector x.            void * paramsa pointer to the arbitrary parameters
# of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function ()
    ccall( (:gsl_multifit_function, "libgsl"), , () )
end


# This data type defines a general system of functions with arbitrary
# parameters and the corresponding Jacobian matrix of derivatives,
# int (* f) (const gsl_vector * x, void * params, gsl_vector * f)this function
# should store the vector result  f(x,params) in f for argument x and arbitrary
# parameters params, returning an appropriate error code if the function cannot
# be computed.            int (* df) (const gsl_vector * x, void * params,
# gsl_matrix * J)this function should store the n-by-p matrix result  J_ij = d
# f_i(x,params) / d x_j in J for argument x and arbitrary parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix
# * J)This function should set the values of the f and J as above, for
# arguments x and arbitrary parameters params.  This function provides an
# optimization of the separate functions for f(x) and J(x)—it is always faster
# to compute the function and its derivative at the same time.
# size_t nthe number of functions, i.e. the number of components of the vector
# f.            size_t pthe number of independent variables, i.e. the number of
# components of the vector x.            void * paramsa pointer to the
# arbitrary parameters of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   {$J_{ij} = \partial f_i(x,\hbox{\it params}) / \partial x_j$} 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function ()
    ccall( (:gsl_multifit_function, "libgsl"), , () )
end


# This data type defines a general system of functions with arbitrary
# parameters and the corresponding Jacobian matrix of derivatives,
# int (* f) (const gsl_vector * x, void * params, gsl_vector * f)this function
# should store the vector result  f(x,params) in f for argument x and arbitrary
# parameters params, returning an appropriate error code if the function cannot
# be computed.            int (* df) (const gsl_vector * x, void * params,
# gsl_matrix * J)this function should store the n-by-p matrix result  J_ij = d
# f_i(x,params) / d x_j in J for argument x and arbitrary parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix
# * J)This function should set the values of the f and J as above, for
# arguments x and arbitrary parameters params.  This function provides an
# optimization of the separate functions for f(x) and J(x)—it is always faster
# to compute the function and its derivative at the same time.
# size_t nthe number of functions, i.e. the number of components of the vector
# f.            size_t pthe number of independent variables, i.e. the number of
# components of the vector x.            void * paramsa pointer to the
# arbitrary parameters of the function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function ()
    ccall( (:gsl_multifit_function, "libgsl"), , () )
end


# This data type defines a general system of functions with arbitrary
# parameters and the corresponding Jacobian matrix of derivatives,
# int (* f) (const gsl_vector * x, void * params, gsl_vector * f)this function
# should store the vector result  f(x,params) in f for argument x and arbitrary
# parameters params, returning an appropriate error code if the function cannot
# be computed.            int (* df) (const gsl_vector * x, void * params,
# gsl_matrix * J)this function should store the n-by-p matrix result  J_ij = d
# f_i(x,params) / d x_j in J for argument x and arbitrary parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix
# * J)This function should set the values of the f and J as above, for
# arguments x and arbitrary parameters params.  This function provides an
# optimization of the separate functions for f(x) and J(x)—it is always faster
# to compute the function and its derivative at the same time.
# size_t nthe number of functions, i.e. the number of components of the vector
# f.            size_t pthe number of independent variables, i.e. the number of
# components of the vector x.            void * paramsa pointer to the
# arbitrary parameters of the function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function ()
    ccall( (:gsl_multifit_function, "libgsl"), , () )
end


# This data type defines a general system of functions with arbitrary
# parameters and the corresponding Jacobian matrix of derivatives,
# int (* f) (const gsl_vector * x, void * params, gsl_vector * f)this function
# should store the vector result  f(x,params) in f for argument x and arbitrary
# parameters params, returning an appropriate error code if the function cannot
# be computed.            int (* df) (const gsl_vector * x, void * params,
# gsl_matrix * J)this function should store the n-by-p matrix result  J_ij = d
# f_i(x,params) / d x_j in J for argument x and arbitrary parameters params,
# returning an appropriate error code if the function cannot be computed.
# int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix
# * J)This function should set the values of the f and J as above, for
# arguments x and arbitrary parameters params.  This function provides an
# optimization of the separate functions for f(x) and J(x)—it is always faster
# to compute the function and its derivative at the same time.
# size_t nthe number of functions, i.e. the number of components of the vector
# f.            size_t pthe number of independent variables, i.e. the number of
# components of the vector x.            void * paramsa pointer to the
# arbitrary parameters of the function.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_multifit_function_fdf ()
    ccall( (:gsl_multifit_function_fdf, "libgsl"), , () )
end