#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 27.3 Interpolation Types #
############################
export gsl_interp_name, gsl_interp_min_size, gsl_interp_type_min_size






# This function returns the name of the interpolation type used by interp.  For
# example,                 printf ("interp uses '%s' interpolation.\n",
# gsl_interp_name (interp));  would print something like,
# interp uses 'cspline' interpolation.
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type interp::Ptr{gsl_interp}
#XXX Coerced type for interp::Ptr{Void}
function gsl_interp_name (interp::Ptr{Void})
    ccall( (:gsl_interp_name, "libgsl"), Ptr{Cchar}, (Ptr{Void}, ), interp
        )
end


# These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
#   Returns: Cuint
#XXX Unknown input type interp::Ptr{gsl_interp}
#XXX Coerced type for interp::Ptr{Void}
function gsl_interp_min_size (interp::Ptr{Void})
    ccall( (:gsl_interp_min_size, "libgsl"), Cuint, (Ptr{Void}, ), interp )
end


# These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
#   Returns: Cuint
#XXX Unknown input type T::Ptr{gsl_interp_type}
#XXX Coerced type for T::Ptr{Void}
function gsl_interp_type_min_size (T::Ptr{Void})
    ccall( (:gsl_interp_type_min_size, "libgsl"), Cuint, (Ptr{Void}, ), T )
end
