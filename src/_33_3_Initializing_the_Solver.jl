#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 33.3 Initializing the Solver #
################################
export root_fsolver_alloc, root_fdfsolver_alloc, root_fsolver_set,
       root_fdfsolver_set, root_fsolver_free, root_fdfsolver_free,
       root_fsolver_name, root_fdfsolver_name








# This function returns a pointer to a newly allocated instance of a solver of
# type T.  For example, the following code creates an instance of a bisection
# solver,                 const gsl_root_fsolver_type * T             =
# gsl_root_fsolver_bisection;           gsl_root_fsolver * s             =
# gsl_root_fsolver_alloc (T);  If there is insufficient memory to create the
# solver then the function returns a null pointer and the error handler is
# invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{gsl_root_fsolver}
function root_fsolver_alloc(T::Ptr{gsl_root_fsolver_type})
    ccall( (:gsl_root_fsolver_alloc, :libgsl), Ptr{gsl_root_fsolver},
        (Ptr{gsl_root_fsolver_type}, ), T )
end


# This function returns a pointer to a newly allocated instance of a
# derivative-based solver of type T.  For example, the following code creates
# an instance of a Newton-Raphson solver,                 const
# gsl_root_fdfsolver_type * T             = gsl_root_fdfsolver_newton;
# gsl_root_fdfsolver * s             = gsl_root_fdfsolver_alloc (T);  If there
# is insufficient memory to create the solver then the function returns a null
# pointer and the error handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{gsl_root_fdfsolver}
function root_fdfsolver_alloc(T::Ptr{gsl_root_fdfsolver_type})
    ccall( (:gsl_root_fdfsolver_alloc, :libgsl), Ptr{gsl_root_fdfsolver},
        (Ptr{gsl_root_fdfsolver_type}, ), T )
end


# This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial search interval [x_lower, x_upper].
# 
#   Returns: Cint
function root_fsolver_set(s::Ptr{gsl_root_fsolver}, f::Ptr{gsl_function}, x_lower::Real, x_upper::Real)
    errno = ccall( (:gsl_root_fsolver_set, :libgsl), Cint,
        (Ptr{gsl_root_fsolver}, Ptr{gsl_function}, Cdouble, Cdouble), s, f,
        x_lower, x_upper )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess root.
# 
#   Returns: Cint
function root_fdfsolver_set(s::Ptr{gsl_root_fdfsolver}, fdf::Ptr{gsl_function_fdf}, root::Real)
    errno = ccall( (:gsl_root_fdfsolver_set, :libgsl), Cint,
        (Ptr{gsl_root_fdfsolver}, Ptr{gsl_function_fdf}, Cdouble), s, fdf, root
        )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
function root_fsolver_free(s::Ptr{gsl_root_fsolver})
    ccall( (:gsl_root_fsolver_free, :libgsl), Void, (Ptr{gsl_root_fsolver},
        ), s )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
function root_fdfsolver_free(s::Ptr{gsl_root_fdfsolver})
    ccall( (:gsl_root_fdfsolver_free, :libgsl), Void,
        (Ptr{gsl_root_fdfsolver}, ), s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_root_fsolver_name (s));
# would print something like s is a 'bisection' solver.
# 
#   Returns: Ptr{Cchar}
function root_fsolver_name(s::Ptr{gsl_root_fsolver})
    output_string = ccall( (:gsl_root_fsolver_name, :libgsl), Ptr{Cchar},
        (Ptr{gsl_root_fsolver}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_root_fsolver_name (s));
# would print something like s is a 'bisection' solver.
# 
#   Returns: Ptr{Cchar}
function root_fdfsolver_name(s::Ptr{gsl_root_fdfsolver})
    output_string = ccall( (:gsl_root_fdfsolver_name, :libgsl), Ptr{Cchar},
        (Ptr{gsl_root_fdfsolver}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end
