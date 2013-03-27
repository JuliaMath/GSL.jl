#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 17.11 CQUAD doubly-adaptive integration #
###########################################
export gsl_integration_cquad_workspace_alloc,
       gsl_integration_cquad_workspace_free, gsl_integration_cquad


# This function allocates a workspace sufficient to hold the data for n
# intervals. The number n is not the maximum number of intervals that will be
# evaluated. If the workspace is full, intervals with smaller error estimates
# will be discarded. A minimum of 3 intervals is required and or most
# functions, a workspace of size 100 is sufficient.
# 
#   Returns: Ptr{gsl_integration_cquad_workspace}
function gsl_integration_cquad_workspace_alloc (n::Csize_t)
    ccall( (:gsl_integration_cquad_workspace_alloc, "libgsl"),
        Ptr{gsl_integration_cquad_workspace}, (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
function gsl_integration_cquad_workspace_free (w::Ptr{gsl_integration_cquad_workspace})
    ccall( (:gsl_integration_cquad_workspace_free, "libgsl"), Void,
        (Ptr{gsl_integration_cquad_workspace}, ), w )
end


# This function computes the integral of f over (a,b) within the desired
# absolute and relative error limits, epsabs and epsrel using the cquad
# algorithm.  The function returns the final approximation, result, an estimate
# of the absolute error, abserr, and the number of function evaluations
# required, nevals.          The cquad algorithm divides the integration region
# into subintervals, and in each iteration, the subinterval with the largest
# estimated error is processed.  The algorithm uses Clenshaw-Curits quadrature
# rules of degree 4, 8, 16 and 32 over 5, 9, 17 and 33 nodes respectively. Each
# interval is initialized with the lowest-degree rule. When an interval is
# processed, the next-higher degree rule is evaluated and an error estimate is
# computed based on the L_2-norm of the difference between the underlying
# interpolating polynomials of both rules. If the highest-degree rule has
# already been used, or the interpolatory polynomials differ significantly, the
# interval is bisected.          The subintervals and their results are stored
# in the memory provided by workspace. If the error estimate or the number of
# function evaluations is not needed, the pointers abserr and nevals can be set
# to NULL.
# 
#   Returns: Cint
function gsl_integration_cquad (f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, workspace::Ptr{gsl_integration_cquad_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble}, nevals::Ptr{Csize_t})
    ccall( (:gsl_integration_cquad, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Cdouble, Cdouble,
        Ptr{gsl_integration_cquad_workspace}, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Csize_t}), f, a, b, epsabs, epsrel, workspace, result, abserr,
        nevals )
end