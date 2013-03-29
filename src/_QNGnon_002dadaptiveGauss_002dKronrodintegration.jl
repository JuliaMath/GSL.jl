#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################################
# 17.2 QNG non-adaptive Gauss-Kronrod integration #
###################################################
export gsl_integration_qng


# This function applies the Gauss-Kronrod 10-point, 21-point, 43-point and
# 87-point integration rules in succession until an estimate of the integral of
# f over (a,b) is achieved within the desired absolute and relative error
# limits, epsabs and epsrel.  The function returns the final approximation,
# result, an estimate of the absolute error, abserr and the number of function
# evaluations used, neval.  The Gauss-Kronrod rules are designed in such a way
# that each rule uses all the results of its predecessors, in order to minimize
# the total number of function evaluations.
# 
#   Returns: Cint
function gsl_integration_qng (f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, result::Ptr{Cdouble}, abserr::Ptr{Cdouble}, neval::Ptr{Csize_t})
    ccall( (:gsl_integration_qng, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Csize_t}), f, a, b, epsabs, epsrel, result, abserr, neval )
end
