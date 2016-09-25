#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 7.19.4 Incomplete Gamma Functions #
#####################################
export sf_gamma_inc, sf_gamma_inc_e, sf_gamma_inc_Q, sf_gamma_inc_Q_e,
       sf_gamma_inc_P, sf_gamma_inc_P_e


# These functions compute the unnormalized incomplete Gamma Function
# \Gamma(a,x) = \int_x^\infty dt t^{a-1} \exp(-t) for a real and  x >= 0.
# 
#   Returns: Cdouble
function sf_gamma_inc(a::Real, x::Real)
    ccall( (:gsl_sf_gamma_inc, libgsl), Cdouble, (Cdouble, Cdouble), a, x
        )
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc


# These functions compute the unnormalized incomplete Gamma Function
# \Gamma(a,x) = \int_x^\infty dt t^{a-1} \exp(-t) for a real and  x >= 0.
# 
#   Returns: Cint
function sf_gamma_inc_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gamma_inc_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc_e


# These routines compute the normalized incomplete Gamma Function  Q(a,x) =
# 1/\Gamma(a) \int_x^\infty dt t^{a-1} \exp(-t) for a > 0,  x >= 0.
# 
#   Returns: Cdouble
function sf_gamma_inc_Q(a::Real, x::Real)
    ccall( (:gsl_sf_gamma_inc_Q, libgsl), Cdouble, (Cdouble, Cdouble), a,
        x )
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc_Q


# These routines compute the normalized incomplete Gamma Function  Q(a,x) =
# 1/\Gamma(a) \int_x^\infty dt t^{a-1} \exp(-t) for a > 0,  x >= 0.
# 
#   Returns: Cint
function sf_gamma_inc_Q_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gamma_inc_Q_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc_Q_e


# These routines compute the complementary normalized incomplete Gamma Function
# P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt t^{a-1} \exp(-t) for a > 0,  x
# >= 0.          Note that Abramowitz & Stegun call P(a,x) the incomplete gamma
# function (section 6.5).
# 
#   Returns: Cdouble
function sf_gamma_inc_P(a::Real, x::Real)
    ccall( (:gsl_sf_gamma_inc_P, libgsl), Cdouble, (Cdouble, Cdouble), a,
        x )
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc_P


# These routines compute the complementary normalized incomplete Gamma Function
# P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt t^{a-1} \exp(-t) for a > 0,  x
# >= 0.          Note that Abramowitz & Stegun call P(a,x) the incomplete gamma
# function (section 6.5).
# 
#   Returns: Cint
function sf_gamma_inc_P_e(a::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_gamma_inc_P_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), a, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_gamma_inc_P_e
