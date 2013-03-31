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
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qagi{gsl_int<:Integer}(epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qagi, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Csize_t, Ptr{Void}, Ptr{Cdouble},
        Ptr{Cdouble}), f, epsabs, epsrel, limit, workspace, result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f) ,unsafe_ref(result) ,unsafe_ref(abserr)
end


# This function computes the integral of the function f over the semi-infinite
# interval (a,+\infty).  The integral is mapped onto the semi-open interval
# (0,1] using the transformation x = a + (1-t)/t,
# \int_{a}^{+\infty} dx f(x) =                \int_0^1 dt f(a + (1-t)/t)/t^2
# and then integrated using the QAGS algorithm.
# 
#   Returns: Cint
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qagiu{gsl_int<:Integer}(a::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qagiu, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ptr{Void},
        Ptr{Cdouble}, Ptr{Cdouble}), f, a, epsabs, epsrel, limit, workspace,
        result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f) ,unsafe_ref(result) ,unsafe_ref(abserr)
end


# This function computes the integral of the function f over the semi-infinite
# interval (-\infty,b).  The integral is mapped onto the semi-open interval
# (0,1] using the transformation x = b - (1-t)/t,
# \int_{-\infty}^{b} dx f(x) =                \int_0^1 dt f(b - (1-t)/t)/t^2
# and then integrated using the QAGS algorithm.
# 
#   Returns: Cint
#XXX Unknown input type workspace::Ptr{gsl_integration_workspace}
#XXX Coerced type for workspace::Ptr{Void}
function gsl_integration_qagil{gsl_int<:Integer}(b::Cdouble, epsabs::Cdouble, epsrel::Cdouble, limit::gsl_int, workspace::Ptr{Void})
    f = convert(Ptr{gsl_function}, Array(gsl_function, 1))
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    abserr = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_integration_qagil, :libgsl), Cint,
        (Ptr{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ptr{Void},
        Ptr{Cdouble}, Ptr{Cdouble}), f, b, epsabs, epsrel, limit, workspace,
        result, abserr )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f) ,unsafe_ref(result) ,unsafe_ref(abserr)
end
