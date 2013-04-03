#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 17.8 QAWS adaptive integration for singular functions #
#########################################################
export integration_qaws_table_alloc, integration_qaws_table_set,
       integration_qaws_table_free, integration_qaws








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
#   Returns: Ptr{gsl_integration_qaws_table}
function integration_qaws_table_alloc(alpha::Real, beta::Real, mu::Integer, nu::Integer)
    ccall( (:gsl_integration_qaws_table_alloc, :libgsl),
        Ptr{gsl_integration_qaws_table}, (Cdouble, Cdouble, Cint, Cint), alpha,
        beta, mu, nu )
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number integration_qaws_table_alloc


# This function modifies the parameters (\alpha, \beta, \mu, \nu) of an
# existing gsl_integration_qaws_table struct t.
# 
#   Returns: Cint
function integration_qaws_table_set(t::Ptr{gsl_integration_qaws_table}, alpha::Real, beta::Real, mu::Integer, nu::Integer)
    errno = ccall( (:gsl_integration_qaws_table_set, :libgsl), Cint,
        (Ptr{gsl_integration_qaws_table}, Cdouble, Cdouble, Cint, Cint), t,
        alpha, beta, mu, nu )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function frees all the memory associated with the
# gsl_integration_qaws_table struct t.
# 
#   Returns: Void
function integration_qaws_table_free(t::Ptr{gsl_integration_qaws_table})
    ccall( (:gsl_integration_qaws_table_free, :libgsl), Void,
        (Ptr{gsl_integration_qaws_table}, ), t )
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
function integration_qaws(a::Real, b::Real, epsabs::Real, epsrel::Real, limit::Integer)
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    t = convert(Ptr{gsl_integration_qaws_table}, Array(gsl_integration_qaws_table, 1))
    workspace = convert(Ptr{gsl_integration_workspace}, Array(gsl_integration_workspace, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_integration_qaws, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Ptr{gsl_integration_qaws_table},
        Cdouble, Cdouble, Csize_t, Ptr{gsl_integration_workspace},
        Ptr{Cdouble}, Ptr{Cdouble}), f, a, b, t, epsabs, epsrel, limit,
        workspace, result, abserr )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(f) ,unsafe_ref(t) ,unsafe_ref(workspace) ,unsafe_ref(result) ,unsafe_ref(abserr)
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number integration_qaws
