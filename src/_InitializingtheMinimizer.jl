#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 34.3 Initializing the Minimizer #
###################################
export gsl_min_fminimizer_alloc, gsl_min_fminimizer_set,
       gsl_min_fminimizer_set_with_values, gsl_min_fminimizer_free,
       gsl_min_fminimizer_name


### Function uses unknown type; disabled
### # This function returns a pointer to a newly allocated instance of a minimizer
# of type T.  For example, the following code creates an instance of a golden
# section minimizer,                 const gsl_min_fminimizer_type * T
# = gsl_min_fminimizer_goldensection;           gsl_min_fminimizer * s
# = gsl_min_fminimizer_alloc (T);  If there is insufficient memory to create
# the minimizer then the function returns a null pointer and the error handler
# is invoked with an error code of GSL_ENOMEM.
# 
### #   Returns: Ptr{gsl_min_fminimizer}
### #XXX Unknown input type T::Ptr{gsl_min_fminimizer_type}
### #XXX Unknown output type Ptr{gsl_min_fminimizer}
### function gsl_min_fminimizer_alloc (T::Ptr{gsl_min_fminimizer_type})
###     ccall( (:gsl_min_fminimizer_alloc, "libgsl"), Ptr{gsl_min_fminimizer},
###         (Ptr{gsl_min_fminimizer_type}, ), T )
### end


### Function uses unknown type; disabled
### # This function sets, or resets, an existing minimizer s to use the function f
# and the initial search interval [x_lower, x_upper], with a guess for the
# location of the minimum x_minimum.          If the interval given does not
# contain a minimum, then the function returns an error code of GSL_EINVAL.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_min_fminimizer}
### #XXX Unknown input type f::Ptr{gsl_function}
### function gsl_min_fminimizer_set (s::Ptr{gsl_min_fminimizer}, f::Ptr{gsl_function}, x_minimum::Cdouble, x_lower::Cdouble, x_upper::Cdouble)
###     ccall( (:gsl_min_fminimizer_set, "libgsl"), Cint,
###         (Ptr{gsl_min_fminimizer}, Ptr{gsl_function}, Cdouble, Cdouble,
###         Cdouble), s, f, x_minimum, x_lower, x_upper )
### end


### Function uses unknown type; disabled
### # This function is equivalent to gsl_min_fminimizer_set but uses the values
# f_minimum, f_lower and f_upper instead of computing f(x_minimum), f(x_lower)
# and f(x_upper).
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_min_fminimizer}
### #XXX Unknown input type f::Ptr{gsl_function}
### function gsl_min_fminimizer_set_with_values (s::Ptr{gsl_min_fminimizer}, f::Ptr{gsl_function}, x_minimum::Cdouble, f_minimum::Cdouble, x_lower::Cdouble, f_lower::Cdouble, x_upper::Cdouble, f_upper::Cdouble)
###     ccall( (:gsl_min_fminimizer_set_with_values, "libgsl"), Cint,
###         (Ptr{gsl_min_fminimizer}, Ptr{gsl_function}, Cdouble, Cdouble, Cdouble,
###         Cdouble, Cdouble, Cdouble), s, f, x_minimum, f_minimum, x_lower,
###         f_lower, x_upper, f_upper )
### end


### Function uses unknown type; disabled
### # This function frees all the memory associated with the minimizer s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_min_fminimizer}
### function gsl_min_fminimizer_free (s::Ptr{gsl_min_fminimizer})
###     ccall( (:gsl_min_fminimizer_free, "libgsl"), Void,
###         (Ptr{gsl_min_fminimizer}, ), s )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to the name of the minimizer.  For example,
# printf ("s is a '%s' minimizer\n",                   gsl_min_fminimizer_name
# (s));  would print something like s is a 'brent' minimizer.
# 
### #   Returns: Ptr{Cchar}
### #XXX Unknown input type s::Ptr{gsl_min_fminimizer}
### function gsl_min_fminimizer_name (s::Ptr{gsl_min_fminimizer})
###     ccall( (:gsl_min_fminimizer_name, "libgsl"), Ptr{Cchar},
###         (Ptr{gsl_min_fminimizer}, ), s )
### end