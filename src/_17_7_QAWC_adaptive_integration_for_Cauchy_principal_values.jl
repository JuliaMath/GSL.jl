#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################################
# 17.7 QAWC adaptive integration for Cauchy principal values #
##############################################################
export integration_qawc




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
function integration_qawc(a::Real, b::Real, c::Real, epsabs::Real, epsrel::Real, limit::Integer)
    f = Ref{gsl_function}()
    workspace = Ref{gsl_integration_workspace}()
    result = Ref{Cdouble}()
    abserr = Ref{Cdouble}()
    errno = ccall( (:gsl_integration_qawc, libgsl), Cint,
        (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble,
        Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}),
        f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return f[], workspace[], result[], abserr[]
end
