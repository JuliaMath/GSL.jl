#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.19.3 Pochhammer Symbol #
############################
export gsl_sf_poch, gsl_sf_poch_e, gsl_sf_lnpoch, gsl_sf_lnpoch_e,
       gsl_sf_lnpoch_sgn_e, gsl_sf_pochrel, gsl_sf_pochrel_e


# These routines compute the Pochhammer symbol (a)_x = \Gamma(a + x)/\Gamma(a).
# The Pochhammer symbol is also known as the Apell symbol and sometimes written
# as (a,x).  When a and a+x are negative integers or zero, the limiting value
# of the ratio is returned.
# 
#   Returns: Cdouble
function gsl_sf_poch(a::Real, x::Real)
    ccall( (:gsl_sf_poch, :libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
@vectorize_2arg Number gsl_sf_poch


# These routines compute the Pochhammer symbol (a)_x = \Gamma(a + x)/\Gamma(a).
# The Pochhammer symbol is also known as the Apell symbol and sometimes written
# as (a,x).  When a and a+x are negative integers or zero, the limiting value
# of the ratio is returned.
# 
#   Returns: Cint
function gsl_sf_poch_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_poch_e, :libgsl), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_poch_e


# These routines compute the logarithm of the Pochhammer symbol, \log((a)_x) =
# \log(\Gamma(a + x)/\Gamma(a)).
# 
#   Returns: Cdouble
function gsl_sf_lnpoch(a::Real, x::Real)
    ccall( (:gsl_sf_lnpoch, :libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
@vectorize_2arg Number gsl_sf_lnpoch


# These routines compute the logarithm of the Pochhammer symbol, \log((a)_x) =
# \log(\Gamma(a + x)/\Gamma(a)).
# 
#   Returns: Cint
function gsl_sf_lnpoch_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lnpoch_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_lnpoch_e


# These routines compute the sign of the Pochhammer symbol and the logarithm of
# its magnitude.  The computed parameters are result = \log(|(a)_x|) with a
# corresponding error term, and sgn = \sgn((a)_x) where (a)_x = \Gamma(a +
# x)/\Gamma(a).
# 
#   Returns: Cint
function gsl_sf_lnpoch_sgn_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    sgn = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_lnpoch_sgn_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}, Ptr{Cdouble}), a, x, result, sgn )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1] ,unsafe_ref(sgn)[1]
end
@vectorize_2arg Number gsl_sf_lnpoch_sgn_e


# These routines compute the relative Pochhammer symbol ((a)_x - 1)/x where
# (a)_x = \Gamma(a + x)/\Gamma(a).
# 
#   Returns: Cdouble
function gsl_sf_pochrel(a::Real, x::Real)
    ccall( (:gsl_sf_pochrel, :libgsl), Cdouble, (Cdouble, Cdouble), a, x )
end
@vectorize_2arg Number gsl_sf_pochrel


# These routines compute the relative Pochhammer symbol ((a)_x - 1)/x where
# (a)_x = \Gamma(a + x)/\Gamma(a).
# 
#   Returns: Cint
function gsl_sf_pochrel_e(a::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_pochrel_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), a, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_pochrel_e
