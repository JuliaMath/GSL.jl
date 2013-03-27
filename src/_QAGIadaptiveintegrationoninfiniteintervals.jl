#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 17.6 QAGI adaptive integration on infinite intervals #
########################################################
export gsl_integration_qagi, gsl_integration_qagiu, gsl_integration_qagil


# This function computes the integral of the function f over the infinite
# interval (-\infty,+\infty).  The integral is mapped onto the semi-open
# interval (0,1] using the transformation x = (1-t)/t,
# \int_{-\infty}^{+\infty} dx f(x) =                \int_0^1 dt (f((1-t)/t) +
# f((-1+t)/t))/t^2.  It is then integrated using the QAGS algorithm.  The
# normal 21-point Gauss-Kronrod rule of QAGS is replaced by a 15-point rule,
# because the transformation can generate an integrable singularity at the
# origin.  In this case a lower-order rule is more efficient.
# 
#   Returns: Cint
function gsl_integration_qagi (f::Ptr{gsl_function}, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
    ccall( (:gsl_integration_qagi, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Csize_t, Ptr{gsl_integration_workspace},
        Ptr{Cdouble}, Ptr{Cdouble}), f, epsabs, epsrel, limit, workspace,
        result, abserr )
end


# This function computes the integral of the function f over the semi-infinite
# interval (a,+\infty).  The integral is mapped onto the semi-open interval
# (0,1] using the transformation x = a + (1-t)/t,
# \int_{a}^{+\infty} dx f(x) =                \int_0^1 dt f(a + (1-t)/t)/t^2
# and then integrated using the QAGS algorithm.
# 
#   Returns: Cint
function gsl_integration_qagiu (f::Ptr{gsl_function}, a::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
    ccall( (:gsl_integration_qagiu, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Cdouble, Csize_t, Ptr{gsl_integration_workspace},
        Ptr{Cdouble}, Ptr{Cdouble}), f, a, epsabs, epsrel, limit, workspace,
        result, abserr )
end


# This function computes the integral of the function f over the semi-infinite
# interval (-\infty,b).  The integral is mapped onto the semi-open interval
# (0,1] using the transformation x = b - (1-t)/t,
# \int_{-\infty}^{b} dx f(x) =                \int_0^1 dt f(b - (1-t)/t)/t^2
# and then integrated using the QAGS algorithm.
# 
#   Returns: Cint
function gsl_integration_qagil (f::Ptr{gsl_function}, b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::Csize_t, workspace::Ptr{gsl_integration_workspace}, result::Ptr{Cdouble}, abserr::Ptr{Cdouble})
    ccall( (:gsl_integration_qagil, "libgsl"), Cint, (Ptr{gsl_function},
        Cdouble, Cdouble, Cdouble, Csize_t, Ptr{gsl_integration_workspace},
        Ptr{Cdouble}, Ptr{Cdouble}), f, b, epsabs, epsrel, limit, workspace,
        result, abserr )
end