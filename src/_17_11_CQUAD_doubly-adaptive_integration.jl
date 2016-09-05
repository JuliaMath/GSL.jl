#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 17.11 CQUAD doubly-adaptive integration #
###########################################
export integration_cquad_workspace_alloc, integration_cquad_workspace_free,
       integration_cquad


# This function allocates a workspace sufficient to hold the data for n
# intervals. The number n is not the maximum number of intervals that will be
# evaluated. If the workspace is full, intervals with smaller error estimates
# will be discarded. A minimum of 3 intervals is required and or most
# functions, a workspace of size 100 is sufficient.
#
#   Returns: Ptr{gsl_integration_cquad_workspace}
function integration_cquad_workspace_alloc(n::Integer)
    output_ptr = ccall( (:gsl_integration_cquad_workspace_alloc, libgsl),
        Ptr{gsl_integration_cquad_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number integration_cquad_workspace_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function integration_cquad_workspace_free(w::Ref{gsl_integration_cquad_workspace})
    ccall( (:gsl_integration_cquad_workspace_free, libgsl), Void,
        (Ref{gsl_integration_cquad_workspace}, ), w )
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
function integration_cquad(f::Ref{gsl_function}, a::Real, b::Real, epsabs::Real, epsrel::Real)
    workspace = Ref{gsl_integration_cquad_workspace}()
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    nevals = Ref{Csize_t}()
    errno = ccall( (:gsl_integration_cquad, libgsl), Cint,
        (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble,
        Ref{gsl_integration_cquad_workspace}, Ref{Cdouble}, Ref{Cdouble},
        Ref{Csize_t}), f, a, b, epsabs, epsrel, workspace, result, abserr,
        nevals )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return workspace[], result[], abserr[], nevals[]
end
