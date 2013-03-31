#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################################
# 17.7 QAWC adaptive integration for Cauchy principal values #
##############################################################
export gsl_integration_qawc




# This function computes the Cauchy principal value of the integral of f over
# (a,b), with a singularity at c,                 I = \int_a^b dx f(x) / (x -
# c)  The adaptive bisection algorithm of QAG is used, with modifications to
# ensure that subdivisions do not occur at the singular point x = c.  When a
# subinterval contains the point x = c or is close to it then a special
# 25-point modified Clenshaw-Curtis rule is used to control the singularity.
# Further away from the singularity the algorithm uses an ordinary 15-point
# Gauss-Kronrod integration rule.
# 
#   Returns: Cint
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qawc{gsl_int<:Integer}(a::Cdouble, b::Cdouble, c::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qawc, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble,
        Csize_t, Ptr{Void}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b, c, epsabs,
        epsrel, limit, workspace, result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f) ,unsafe_ref(result) ,unsafe_ref(abserr)
end
