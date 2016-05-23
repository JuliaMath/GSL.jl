#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################################
# 36.3 Initializing the Multidimensional Minimizer #
####################################################
export multimin_fdfminimizer_alloc, multimin_fminimizer_alloc,
       multimin_fdfminimizer_set, multimin_fminimizer_set,
       multimin_fdfminimizer_free, multimin_fminimizer_free,
       multimin_fdfminimizer_name, multimin_fminimizer_name

# This function returns a pointer to a newly allocated instance of a minimizer
# of type T for an n-dimension function.  If there is insufficient memory to
# create the minimizer then the function returns a null pointer and the error
# handler is invoked with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_multimin_fdfminimizer}
function multimin_fdfminimizer_alloc(T::Ref{gsl_multimin_fdfminimizer_type}, n::Integer)
    output_ptr = ccall( (:gsl_multimin_fdfminimizer_alloc, libgsl),
        Ptr{gsl_multimin_fdfminimizer}, (Ref{gsl_multimin_fdfminimizer_type},
        Csize_t), T, n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function returns a pointer to a newly allocated instance of a minimizer
# of type T for an n-dimension function.  If there is insufficient memory to
# create the minimizer then the function returns a null pointer and the error
# handler is invoked with an error code of GSL_ENOMEM.
#
#   Returns: Ptr{gsl_multimin_fminimizer}
function multimin_fminimizer_alloc(T::Ref{gsl_multimin_fminimizer_type}, n::Integer)
    output_ptr = ccall( (:gsl_multimin_fminimizer_alloc, libgsl),
        Ptr{gsl_multimin_fminimizer}, (Ref{gsl_multimin_fminimizer_type},
        Csize_t), T, n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function initializes the minimizer s to minimize the function fdf
# starting from the initial point x.  The size of the first trial step is given
# by step_size.  The accuracy of the line minimization is specified by tol.
# The precise meaning of this parameter depends on the method used.  Typically
# the line minimization is considered successful if the gradient of the
# function g is orthogonal to the current search direction p to a relative
# accuracy of tol, where  dot(p,g) < tol |p| |g|.  A tol value of 0.1 is
# suitable for most purposes, since line minimization only needs to be carried
# out approximately.    Note that setting tol to zero will force the use of
# “exact” line-searches, which are extremely expensive.     — Function: int
# gsl_multimin_fminimizer_set (gsl_multimin_fminimizer * s,
# gsl_multimin_function * f, const gsl_vector * x, const gsl_vector *
# step_size) This function initializes the minimizer s to minimize the function
# f, starting from the initial point x. The size of the initial trial steps is
# given in vector step_size. The precise meaning of this parameter depends on
# the method used.
#
#   Returns: Cint
function multimin_fdfminimizer_set(s::Ptr{gsl_multimin_fdfminimizer}, fdf::Ptr{gsl_multimin_function_fdf}, x::Ptr{gsl_vector}, step_size::Real, tol::Real)
    errno = ccall( (:gsl_multimin_fdfminimizer_set, libgsl), Cint,
        (Ptr{gsl_multimin_fdfminimizer}, Ptr{gsl_multimin_function_fdf},
        Ptr{gsl_vector}, Cdouble, Cdouble), s, fdf, x, step_size, tol )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end

#   Returns: Cint
function multimin_fminimizer_set(s::Ptr{gsl_multimin_fminimizer}, f::Ptr{gsl_multimin_function}, x::Ptr{gsl_vector}, step_size::Ptr{gsl_vector})
    errno = ccall( (:gsl_multimin_fminimizer_set, libgsl), Cint,
        (Ptr{gsl_multimin_fminimizer}, Ptr{gsl_multimin_function},
        Ptr{gsl_vector}, Ptr{gsl_vector}), s, f, x, step_size)
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end

# This function frees all the memory associated with the minimizer s.
#
#   Returns: Void
function multimin_fdfminimizer_free(s::Ptr{gsl_multimin_fdfminimizer})
    ccall( (:gsl_multimin_fdfminimizer_free, libgsl), Void,
        (Ptr{gsl_multimin_fdfminimizer}, ), s )
end


# This function frees all the memory associated with the minimizer s.
#
#   Returns: Void
function multimin_fminimizer_free(s::Ptr{gsl_multimin_fminimizer})
    ccall( (:gsl_multimin_fminimizer_free, libgsl), Void,
        (Ptr{gsl_multimin_fminimizer}, ), s )
end


# This function returns a pointer to the name of the minimizer.  For example,
# printf ("s is a '%s' minimizer\n",
# gsl_multimin_fdfminimizer_name (s));  would print something like s is a
# 'conjugate_pr' minimizer.
#
#   Returns: Ptr{Cchar}
function multimin_fdfminimizer_name(s::Ptr{gsl_multimin_fdfminimizer})
    output_string = output_ptr = ccall( (:gsl_multimin_fdfminimizer_name,
        libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fdfminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# This function returns a pointer to the name of the minimizer.  For example,
# printf ("s is a '%s' minimizer\n",
# gsl_multimin_fdfminimizer_name (s));  would print something like s is a
# 'conjugate_pr' minimizer.
#
#   Returns: Ptr{Cchar}
function multimin_fminimizer_name(s::Ptr{gsl_multimin_fminimizer})
    output_string = output_ptr = ccall( (:gsl_multimin_fminimizer_name,
        libgsl), Ptr{Cchar}, (Ptr{gsl_multimin_fminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end
