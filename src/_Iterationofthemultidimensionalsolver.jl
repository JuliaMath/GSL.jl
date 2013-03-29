#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 35.4 Iteration #
##################
export gsl_multiroot_fsolver_iterate, gsl_multiroot_fdfsolver_iterate,
       gsl_multiroot_fdfsolver_iterate, gsl_multiroot_fsolver_root,
       gsl_multiroot_fdfsolver_root, gsl_multiroot_fsolver_f,
       gsl_multiroot_fdfsolver_f, gsl_multiroot_fsolver_dx,
       gsl_multiroot_fdfsolver_dx


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_ENOPROGthe iteration
# is not making any progress, preventing the algorithm from continuing.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_iterate (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_iterate, "libgsl"), Cint, (Ptr{Void}, ),
        s )
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_ENOPROGthe iteration
# is not making any progress, preventing the algorithm from continuing.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_iterate (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_iterate, "libgsl"), Cint, (Ptr{Void},
        ), s )
end


# These functions return the current estimate of the root for the solver s,
# given by s->x.
# 
#   Returns: Cint
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_iterate (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_iterate, "libgsl"), Cint, (Ptr{Void},
        ), s )
end


# These functions return the current estimate of the root for the solver s,
# given by s->x.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_root (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_root, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the current estimate of the root for the solver s,
# given by s->x.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_root (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_root, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the function value f(x) at the current estimate of the
# root for the solver s, given by s->f.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_f (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_f, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the function value f(x) at the current estimate of the
# root for the solver s, given by s->f.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_f (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_f, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the last step dx taken by the solver s, given by
# s->dx.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fsolver_dx (s::Ptr{Void})
    ccall( (:gsl_multiroot_fsolver_dx, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end


# These functions return the last step dx taken by the solver s, given by
# s->dx.
# 
#   Returns: Ptr{gsl_vector}
#XXX Unknown input type s::Ptr{gsl_multiroot_fdfsolver}
#XXX Coerced type for s::Ptr{Void}
function gsl_multiroot_fdfsolver_dx (s::Ptr{Void})
    ccall( (:gsl_multiroot_fdfsolver_dx, "libgsl"), Ptr{gsl_vector},
        (Ptr{Void}, ), s )
end
