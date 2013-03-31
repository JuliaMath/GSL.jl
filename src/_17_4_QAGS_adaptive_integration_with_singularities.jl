#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 17.4 QAGS adaptive integration with singularities #
#####################################################
export gsl_integration_qags


# This function applies the Gauss-Kronrod 21-point integration rule adaptively
# until an estimate of the integral of f over (a,b) is achieved within the
# desired absolute and relative error limits, epsabs and epsrel.  The results
# are extrapolated using the epsilon-algorithm, which accelerates the
# convergence of the integral in the presence of discontinuities and integrable
# singularities.  The function returns the final approximation from the
# extrapolation, result, and an estimate of the absolute error, abserr.  The
# subintervals and their results are stored in the memory provided by
# workspace.  The maximum number of subintervals is given by limit, which may
# not exceed the allocated size of the workspace.
# 
#   Returns: Cint
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qags{gsl_int<:Integer}(f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qags, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t,
        Ptr{Void}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b, epsabs, epsrel, limit,
        workspace, result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result) ,unsafe_ref(abserr)
end
