#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################################################
# 17.7 QAWC adaptive integration for Cauchy principal values #
##############################################################
export gsl_integration_qawc


### Function uses unknown type; disabled
### # This function computes the Cauchy principal value of the integral of f over
# (a,b), with a singularity at c,                 I = \int_a^b dx f(x) / (x -
# c)  The adaptive bisection algorithm of QAG is used, with modifications to
# ensure that subdivisions do not occur at the singular point x = c.  When a
# subinterval contains the point x = c or is close to it then a special
# 25-point modified Clenshaw-Curtis rule is used to control the singularity.
# Further away from the singularity the algorithm uses an ordinary 15-point
# Gauss-Kronrod integration rule.
# 
### #   Returns: Cint
### #XXX Unknown input type f::Ptr{gsl_function}
### #XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
### function gsl_integration_qawc (f::Ptr{gsl_function}, a::Cdouble, b::Cdouble, c::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
###     ccall( (:gsl_integration_qawc, "libgsl"), Cint, (Ptr{gsl_function},
###         Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t,
###         Ptr{gsl_integration_workspace}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b,
###         c, epsabs, epsrel, limit, workspace, result, abserr )
### end