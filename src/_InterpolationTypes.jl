#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 27.3 Interpolation Types #
############################
export gsl_interp_linear, gsl_interp_polynomial, gsl_interp_cspline,
       gsl_interp_cspline_periodic, gsl_interp_akima,
       gsl_interp_akima_periodic, gsl_interp_name, gsl_interp_min_size,
       gsl_interp_type_min_size


### Function uses unknown type; disabled
### # Linear interpolation.  This interpolation method does not require any
# additional memory.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_linear ()
###     ccall( (:gsl_interp_linear, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # Polynomial interpolation.  This method should only be used for interpolating
# small numbers of points because polynomial interpolation introduces large
# oscillations, even for well-behaved datasets.  The number of terms in the
# interpolating polynomial is equal to the number of points.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_polynomial ()
###     ccall( (:gsl_interp_polynomial, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # Cubic spline with natural boundary conditions.  The resulting curve is
# piecewise cubic on each interval, with matching first and second derivatives
# at the supplied data-points.  The second derivative is chosen to be zero at
# the first point and last point.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_cspline ()
###     ccall( (:gsl_interp_cspline, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # Cubic spline with periodic boundary conditions.  The resulting curve is
# piecewise cubic on each interval, with matching first and second derivatives
# at the supplied data-points.  The derivatives at the first and last points
# are also matched.  Note that the last point in the data must have the same
# y-value as the first point, otherwise the resulting periodic interpolation
# will have a discontinuity at the boundary.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_cspline_periodic ()
###     ccall( (:gsl_interp_cspline_periodic, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # Non-rounded Akima spline with natural boundary conditions.  This method uses
# the non-rounded corner algorithm of Wodicka.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_akima ()
###     ccall( (:gsl_interp_akima, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # Non-rounded Akima spline with periodic boundary conditions.  This method uses
# the non-rounded corner algorithm of Wodicka.
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_interp_akima_periodic ()
###     ccall( (:gsl_interp_akima_periodic, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function returns the name of the interpolation type used by interp.  For
# example,                 printf ("interp uses '%s' interpolation.\n",
# gsl_interp_name (interp));  would print something like,
# interp uses 'cspline' interpolation.
# 
### #   Returns: Ptr{Cchar}
### #XXX Unknown input type interp::Ptr{gsl_interp}
### function gsl_interp_name (interp::Ptr{gsl_interp})
###     ccall( (:gsl_interp_name, "libgsl"), Ptr{Cchar}, (Ptr{gsl_interp}, ),
###         interp )
### end


### Function uses unknown type; disabled
### # These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
### #   Returns: Cuint
### #XXX Unknown input type interp::Ptr{gsl_interp}
### function gsl_interp_min_size (interp::Ptr{gsl_interp})
###     ccall( (:gsl_interp_min_size, "libgsl"), Cuint, (Ptr{gsl_interp}, ),
###         interp )
### end


### Function uses unknown type; disabled
### # These functions return the minimum number of points required by the
# interpolation object interp or interpolation type T.  For example, Akima
# spline interpolation requires a minimum of 5 points.
# 
### #   Returns: Cuint
### #XXX Unknown input type T::Ptr{gsl_interp_type}
### function gsl_interp_type_min_size (T::Ptr{gsl_interp_type})
###     ccall( (:gsl_interp_type_min_size, "libgsl"), Cuint,
###         (Ptr{gsl_interp_type}, ), T )
### end