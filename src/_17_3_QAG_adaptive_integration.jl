#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 17.3 QAG adaptive integration #
#################################
export integration_workspace_alloc, integration_workspace_free, integration_qag




# This function allocates a workspace sufficient to hold n double precision
# intervals, their integration results and error estimates.
#
#   Returns: Ptr{gsl_integration_workspace}
function integration_workspace_alloc(n::Integer)
    output_ptr = ccall( (:gsl_integration_workspace_alloc, libgsl),
        Ptr{gsl_integration_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number integration_workspace_alloc


# This function frees the memory associated with the workspace w.
#
#   Returns: Void
function integration_workspace_free(w::Ref{gsl_integration_workspace})
    ccall( (:gsl_integration_workspace_free, libgsl), Void,
        (Ref{gsl_integration_workspace}, ), w )
end


# This function applies an integration rule adaptively until an estimate of the
# integral of f over (a,b) is achieved within the desired absolute and relative
# error limits, epsabs and epsrel.  The function returns the final
# approximation, result, and an estimate of the absolute error, abserr.  The
# integration rule is determined by the value of key, which should be chosen
# from the following symbolic names,                 GSL_INTEG_GAUSS15  (key =
# 1)           GSL_INTEG_GAUSS21  (key = 2)           GSL_INTEG_GAUSS31  (key =
# 3)           GSL_INTEG_GAUSS41  (key = 4)           GSL_INTEG_GAUSS51  (key =
# 5)           GSL_INTEG_GAUSS61  (key = 6)  corresponding to the 15, 21, 31,
# 41, 51 and 61 point Gauss-Kronrod rules.  The higher-order rules give better
# accuracy for smooth functions, while lower-order rules save time when the
# function contains local difficulties, such as discontinuities.          On
# each iteration the adaptive integration strategy bisects the interval with
# the largest error estimate.  The subintervals and their results are stored in
# the memory provided by workspace.  The maximum number of subintervals is
# given by limit, which may not exceed the allocated size of the workspace.
#
#   Returns: Cint
function integration_qag(f::Ref{gsl_function}, a::Real, b::Real, epsabs::Real, epsrel::Real, limit::Integer, key::Integer)
    workspace = Ref{gsl_integration_workspace}()
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_integration_qag, libgsl), Cint,
        (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Cint,
        Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b,
        epsabs, epsrel, limit, key, workspace, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return workspace[], result[], abserr[]
end
