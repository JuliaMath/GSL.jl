#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 38.2 Initializing the Solver #
################################
export gsl_multifit_fsolver_alloc, gsl_multifit_fdfsolver_alloc,
       gsl_multifit_fsolver_set, gsl_multifit_fdfsolver_set,
       gsl_multifit_fsolver_free, gsl_multifit_fdfsolver_free,
       gsl_multifit_fsolver_name, gsl_multifit_fdfsolver_name






# This function returns a pointer to a newly allocated instance of a solver of
# type T for n observations and p parameters.  The number of observations n
# must be greater than or equal to parameters p.          If there is
# insufficient memory to create the solver then the function returns a null
# pointer and the error handler is invoked with an error code of GSL_ENOMEM.
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_multifit_fsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_multifit_fsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_multifit_fsolver_alloc{gsl_int<:Integer}(T::Ptr{Void}, n::gsl_int, p::gsl_int)
    ccall( (:gsl_multifit_fsolver_alloc, :libgsl), Ptr{Void}, (Ptr{Void},
        Csize_t, Csize_t), T, n, p )
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
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_multifit_fdfsolver_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_multifit_fdfsolver}
#XXX Coerced type for output Ptr{Void}
function gsl_multifit_fdfsolver_alloc{gsl_int<:Integer}(T::Ptr{Void}, n::gsl_int, p::gsl_int)
    ccall( (:gsl_multifit_fdfsolver_alloc, :libgsl), Ptr{Void}, (Ptr{Void},
        Csize_t, Csize_t), T, n, p )
end


# This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial guess x.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fsolver_set(s::Ptr{Void}, f::Ptr{gsl_multifit_function}, x::Ptr{gsl_vector})
    gsl_errno = ccall( (:gsl_multifit_fsolver_set, :libgsl), Cint,
        (Ptr{Void}, Ptr{gsl_multifit_function}, Ptr{gsl_vector}), s, f, x )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess x.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fdfsolver_set(s::Ptr{Void}, fdf::Ptr{gsl_multifit_function_fdf}, x::Ptr{gsl_vector})
    gsl_errno = ccall( (:gsl_multifit_fdfsolver_set, :libgsl), Cint,
        (Ptr{Void}, Ptr{gsl_multifit_function_fdf}, Ptr{gsl_vector}), s, fdf, x
        )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fsolver_free(s::Ptr{Void})
    ccall( (:gsl_multifit_fsolver_free, :libgsl), Void, (Ptr{Void}, ), s )
end


# These functions free all the memory associated with the solver s.
# 
#   Returns: Void
#XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fdfsolver_free(s::Ptr{Void})
    ccall( (:gsl_multifit_fdfsolver_free, :libgsl), Void, (Ptr{Void}, ), s
        )
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fsolver_name(s::Ptr{Void})
    output_string = ccall( (:gsl_multifit_fsolver_name, :libgsl),
        Ptr{Cchar}, (Ptr{Void}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multifit_fdfsolver_name(s::Ptr{Void})
    output_string = ccall( (:gsl_multifit_fdfsolver_name, :libgsl),
        Ptr{Cchar}, (Ptr{Void}, ), s )
    bytestring(convert(Ptr{Uint8}, output_string))
end
