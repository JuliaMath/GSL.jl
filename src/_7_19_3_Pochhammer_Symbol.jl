#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.19.3 Pochhammer Symbol #
############################
export sf_poch, sf_poch_e, sf_lnpoch, sf_lnpoch_e, sf_lnpoch_sgn_e, sf_pochrel,
       sf_pochrel_e


# These routines compute the Pochhammer symbol (a)_x = \Gamma(a + x)/\Gamma(a).
# The Pochhammer symbol is also known as the Apell symbol and sometimes written
# as (a,x).  When a and a+x are negative integers or zero, the limiting value
# of the ratio is returned.
# 
#   Returns: Cdouble
function sf_poch(a::Real, x::Real)
    ccall( (:gsl_sf_poch, libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
Compat.@dep_vectorize_2arg Number sf_poch


# These routines compute the Pochhammer symbol (a)_x = \Gamma(a + x)/\Gamma(a).
# The Pochhammer symbol is also known as the Apell symbol and sometimes written
# as (a,x).  When a and a+x are negative integers or zero, the limiting value
# of the ratio is returned.
# 
#   Returns: Cint
function sf_poch_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_poch_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_poch_e


# These routines compute the logarithm of the Pochhammer symbol, \log((a)_x) =
# \log(\Gamma(a + x)/\Gamma(a)).
# 
#   Returns: Cdouble
function sf_lnpoch(a::Real, x::Real)
    ccall( (:gsl_sf_lnpoch, libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
Compat.@dep_vectorize_2arg Number sf_lnpoch


# These routines compute the logarithm of the Pochhammer symbol, \log((a)_x) =
# \log(\Gamma(a + x)/\Gamma(a)).
# 
#   Returns: Cint
function sf_lnpoch_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lnpoch_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_lnpoch_e


# These routines compute the sign of the Pochhammer symbol and the logarithm of
# its magnitude.  The computed parameters are result = \log(|(a)_x|) with a
# corresponding error term, and sgn = \sgn((a)_x) where (a)_x = \Gamma(a +
# x)/\Gamma(a).
# 
#   Returns: Cint
function sf_lnpoch_sgn_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    sgn = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_lnpoch_sgn_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{Cdouble}), a, x, result, sgn )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[], sgn[]
end
Compat.@dep_vectorize_2arg Number sf_lnpoch_sgn_e


# These routines compute the relative Pochhammer symbol ((a)_x - 1)/x where
# (a)_x = \Gamma(a + x)/\Gamma(a).
# 
#   Returns: Cdouble
function sf_pochrel(a::Real, x::Real)
    ccall( (:gsl_sf_pochrel, libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
Compat.@dep_vectorize_2arg Number sf_pochrel


# These routines compute the relative Pochhammer symbol ((a)_x - 1)/x where
# (a)_x = \Gamma(a + x)/\Gamma(a).
# 
#   Returns: Cint
function sf_pochrel_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_pochrel_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_pochrel_e
