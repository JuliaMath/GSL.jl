#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################################
# 17.9 QAWO adaptive integration for oscillatory functions #
############################################################
export integration_qawo_table_alloc, integration_qawo_table_set,
       integration_qawo_table_set_length, integration_qawo_table_free,
       integration_qawo








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
function integration_qawo_table_alloc(omega::Real, L::Real, sine::enumgsl_integration_qawo_enum, n::Integer)
    output_ptr = ccall( (:gsl_integration_qawo_table_alloc, libgsl),
        Ptr{gsl_integration_qawo_table}, (Cdouble, Cdouble,
        enumgsl_integration_qawo_enum, Csize_t), omega, L, sine, n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# This function changes the parameters omega, L and sine of the existing
# workspace t.
#
#   Returns: Cint
function integration_qawo_table_set(t::Ref{gsl_integration_qawo_table}, omega::Real, L::Real, sine::enumgsl_integration_qawo_enum)
    errno = ccall( (:gsl_integration_qawo_table_set, libgsl), Cint,
        (Ref{gsl_integration_qawo_table}, Cdouble, Cdouble,
        enumgsl_integration_qawo_enum), t, omega, L, sine )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function allows the length parameter L of the workspace t to be changed.
#
#   Returns: Cint
function integration_qawo_table_set_length(L::Real)
    t = Ref{gsl_integration_qawo_table}()
    errno = ccall( (:gsl_integration_qawo_table_set_length, libgsl), Cint,
        (Ref{gsl_integration_qawo_table}, Cdouble), t, L )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return t[]
end
Compat.@dep_vectorize_1arg Number integration_qawo_table_set_length


# This function frees all the memory associated with the workspace t.
#
#   Returns: Void
function integration_qawo_table_free(t::Ref{gsl_integration_qawo_table})
    ccall( (:gsl_integration_qawo_table_free, libgsl), Void,
        (Ref{gsl_integration_qawo_table}, ), t )
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
function integration_qawo(a::Real, epsabs::Real, epsrel::Real, limit::Integer)
    f = Ref{gsl_function}()
    workspace = Ref{gsl_integration_workspace}()
    wf = Ref{gsl_integration_qawo_table}()
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_integration_qawo, libgsl), Cint,
        (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t,
        Ref{gsl_integration_workspace}, Ref{gsl_integration_qawo_table},
        Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, epsrel, limit, workspace,
        wf, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return f[], workspace[], wf[], result[], abserr[]
end
