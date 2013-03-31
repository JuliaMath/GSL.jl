#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 4.3 Elementary Functions #
############################
export gsl_log1p, gsl_expm1, gsl_hypot, gsl_hypot3, gsl_acosh, gsl_asinh,
       gsl_atanh, gsl_ldexp, gsl_frexp


# This function computes the value of \log(1+x) in a way that is accurate for
# small x. It provides an alternative to the BSD math function log1p(x).
# 
#   Returns: Cdouble
function gsl_log1p(x::Cdouble)
    ccall( (:gsl_log1p, :libgsl), Cdouble, (Cdouble, ), x )
end


# This function computes the value of \exp(x)-1 in a way that is accurate for
# small x. It provides an alternative to the BSD math function expm1(x).
# 
#   Returns: Cdouble
function gsl_expm1(x::Cdouble)
    ccall( (:gsl_expm1, :libgsl), Cdouble, (Cdouble, ), x )
end


# This function computes the value of  \sqrt{x^2 + y^2} in a way that avoids
# overflow. It provides an alternative to the BSD math function hypot(x,y).
# 
#   Returns: Cdouble
function gsl_hypot(x::Cdouble, y::Cdouble)
    ccall( (:gsl_hypot, :libgsl), Cdouble, (Cdouble, Cdouble), x, y )
end


# This function computes the value of  \sqrt{x^2 + y^2 + z^2} in a way that
# avoids overflow.
# 
#   Returns: Cdouble
function gsl_hypot3(x::Cdouble, y::Cdouble, z::Cdouble)
    ccall( (:gsl_hypot3, :libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x,
        y, z )
end


# This function computes the value of \arccosh(x). It provides an alternative
# to the standard math function acosh(x).
# 
#   Returns: Cdouble
function gsl_acosh(x::Cdouble)
    ccall( (:gsl_acosh, :libgsl), Cdouble, (Cdouble, ), x )
end


# This function computes the value of \arcsinh(x). It provides an alternative
# to the standard math function asinh(x).
# 
#   Returns: Cdouble
function gsl_asinh(x::Cdouble)
    ccall( (:gsl_asinh, :libgsl), Cdouble, (Cdouble, ), x )
end


# This function computes the value of \arctanh(x). It provides an alternative
# to the standard math function atanh(x).
# 
#   Returns: Cdouble
function gsl_atanh(x::Cdouble)
    ccall( (:gsl_atanh, :libgsl), Cdouble, (Cdouble, ), x )
end


# This function computes the value of x * 2^e. It provides an alternative to
# the standard math function ldexp(x,e).
# 
#   Returns: Cdouble
function gsl_ldexp{gsl_int<:Integer}(x::Cdouble, e::gsl_int)
    ccall( (:gsl_ldexp, :libgsl), Cdouble, (Cdouble, Cint), x, e )
end


# This function splits the number x into its normalized fraction f and exponent
# e, such that x = f * 2^e and  0.5 <= f < 1. The function returns f and stores
# the exponent in e. If x is zero, both f and e are set to zero. This function
# provides an alternative to the standard math function frexp(x, e).
# 
#   Returns: Cdouble
function gsl_frexp(x::Cdouble, e::Ptr{Cint})
    ccall( (:gsl_frexp, :libgsl), Cdouble, (Cdouble, Ptr{Cint}), x, e )
end
