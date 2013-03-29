#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 36.5 Iteration #
##################
export gsl_multimin_fdfminimizer_iterate, gsl_multimin_fminimizer_iterate,
       gsl_multimin_fdfminimizer_x, gsl_multimin_fminimizer_x,
       gsl_multimin_fdfminimizer_minimum, gsl_multimin_fminimizer_minimum,
       gsl_multimin_fdfminimizer_gradient, gsl_multimin_fminimizer_size,
       gsl_multimin_fdfminimizer_restart


# These functions perform a single iteration of the minimizer s.  If the
# iteration encounters an unexpected problem then an error code will be
# returned.  The error code GSL_ENOPROG signifies that the minimizer is unable
# to improve on its current estimate, either due to numerical difficulty or
# because a genuine local minimum has been reached.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multimin_fdfminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fdfminimizer_iterate (s::Ptr{Void})
    ccall( (:gsl_multimin_fdfminimizer_iterate, "libgsl"), Cint,
        (Ptr{Void}, ), s )
end


# These functions perform a single iteration of the minimizer s.  If the
# iteration encounters an unexpected problem then an error code will be
# returned.  The error code GSL_ENOPROG signifies that the minimizer is unable
# to improve on its current estimate, either due to numerical difficulty or
# because a genuine local minimum has been reached.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multimin_fminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fminimizer_iterate (s::Ptr{Void})
    ccall( (:gsl_multimin_fminimizer_iterate, "libgsl"), Cint, (Ptr{Void},
        ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multimin_fdfminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fdfminimizer_x (s::Ptr{Void})
    ccall( (:gsl_multimin_fdfminimizer_x, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multimin_fminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fminimizer_x (s::Ptr{Void})
    ccall( (:gsl_multimin_fminimizer_x, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_multimin_fdfminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fdfminimizer_minimum (s::Ptr{Void})
    ccall( (:gsl_multimin_fdfminimizer_minimum, "libgsl"), Cdouble,
        (Ptr{Void}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_multimin_fminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fminimizer_minimum (s::Ptr{Void})
    ccall( (:gsl_multimin_fminimizer_minimum, "libgsl"), Cdouble,
        (Ptr{Void}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multimin_fdfminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fdfminimizer_gradient (s::Ptr{Void})
    ccall( (:gsl_multimin_fdfminimizer_gradient, "libgsl"),
        Ptr{gsl_vector}, (Ptr{Void}, ), s )
end


# These functions return the current best estimate of the location of the
# minimum, the value of the function at that point, its gradient, and minimizer
# specific characteristic size for the minimizer s.
# 
#   Returns: Cdouble
#XXX Unknown input type s::Ptr{gsl_multimin_fminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fminimizer_size (s::Ptr{Void})
    ccall( (:gsl_multimin_fminimizer_size, "libgsl"), Cdouble, (Ptr{Void},
        ), s )
end


# This function resets the minimizer s to use the current point as a new
# starting point.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multimin_fdfminimizer}
#XXX Coerced type for s::Ptr{Void}
function gsl_multimin_fdfminimizer_restart (s::Ptr{Void})
    ccall( (:gsl_multimin_fdfminimizer_restart, "libgsl"), Cint,
        (Ptr{Void}, ), s )
end
