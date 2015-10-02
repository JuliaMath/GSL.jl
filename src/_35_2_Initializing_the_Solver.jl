#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 35.2 Initializing the Solver #
################################
export multiroot_fsolver_alloc, multiroot_fdfsolver_alloc,
       multiroot_fsolver_set, multiroot_fdfsolver_set, multiroot_fsolver_free,
       multiroot_fdfsolver_free, multiroot_fsolver_name,
       multiroot_fdfsolver_name








# This function returns a pointer to a newly allocated instance of a solver of
# type T for a system of n dimensions.  For example, the following code creates
# an instance of a hybrid solver, to solve a 3-dimensional system of equations.
# const gsl_multiroot_fsolver_type * T               =
# gsl_multiroot_fsolver_hybrid;           gsl_multiroot_fsolver * s
# = gsl_multiroot_fsolver_alloc (T, 3);  If there is insufficient memory to
# create the solver then the function returns a null pointer and the error
# handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ref{gsl_multiroot_fsolver}
function multiroot_fsolver_alloc(T::Ref{gsl_multiroot_fsolver_type}, n::Integer)
    output_ptr = ccall( (:gsl_multiroot_fsolver_alloc, libgsl),
        Ref{gsl_multiroot_fsolver}, (Ref{gsl_multiroot_fsolver_type}, Csize_t),
        T, n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
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
#   Returns: Ref{gsl_multiroot_fdfsolver}
function multiroot_fdfsolver_alloc(T::Ref{gsl_multiroot_fdfsolver_type}, n::Integer)
    output_ptr = ccall( (:gsl_multiroot_fdfsolver_alloc, libgsl),
        Ref{gsl_multiroot_fdfsolver}, (Ref{gsl_multiroot_fdfsolver_type},
        Csize_t), T, n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions set, or reset, an existing solver s to use the function f or
# function and derivative fdf, and the initial guess x.  Note that the initial
# position is copied from x, this argument is not modified by subsequent
# iterations.
# 
#   Returns: Cint
function multiroot_fsolver_set(s::Ref{gsl_multiroot_fsolver}, f::Ref{gsl_multiroot_function}, x::Ref{gsl_vector})
    errno = ccall( (:gsl_multiroot_fsolver_set, libgsl), Cint,
        (Ref{gsl_multiroot_fsolver}, Ref{gsl_multiroot_function},
        Ref{gsl_vector}), s, f, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions set, or reset, an existing solver s to use the function f or
# function and derivative fdf, and the initial guess x.  Note that the initial
# position is copied from x, this argument is not modified by subsequent
# iterations.
# 
#   Returns: Cint
function multiroot_fdfsolver_set(s::Ref{gsl_multiroot_fdfsolver}, fdf::Ref{gsl_multiroot_function_fdf}, x::Ref{gsl_vector})
    errno = ccall( (:gsl_multiroot_fdfsolver_set, libgsl), Cint,
        (Ref{gsl_multiroot_fdfsolver}, Ref{gsl_multiroot_function_fdf},
        Ref{gsl_vector}), s, fdf, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
function multiroot_fsolver_free(s::Ref{gsl_multiroot_fsolver})
    ccall( (:gsl_multiroot_fsolver_free, libgsl), Void,
        (Ref{gsl_multiroot_fsolver}, ), s )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
function multiroot_fdfsolver_free(s::Ref{gsl_multiroot_fdfsolver})
    ccall( (:gsl_multiroot_fdfsolver_free, libgsl), Void,
        (Ref{gsl_multiroot_fdfsolver}, ), s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",
# gsl_multiroot_fdfsolver_name (s));  would print something like s is a
# 'newton' solver.
# 
#   Returns: Ref{Cchar}
function multiroot_fsolver_name(s::Ref{gsl_multiroot_fsolver})
    output_string = output_ptr = ccall( (:gsl_multiroot_fsolver_name,
        libgsl), Ref{Cchar}, (Ref{gsl_multiroot_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",
# gsl_multiroot_fdfsolver_name (s));  would print something like s is a
# 'newton' solver.
# 
#   Returns: Ref{Cchar}
function multiroot_fdfsolver_name(s::Ref{gsl_multiroot_fdfsolver})
    output_string = output_ptr = ccall( (:gsl_multiroot_fdfsolver_name,
        libgsl), Ref{Cchar}, (Ref{gsl_multiroot_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end
