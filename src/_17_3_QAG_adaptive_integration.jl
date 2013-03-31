#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 17.3 QAG adaptive integration #
#################################
export gsl_integration_workspace_alloc, gsl_integration_workspace_free,
       gsl_integration_qag




# This function allocates a workspace sufficient to hold n double precision
# intervals, their integration results and error estimates.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_integration_workspace}
#XXX Coerced type for output Ptr{Void}
function gsl_integration_workspace_alloc{gsl_int<:Integer}(n::gsl_int)
    ccall( (:gsl_integration_workspace_alloc, :libgsl), Ptr{Void},
        (Csize_t, ), n )
end


# This function frees the memory associated with the workspace w.
# 
#   Returns: Void
#XXX Unknown input type w::Ptr{gsl_integration_workspace}
#XXX Coerced type for w::Ptr{Void}
function gsl_integration_workspace_free(w::Ptr{Void})
    ccall( (:gsl_integration_workspace_free, :libgsl), Void, (Ptr{Void}, ),
        w )
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
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qag{gsl_int<:Integer}(f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, key::gsl_int, workspace::Ptr{Void})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qag, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Cint,
        Ptr{Void}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b, epsabs, epsrel, limit,
        key, workspace, result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result) ,unsafe_ref(abserr)
end
