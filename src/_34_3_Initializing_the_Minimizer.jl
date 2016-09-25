#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 34.3 Initializing the Minimizer #
###################################
export min_fminimizer_alloc, min_fminimizer_set,
       min_fminimizer_set_with_values, min_fminimizer_free, min_fminimizer_name

# This function returns a pointer to a newly allocated instance of a minimizer
# of type T.  For example, the following code creates an instance of a golden
# section minimizer,                 const gsl_min_fminimizer_type * T
# = gsl_min_fminimizer_goldensection;           gsl_min_fminimizer * s
# = gsl_min_fminimizer_alloc (T);  If there is insufficient memory to create
# the minimizer then the function returns a null pointer and the error handler
# is invoked with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_min_fminimizer}
function min_fminimizer_alloc(T::Ref{gsl_min_fminimizer_type})
    output_ptr = ccall( (:gsl_min_fminimizer_alloc, libgsl),
        Ptr{gsl_min_fminimizer}, (Ref{gsl_min_fminimizer_type}, ), T )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function sets, or resets, an existing minimizer s to use the function f
# and the initial search interval [x_lower, x_upper], with a guess for the
# location of the minimum x_minimum.          If the interval given does not
# contain a minimum, then the function returns an error code of GSL_EINVAL.
#
#   Returns: Cint
function min_fminimizer_set(s::Ref{gsl_min_fminimizer}, f::Ref{gsl_function}, x_minimum::Real, x_lower::Real, x_upper::Real)
    errno = ccall( (:gsl_min_fminimizer_set, libgsl), Cint,
        (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble,
        Cdouble), s, f, x_minimum, x_lower, x_upper )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function is equivalent to gsl_min_fminimizer_set but uses the values
# f_minimum, f_lower and f_upper instead of computing f(x_minimum), f(x_lower)
# and f(x_upper).
#
#   Returns: Cint
function min_fminimizer_set_with_values(x_minimum::Real, f_minimum::Real, x_lower::Real, f_lower::Real, x_upper::Real, f_upper::Real)
    s = Ref{gsl_min_fminimizer}()
    f = Ref{gsl_function}()
    errno = ccall( (:gsl_min_fminimizer_set_with_values, libgsl), Cint,
        (Ref{gsl_min_fminimizer}, Ref{gsl_function}, Cdouble, Cdouble, Cdouble,
        Cdouble, Cdouble, Cdouble), s, f, x_minimum, f_minimum, x_lower,
        f_lower, x_upper, f_upper )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[], f[]
end


# This function frees all the memory associated with the minimizer s.
#
#   Returns: Void
function min_fminimizer_free(s::Ref{gsl_min_fminimizer})
    ccall( (:gsl_min_fminimizer_free, libgsl), Void,
        (Ref{gsl_min_fminimizer}, ), s )
end


# This function returns a pointer to the name of the minimizer.  For example,
# printf ("s is a '%s' minimizer\n",                   gsl_min_fminimizer_name
# (s));  would print something like s is a 'brent' minimizer.
#
#   Returns: String
function min_fminimizer_name(s::Ref{gsl_min_fminimizer})
    output_string = output_ptr = ccall( (:gsl_min_fminimizer_name,
        libgsl), Ptr{Cchar}, (Ref{gsl_min_fminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end
