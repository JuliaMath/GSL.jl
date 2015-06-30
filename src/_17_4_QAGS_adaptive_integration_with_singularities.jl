#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 17.4 QAGS adaptive integration with singularities #
#####################################################
export integration_qags


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
function integration_qags(f::Ptr{gsl_function}, a::Real, b::Real, epsabs::Real, epsrel::Real, limit::Integer)
    workspace = convert(Ptr{gsl_integration_workspace}, Array(gsl_integration_workspace, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_integration_qags, libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t,
        Ptr{gsl_integration_workspace}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b,
        epsabs, epsrel, limit, workspace, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(workspace), unsafe_load(result), unsafe_load(abserr)
end
