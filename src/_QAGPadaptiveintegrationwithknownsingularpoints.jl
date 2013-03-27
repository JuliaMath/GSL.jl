#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################################
# 17.5 QAGP adaptive integration with known singular points #
#############################################################
export gsl_integration_qagp


# This function applies the adaptive integration algorithm QAGS taking account
# of the user-supplied locations of singular points.  The array pts of length
# npts should contain the endpoints of the integration ranges defined by the
# integration region and locations of the singularities.  For example, to
# integrate over the region (a,b) with break-points at x_1, x_2, x_3 (where a <
# x_1 < x_2 < x_3 < b) the following pts array should be used
# pts[0] = a           pts[1] = x_1           pts[2] = x_2           pts[3] =
# x_3           pts[4] = b  with npts = 5.       If you know the locations of
# the singular points in the integration region then this routine will be
# faster than QAGS.
# 
#   Returns: Cint
function gsl_integration_qagp (f::Ptr{gsl_function}, pts::Ptr{Cdouble}, npts::Csize_t, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
    ccall( (:gsl_integration_qagp, "libgsl"), Cint, (Ptr{gsl_function},
        Ptr{Cdouble}, Csize_t, Cdouble, Cdouble, Csize_t,
        Ptr{gsl_integration_workspace}, Ptr{Cdouble}, Ptr{Cdouble}), f, pts,
        npts, epsabs, epsrel, limit, workspace, result, abserr )
end