#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 24.1 Interface #
##################
export gsl_monte_function, gsl_monte_function, gsl_monte_function


# This data type defines a general function with parameters for Monte Carlo
# integration.             double (* f) (double * x, size_t dim, void *
# params)this function should return the value  f(x,params) for the argument x
# and parameters params, where x is an array of size dim giving the coordinates
# of the point where the function is to be evaluated.            size_t dimthe
# number of dimensions for x.            void * paramsa pointer to the
# parameters of the function.
# 
#   {$f(x,\hbox{\it params})$} 
#   Returns: 
#XXX Unknown output type 
function gsl_monte_function ()
    ccall( (:gsl_monte_function, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_monte_function ()
    ccall( (:gsl_monte_function, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_monte_function ()
    ccall( (:gsl_monte_function, "libgsl"), , () )
end