#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 4.3 Elementary Functions #
############################
export log1p, expm1, hypot, hypot3, acosh, asinh, atanh, ldexp, frexp


# This function computes the value of \log(1+x) in a way that is accurate for
# small x. It provides an alternative to the BSD math function log1p(x).
# 
#   Returns: Cdouble
function log1p(x::Real)
    ccall( (:gsl_log1p, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number log1p


# This function computes the value of \exp(x)-1 in a way that is accurate for
# small x. It provides an alternative to the BSD math function expm1(x).
# 
#   Returns: Cdouble
function expm1(x::Real)
    ccall( (:gsl_expm1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number expm1


# This function computes the value of  \sqrt{x^2 + y^2} in a way that avoids
# overflow. It provides an alternative to the BSD math function hypot(x,y).
# 
#   Returns: Cdouble
function hypot(x::Real, y::Real)
    ccall( (:gsl_hypot, libgsl), Cdouble, (Cdouble, Cdouble), x, y )
end
Compat.@dep_vectorize_2arg Number hypot


# This function computes the value of  \sqrt{x^2 + y^2 + z^2} in a way that
# avoids overflow.
# 
#   Returns: Cdouble
function hypot3(x::Real, y::Real, z::Real)
    ccall( (:gsl_hypot3, libgsl), Cdouble, (Cdouble, Cdouble, Cdouble), x,
        y, z )
end


# This function computes the value of \arccosh(x). It provides an alternative
# to the standard math function acosh(x).
# 
#   Returns: Cdouble
function acosh(x::Real)
    ccall( (:gsl_acosh, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number acosh


# This function computes the value of \arcsinh(x). It provides an alternative
# to the standard math function asinh(x).
# 
#   Returns: Cdouble
function asinh(x::Real)
    ccall( (:gsl_asinh, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number asinh


# This function computes the value of \arctanh(x). It provides an alternative
# to the standard math function atanh(x).
# 
#   Returns: Cdouble
function atanh(x::Real)
    ccall( (:gsl_atanh, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number atanh


# This function computes the value of x * 2^e. It provides an alternative to
# the standard math function ldexp(x,e).
# 
#   Returns: Cdouble
function ldexp(x::Real, e::Integer)
    ccall( (:gsl_ldexp, libgsl), Cdouble, (Cdouble, Cint), x, e )
end
Compat.@dep_vectorize_2arg Number ldexp


# This function splits the number x into its normalized fraction f and exponent
# e, such that x = f * 2^e and  0.5 <= f < 1. The function returns f and stores
# the exponent in e. If x is zero, both f and e are set to zero. This function
# provides an alternative to the standard math function frexp(x, e).
# 
#   Returns: Cdouble
function frexp{tA<:Integer}(x::Real, e_in::AbstractVector{tA})
    e = convert(Vector{Cint}, e_in)
    ccall( (:gsl_frexp, libgsl), Cdouble, (Cdouble, Ref{Cint}), x, e )
end
