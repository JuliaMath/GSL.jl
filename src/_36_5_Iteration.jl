#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 36.5 Iteration #
##################
export multimin_fdfminimizer_iterate, multimin_fminimizer_iterate,
       multimin_fdfminimizer_x, multimin_fminimizer_x,
       multimin_fdfminimizer_minimum, multimin_fminimizer_minimum,
       multimin_fdfminimizer_gradient, multimin_fminimizer_size,
       multimin_fdfminimizer_restart


# These functions perform a single iteration of the minimizer s.  If the
# iteration encounters an unexpected problem then an error code will be
# returned.  The error code GSL_ENOPROG signifies that the minimizer is unable
# to improve on its current estimate, either due to numerical difficulty or
# because a genuine local minimum has been reached.
# 
#   Returns: Cint
function multimin_fdfminimizer_iterate()
    s = Ref{gsl_multimin_fdfminimizer}()
    errno = ccall( (:gsl_multimin_fdfminimizer_iterate, libgsl), Cint,
        (Ref{gsl_multimin_fdfminimizer}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# These functions perform a single iteration of the minimizer s.  If the
# iteration encounters an unexpected problem then an error code will be
# returned.  The error code GSL_ENOPROG signifies that the minimizer is unable
# to improve on its current estimate, either due to numerical difficulty or
# because a genuine local minimum has been reached.
# 
#   Returns: Cint
function multimin_fminimizer_iterate()
    s = Ref{gsl_multimin_fminimizer}()
    errno = ccall( (:gsl_multimin_fminimizer_iterate, libgsl), Cint,
        (Ref{gsl_multimin_fminimizer}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ref{gsl_vector}
function multimin_fdfminimizer_x(s::Ref{gsl_multimin_fdfminimizer})
    output_ptr = ccall( (:gsl_multimin_fdfminimizer_x, libgsl),
        Ref{gsl_vector}, (Ref{gsl_multimin_fdfminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ref{gsl_vector}
function multimin_fminimizer_x(s::Ref{gsl_multimin_fminimizer})
    output_ptr = ccall( (:gsl_multimin_fminimizer_x, libgsl),
        Ref{gsl_vector}, (Ref{gsl_multimin_fminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
function multimin_fdfminimizer_minimum(s::Ref{gsl_multimin_fdfminimizer})
    ccall( (:gsl_multimin_fdfminimizer_minimum, libgsl), Cdouble,
        (Ref{gsl_multimin_fdfminimizer}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
function multimin_fminimizer_minimum(s::Ref{gsl_multimin_fminimizer})
    ccall( (:gsl_multimin_fminimizer_minimum, libgsl), Cdouble,
        (Ref{gsl_multimin_fminimizer}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ref{gsl_vector}
function multimin_fdfminimizer_gradient(s::Ref{gsl_multimin_fdfminimizer})
    output_ptr = ccall( (:gsl_multimin_fdfminimizer_gradient, libgsl),
        Ref{gsl_vector}, (Ref{gsl_multimin_fdfminimizer}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
function multimin_fminimizer_size(s::Ref{gsl_multimin_fminimizer})
    ccall( (:gsl_multimin_fminimizer_size, libgsl), Cdouble,
        (Ref{gsl_multimin_fminimizer}, ), s )
end


# This function resets the minimizer s to use the current point as a new
# starting point.
# 
#   Returns: Cint
function multimin_fdfminimizer_restart()
    s = Ref{gsl_multimin_fdfminimizer}()
    errno = ccall( (:gsl_multimin_fdfminimizer_restart, libgsl), Cint,
        (Ref{gsl_multimin_fdfminimizer}, ), s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return s[]
end
