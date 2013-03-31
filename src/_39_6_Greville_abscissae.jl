#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 39.6 Greville abscissae #
###########################
export gsl_bspline_greville_abscissa


# Returns the location of the i-th Greville abscissa for the given spline
# basis.  Here, i = 0, ..., gsl_bspline_ncoeffs(w) - 1.
# 
#   Returns: Cdouble
#XXX Unknown input type w::Ptr{gsl_bspline_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_bspline_greville_abscissa{gsl_int<:Integer}(i::gsl_int, w::Ptr{Void})
    ccall( (:gsl_bspline_greville_abscissa, :libgsl), Cdouble, (Csize_t,
        Ptr{Void}), i, w )
end
