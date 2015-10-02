#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 27.3 Interpolation Types #
############################
export interp_name, interp_min_size, interp_type_min_size






# This function returns the name of the interpolation type used by interp.  For
# example,                 printf ("interp uses '%s' interpolation.\n",
# gsl_interp_name (interp));  would print something like,
# interp uses 'cspline' interpolation.
# 
#   Returns: Ref{Cchar}
function interp_name(interp::Ref{gsl_interp})
    output_string = output_ptr = ccall( (:gsl_interp_name, libgsl),
        Ref{Cchar}, (Ref{gsl_interp}, ), interp )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
#   Returns: Cuint
function interp_min_size(interp::Ref{gsl_interp})
    ccall( (:gsl_interp_min_size, libgsl), Cuint, (Ref{gsl_interp}, ),
        interp )
end


# These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
#   Returns: Cuint
function interp_type_min_size(T::Ref{gsl_interp_type})
    ccall( (:gsl_interp_type_min_size, libgsl), Cuint,
        (Ref{gsl_interp_type}, ), T )
end
