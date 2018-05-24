#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 38.2 Initializing the Solver #
################################
export multifit_fsolver_alloc, multifit_fdfsolver_alloc, multifit_fsolver_set,
       multifit_fdfsolver_set, multifit_fsolver_free, multifit_fdfsolver_free,
       multifit_fsolver_name, multifit_fdfsolver_name

# This function returns a pointer to a newly allocated instance of a solver of
# type T for n observations and p parameters.  The number of observations n
# must be greater than or equal to parameters p.          If there is
# insufficient memory to create the solver then the function returns a null
# pointer and the error handler is invoked with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_multifit_fsolver}
function multifit_fsolver_alloc(T::Ref{gsl_multifit_fsolver_type}, n::Integer, p::Integer)
    output_ptr = ccall( (:gsl_multifit_fsolver_alloc, libgsl),
        Ptr{gsl_multifit_fsolver}, (Ref{gsl_multifit_fsolver_type}, Csize_t,
        Csize_t), T, n, p )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function returns a pointer to a newly allocated instance of a derivative
# solver of type T for n observations and p parameters.  For example, the
# following code creates an instance of a Levenberg-Marquardt solver for 100
# data points and 3 parameters,                 const
# gsl_multifit_fdfsolver_type * T               = gsl_multifit_fdfsolver_lmder;
# gsl_multifit_fdfsolver * s               = gsl_multifit_fdfsolver_alloc (T,
# 100, 3);  The number of observations n must be greater than or equal to
# parameters p.          If there is insufficient memory to create the solver
# then the function returns a null pointer and the error handler is invoked
# with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_multifit_fdfsolver}
function multifit_fdfsolver_alloc(T::Ref{gsl_multifit_fdfsolver_type}, n::Integer, p::Integer)
    output_ptr = ccall( (:gsl_multifit_fdfsolver_alloc, libgsl),
        Ptr{gsl_multifit_fdfsolver}, (Ref{gsl_multifit_fdfsolver_type},
        Csize_t, Csize_t), T, n, p )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial guess x.
#
#   Returns: Cint
function multifit_fsolver_set(s::Ref{gsl_multifit_fsolver}, f::Ref{gsl_multifit_function}, x::Ref{gsl_vector})
    errno = ccall( (:gsl_multifit_fsolver_set, libgsl), Cint,
        (Ref{gsl_multifit_fsolver}, Ref{gsl_multifit_function},
        Ref{gsl_vector}), s, f, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess x.
#
#   Returns: Cint
function multifit_fdfsolver_set(s::Ref{gsl_multifit_fdfsolver}, fdf::Ref{gsl_multifit_function_fdf}, x::Ref{gsl_vector})
    errno = ccall( (:gsl_multifit_fdfsolver_set, libgsl), Cint,
        (Ref{gsl_multifit_fdfsolver}, Ref{gsl_multifit_function_fdf},
        Ref{gsl_vector}), s, fdf, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# These functions free all the memory associated with the solver s.
#
#   Returns: Nothing
function multifit_fsolver_free(s::Ref{gsl_multifit_fsolver})
    ccall( (:gsl_multifit_fsolver_free, libgsl), Nothing,
        (Ref{gsl_multifit_fsolver}, ), s )
end


# These functions free all the memory associated with the solver s.
#
#   Returns: Nothing
function multifit_fdfsolver_free(s::Ref{gsl_multifit_fdfsolver})
    ccall( (:gsl_multifit_fdfsolver_free, libgsl), Nothing,
        (Ref{gsl_multifit_fdfsolver}, ), s )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
#
#   Returns: Ptr{Cchar}
function multifit_fsolver_name(s::Ref{gsl_multifit_fsolver})
    output_string = output_ptr = ccall( (:gsl_multifit_fsolver_name,
        libgsl), Ptr{Cchar}, (Ref{gsl_multifit_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
#
#   Returns: Ptr{Cchar}
function multifit_fdfsolver_name(s::Ref{gsl_multifit_fdfsolver})
    output_string = output_ptr = ccall( (:gsl_multifit_fdfsolver_name,
        libgsl), Ptr{Cchar}, (Ref{gsl_multifit_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end
