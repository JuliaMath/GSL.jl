#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 39.6 Greville abscissae #
###########################
export bspline_greville_abscissa


# Returns the location of the i-th Greville abscissa for the given spline
# basis.  Here, i = 0, ..., gsl_bspline_ncoeffs(w) - 1.
# 
#   Returns: Cdouble
function bspline_greville_abscissa(i::Integer, w::Ptr{gsl_bspline_workspace})
    ccall( (:gsl_bspline_greville_abscissa, libgsl), Cdouble, (Csize_t,
        Ptr{gsl_bspline_workspace}), i, w )
end
