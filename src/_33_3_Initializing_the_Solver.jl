#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 33.3 Initializing the Solver #
################################
export gsl_root_fsolver_alloc, gsl_root_fdfsolver_alloc, gsl_root_fsolver_set,
       gsl_root_fdfsolver_set, gsl_root_fsolver_free, gsl_root_fdfsolver_free,
       gsl_root_fsolver_name, gsl_root_fdfsolver_name








# This function returns a pointer to a newly allocated instance of a solver of
# type T.  For example, the following code creates an instance of a bisection
# solver,                 const gsl_root_fsolver_type * T             =
# gsl_root_fsolver_bisection;           gsl_root_fsolver * s             =
# gsl_root_fsolver_alloc (T);  If there is insufficient memory to create the
# solver then the function returns a null pointer and the error handler is
# invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_root_fsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_root_fsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_root_fsolver_alloc(T::Ptr{Void})
    ccall( (:gsl_root_fsolver_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, ), T
        )
end


# This function returns a pointer to a newly allocated instance of a
# derivative-based solver of type T.  For example, the following code creates
# an instance of a Newton-Raphson solver,                 const
# gsl_root_fdfsolver_type * T             = gsl_root_fdfsolver_newton;
# gsl_root_fdfsolver * s             = gsl_root_fdfsolver_alloc (T);  If there
# is insufficient memory to create the solver then the function returns a null
# pointer and the error handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_root_fdfsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_root_fdfsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_root_fdfsolver_alloc(T::Ptr{Void})
    ccall( (:gsl_root_fdfsolver_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, ),
        T )
end


# This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial search interval [x_lower, x_upper].
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_set(s::Ptr{Void}, f::Ptr{gsl_function}, x_lower::Cdouble, x_upper::Cdouble)
    gsl_errno = ccall( (:gsl_root_fsolver_set, :libgsl), Cint, (Ptr{Void},
        Ptr{gsl_function}, Cdouble, Cdouble), s, f, x_lower, x_upper )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess root.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_set(s::Ptr{Void}, fdf::Ptr{gsl_function_fdf}, root::Cdouble)
    gsl_errno = ccall( (:gsl_root_fdfsolver_set, :libgsl), Cint,
        (Ptr{Void}, Ptr{gsl_function_fdf}, Cdouble), s, fdf, root )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_free(s::Ptr{Void})
    ccall( (:gsl_root_fsolver_free, :libgsl), Void, (Ptr{Void}, ), s )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_free(s::Ptr{Void})
    ccall( (:gsl_root_fdfsolver_free, :libgsl), Void, (Ptr{Void}, ), s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_root_fsolver_name (s));
# would print something like s is a 'bisection' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_root_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fsolver_name(s::Ptr{Void})
    output_string = ccall( (:gsl_root_fsolver_name, :libgsl), Ptr{Cchar},
        (Ptr{Void}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_root_fsolver_name (s));
# would print something like s is a 'bisection' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_root_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_root_fdfsolver_name(s::Ptr{Void})
    output_string = ccall( (:gsl_root_fdfsolver_name, :libgsl), Ptr{Cchar},
        (Ptr{Void}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end
