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
function root_fsolver_alloc(T::Ref{gsl_root_fsolver_type})
    output_ptr = ccall( (:gsl_root_fsolver_alloc, libgsl),
        Ptr{gsl_root_fsolver}, (Ref{gsl_root_fsolver_type}, ), T )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
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
function root_fdfsolver_alloc(T::Ref{gsl_root_fdfsolver_type})
    output_ptr = ccall( (:gsl_root_fdfsolver_alloc, libgsl),
        Ptr{gsl_root_fdfsolver}, (Ref{gsl_root_fdfsolver_type}, ), T )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial search interval [x_lower, x_upper].
#
#   Returns: Cint
function root_fsolver_set(s::Ref{gsl_root_fsolver}, f::Ref{gsl_function}, x_lower::Real, x_upper::Real)
    errno = ccall( (:gsl_root_fsolver_set, libgsl), Cint,
        (Ref{gsl_root_fsolver}, Ref{gsl_function}, Cdouble, Cdouble), s, f,
        x_lower, x_upper )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end


# This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess root.
#
#   Returns: Cint
function root_fdfsolver_set(s::Ref{gsl_root_fdfsolver}, fdf::Ref{gsl_function_fdf}, root::Real)
    errno = ccall( (:gsl_root_fdfsolver_set, libgsl), Cint,
        (Ref{gsl_root_fdfsolver}, Ref{gsl_function_fdf}, Cdouble), s, fdf, root
        )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end

