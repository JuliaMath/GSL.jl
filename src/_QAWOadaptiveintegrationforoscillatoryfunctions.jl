#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################################
# 17.9 QAWO adaptive integration for oscillatory functions #
############################################################
export gsl_integration_qawo_table_alloc, gsl_integration_qawo_table_set,
       gsl_integration_qawo_table_set_length, gsl_integration_qawo_table_free,
       gsl_integration_qawo


# This function allocates space for a gsl_integration_qawo_table struct and its
# associated workspace describing a sine or cosine weight function W(x) with
# the parameters (\omega, L),                 W(x) = sin(omega x)
# W(x) = cos(omega x)  The parameter L must be the length of the interval over
# which the function will be integrated L = b - a.  The choice of sine or
# cosine is made with the parameter sine which should be chosen from one of the
# two following symbolic values:                 GSL_INTEG_COSINE
# GSL_INTEG_SINE  The gsl_integration_qawo_table is a table of the
# trigonometric coefficients required in the integration process.  The
# parameter n determines the number of levels of coefficients that are
# computed.  Each level corresponds to one bisection of the interval L, so that
# n levels are sufficient for subintervals down to the length L/2^n.  The
# integration routine gsl_integration_qawo returns the error GSL_ETABLE if the
# number of levels is insufficient for the requested accuracy.
# 
#   Returns: Ptr{gsl_integration_qawo_table}
function gsl_integration_qawo_table_alloc (omega::Cdouble, L::Cdouble, sine::enumgsl_integration_qawo_enum, n::Csize_t)
    ccall( (:gsl_integration_qawo_table_alloc, "libgsl"),
        Ptr{gsl_integration_qawo_table}, (Cdouble, Cdouble,
        enumgsl_integration_qawo_enum, Csize_t), omega, L, sine, n )
end


# This function changes the parameters omega, L and sine of the existing
# workspace t.
# 
#   Returns: Cint
function gsl_integration_qawo_table_set (t::Ptr{gsl_integration_qawo_table}, omega::Cdouble, L::Cdouble, sine::enumgsl_integration_qawo_enum)
    ccall( (:gsl_integration_qawo_table_set, "libgsl"), Cint,
        (Ptr{gsl_integration_qawo_table}, Cdouble, Cdouble,
        enumgsl_integration_qawo_enum), t, omega, L, sine )
end


# This function allows the length parameter L of the workspace t to be changed.
# 
#   Returns: Cint
function gsl_integration_qawo_table_set_length (t::Ptr{gsl_integration_qawo_table}, L::Cdouble)
    ccall( (:gsl_integration_qawo_table_set_length, "libgsl"), Cint,
        (Ptr{gsl_integration_qawo_table}, Cdouble), t, L )
end


# This function frees all the memory associated with the workspace t.
# 
#   Returns: Void
function gsl_integration_qawo_table_free (t::Ptr{gsl_integration_qawo_table})
    ccall( (:gsl_integration_qawo_table_free, "libgsl"), Void,
        (Ptr{gsl_integration_qawo_table}, ), t )
end


# This function uses an adaptive algorithm to compute the integral of f over
# (a,b) with the weight function \sin(\omega x) or \cos(\omega x) defined by
# the table wf,                 I = \int_a^b dx f(x) sin(omega x)           I =
# \int_a^b dx f(x) cos(omega x)  The results are extrapolated using the
# epsilon-algorithm to accelerate the convergence of the integral.  The
# function returns the final approximation from the extrapolation, result, and
# an estimate of the absolute error, abserr.  The subintervals and their
# results are stored in the memory provided by workspace.  The maximum number
# of subintervals is given by limit, which may not exceed the allocated size of
# the workspace.          Those subintervals with “large” widths d where
# d\omega > 4 are computed using a 25-point Clenshaw-Curtis integration rule,
# which handles the oscillatory behavior.  Subintervals with a “small” widths
# where d\omega < 4 are computed using a 15-point Gauss-Kronrod integration.
# 
#   Returns: Cint
function gsl_integration_qawo (f::Ptr{gsl_function}, a::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, wf::Ptr{gsl_integration_qawo_table}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
    ccall( (:gsl_integration_qawo, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Cdouble, Csize_t, Ptr{gsl_integration_workspace},
        Ptr{gsl_integration_qawo_table}, Ptr{Cdouble}, Ptr{Cdouble}), f, a,
        epsabs, epsrel, limit, workspace, wf, result, abserr )
end