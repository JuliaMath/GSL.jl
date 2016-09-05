#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.19.5 Beta Functions #
#########################
export sf_beta, sf_beta_e, sf_lnbeta, sf_lnbeta_e


# These routines compute the Beta Function, B(a,b) =
# \Gamma(a)\Gamma(b)/\Gamma(a+b) subject to a and b not being negative
# integers.
# 
#   Returns: Cdouble
function sf_beta(a::Real, b::Real)
    ccall( (:gsl_sf_beta, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number sf_beta


# These routines compute the Beta Function, B(a,b) =
# \Gamma(a)\Gamma(b)/\Gamma(a+b) subject to a and b not being negative
# integers.
# 
#   Returns: Cint
function sf_beta_e(a::Real, b::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_beta_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, b, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_beta_e


# These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
#   Returns: Cdouble
function sf_lnbeta(a::Real, b::Real)
    ccall( (:gsl_sf_lnbeta, libgsl), Cdouble, (Cdouble, Cdouble), a, b )
end
Compat.@dep_vectorize_2arg Number sf_lnbeta


# These routines compute the logarithm of the Beta Function, \log(B(a,b))
# subject to a and b not being negative integers.
# 
#   Returns: Cint
function sf_lnbeta_e(a::Real, b::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lnbeta_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, b, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_lnbeta_e
