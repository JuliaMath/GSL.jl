#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 17.8 QAWS adaptive integration for singular functions #
#########################################################
export gsl_integration_qaws_table_alloc, gsl_integration_qaws_table_set,
       gsl_integration_qaws_table_free, gsl_integration_qaws








# This function allocates space for a gsl_integration_qaws_table struct
# describing a singular weight function W(x) with the parameters (\alpha,
# \beta, \mu, \nu),                 W(x) = (x-a)^alpha (b-x)^beta log^mu (x-a)
# log^nu (b-x)  where \alpha > -1, \beta > -1, and \mu = 0, 1, \nu = 0, 1.  The
# weight function can take four different forms depending on the values of \mu
# and \nu,                 W(x) = (x-a)^alpha (b-x)^beta                   (mu
# = 0, nu = 0)           W(x) = (x-a)^alpha (b-x)^beta log(x-a)          (mu =
# 1, nu = 0)           W(x) = (x-a)^alpha (b-x)^beta log(b-x)          (mu = 0,
# nu = 1)           W(x) = (x-a)^alpha (b-x)^beta log(x-a) log(b-x) (mu = 1, nu
# = 1)  The singular points (a,b) do not have to be specified until the
# integral is computed, where they are the endpoints of the integration range.
# The function returns a pointer to the newly allocated table
# gsl_integration_qaws_table if no errors were detected, and 0 in the case of
# error.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_integration_qaws_table}
#XXX Coerced type for output Ptr{Void}
function gsl_integration_qaws_table_alloc{gsl_int<:Integer}(alpha::Cdouble, beta::Cdouble, mu::gsl_int, nu::gsl_int)
    ccall( (:gsl_integration_qaws_table_alloc, :libgsl), Ptr{Void},
        (Cdouble, Cdouble, Cint, Cint), alpha, beta, mu, nu )
end


# This function modifies the parameters (\alpha, \beta, \mu, \nu) of an
# existing gsl_integration_qaws_table struct t.
# 
#   Returns: Cint
#XXX Unknown input type t::Ptr{gsl_integration_qaws_table}
#XXX Coerced type for t::Ptr{Void}
function gsl_integration_qaws_table_set{gsl_int<:Integer}(t::Ptr{Void}, alpha::Cdouble, beta::Cdouble, mu::gsl_int, nu::gsl_int)
    gsl_errno = ccall( (:gsl_integration_qaws_table_set, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Cdouble, Cint, Cint), t, alpha, beta, mu, nu )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function frees all the memory associated with the
# gsl_integration_qaws_table struct t.
# 
#   Returns: Void
#XXX Unknown input type t::Ptr{gsl_integration_qaws_table}
#XXX Coerced type for t::Ptr{Void}
function gsl_integration_qaws_table_free(t::Ptr{Void})
    ccall( (:gsl_integration_qaws_table_free, :libgsl), Void, (Ptr{Void},
        ), t )
end


# This function computes the integral of the function f(x) over the interval
# (a,b) with the singular weight function (x-a)^\alpha (b-x)^\beta \log^\mu
# (x-a) \log^\nu (b-x).  The parameters of the weight function (\alpha, \beta,
# \mu, \nu) are taken from the table t.  The integral is,                 I =
# \int_a^b dx f(x) (x-a)^alpha (b-x)^beta log^mu (x-a) log^nu (b-x).  The
# adaptive bisection algorithm of QAG is used.  When a subinterval contains one
# of the endpoints then a special 25-point modified Clenshaw-Curtis rule is
# used to control the singularities.  For subintervals which do not include the
# endpoints an ordinary 15-point Gauss-Kronrod integration rule is used.
# 
#   Returns: Cint
#XXX Unknown input type t::Ptr{gsl_integration_qaws_table}
#XXX Coerced type for t::Ptr{Void}
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qaws{gsl_int<:Integer}(a::Cdouble, b::Cdouble, t::Ptr{Void}, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qaws, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Ptr{Void}, Cdouble, Cdouble,
        Csize_t, Ptr{Void}, Ptr{Cdouble}, Ptr{Cdouble}), f, a, b, t, epsabs,
        epsrel, limit, workspace, result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f) ,unsafe_ref(result) ,unsafe_ref(abserr)
end
