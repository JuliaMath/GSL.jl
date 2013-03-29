#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 35.2 Initializing the Solver #
################################
export gsl_multiroot_fsolver_alloc, gsl_multiroot_fdfsolver_alloc,
       gsl_multiroot_fsolver_set, gsl_multiroot_fdfsolver_set,
       gsl_multiroot_fsolver_free, gsl_multiroot_fdfsolver_free,
       gsl_multiroot_fsolver_name, gsl_multiroot_fdfsolver_name








# This function returns a pointer to a newly allocated instance of a solver of
# type T for a system of n dimensions.  For example, the following code creates
# an instance of a hybrid solver, to solve a 3-dimensional system of equations.
# const gsl_multiroot_fsolver_type * T               =
# gsl_multiroot_fsolver_hybrid;           gsl_multiroot_fsolver * s
# = gsl_multiroot_fsolver_alloc (T, 3);  If there is insufficient memory to
# create the solver then the function returns a null pointer and the error
# handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_multiroot_fsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_multiroot_fsolver_alloc (T::Ptr{Void}, n::Csize_t)
    ccall( (:gsl_multiroot_fsolver_alloc, "libgsl"), Ptr{Void}, (Ptr{Void},
        Csize_t), T, n )
end


# This function returns a pointer to a newly allocated instance of a derivative
# solver of type T for a system of n dimensions.  For example, the following
# code creates an instance of a Newton-Raphson solver, for a 2-dimensional
# system of equations.                 const gsl_multiroot_fdfsolver_type * T
# = gsl_multiroot_fdfsolver_newton;           gsl_multiroot_fdfsolver * s =
# gsl_multiroot_fdfsolver_alloc (T, 2);  If there is insufficient memory to
# create the solver then the function returns a null pointer and the error
# handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_multiroot_fdfsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_multiroot_fdfsolver_alloc (T::Ptr{Void}, n::Csize_t)
    ccall( (:gsl_multiroot_fdfsolver_alloc, "libgsl"), Ptr{Void},
        (Ptr{Void}, Csize_t), T, n )
end


# These functions set, or reset, an existing solver s to use the function f or
# function and derivative fdf, and the initial guess x.  Note that the initial
# position is copied from x, this argument is not modified by subsequent
# iterations.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_set (s::Ptr{Void}, f::Ptr{gsl_multiroot_function}, x::Ptr{gsl_vector})
    ccall( (:gsl_multiroot_fsolver_set, "libgsl"), Cint, (Ptr{Void},
        Ptr{gsl_multiroot_function}, Ptr{gsl_vector}), s, f, x )
end


# These functions set, or reset, an existing solver s to use the function f or
# function and derivative fdf, and the initial guess x.  Note that the initial
# position is copied from x, this argument is not modified by subsequent
# iterations.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_set (s::Ptr{Void}, fdf::Ptr{gsl_multiroot_function_fdf}, x::Ptr{gsl_vector})
    ccall( (:gsl_multiroot_fdfsolver_set, "libgsl"), Cint, (Ptr{Void},
        Ptr{gsl_multiroot_function_fdf}, Ptr{gsl_vector}), s, fdf, x )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_free (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_free, "libgsl"), Void, (Ptr{Void}, ), s
        )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_free (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_free, "libgsl"), Void, (Ptr{Void}, ),
        s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",
# gsl_multiroot_fdfsolver_name (s));  would print something like s is a
# 'newton' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_name (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_name, "libgsl"), Ptr{Cchar}, (Ptr{Void},
        ), s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",
# gsl_multiroot_fdfsolver_name (s));  would print something like s is a
# 'newton' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_name (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_name, "libgsl"), Ptr{Cchar},
        (Ptr{Void}, ), s )
end
