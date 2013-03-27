#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 7.19.4 Incomplete Gamma Functions #
#####################################
export gsl_sf_gamma_inc, gsl_sf_gamma_inc_e, gsl_sf_gamma_inc_Q,
       gsl_sf_gamma_inc_Q_e, gsl_sf_gamma_inc_P, gsl_sf_gamma_inc_P_e


# These functions compute the unnormalized incomplete Gamma Function
# \Gamma(a,x) = \int_x^\infty dt t^{a-1} \exp(-t) for a real and  x >= 0.
# 
#   {$\Gamma(a,x) = \int_x^\infty dt\, t^{(a-1)} \exp(-t)$} 
#   {$x \ge 0$} 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_gamma_inc (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gamma_inc, "libgsl"), Cdouble, (Cdouble, Cdouble), a, x
        )
end


# These functions compute the unnormalized incomplete Gamma Function
# \Gamma(a,x) = \int_x^\infty dt t^{a-1} \exp(-t) for a real and  x >= 0.
# 
#   Returns: Cint
function gsl_sf_gamma_inc_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gamma_inc_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end


# These routines compute the normalized incomplete Gamma Function  Q(a,x) =
# 1/\Gamma(a) \int_x^\infty dt t^{a-1} \exp(-t) for a > 0,  x >= 0.
# 
#   {$Q(a,x) = 1/\Gamma(a) \int_x^\infty dt\, t^{(a-1)} \exp(-t)$} 
#   {$x \ge 0$} 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_gamma_inc_Q (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gamma_inc_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), a,
        x )
end


# These routines compute the normalized incomplete Gamma Function  Q(a,x) =
# 1/\Gamma(a) \int_x^\infty dt t^{a-1} \exp(-t) for a > 0,  x >= 0.
# 
#   Returns: Cint
function gsl_sf_gamma_inc_Q_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gamma_inc_Q_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end


# These routines compute the complementary normalized incomplete Gamma Function
# P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt t^{a-1} \exp(-t) for a > 0,  x
# >= 0.          Note that Abramowitz & Stegun call P(a,x) the incomplete gamma
# function (section 6.5).
# 
#   {$P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt\, t^{(a-1)} \exp(-t)$} 
#   {$x \ge 0$} 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_gamma_inc_P (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gamma_inc_P, "libgsl"), Cdouble, (Cdouble, Cdouble), a,
        x )
end


# These routines compute the complementary normalized incomplete Gamma Function
# P(a,x) = 1 - Q(a,x) = 1/\Gamma(a) \int_0^x dt t^{a-1} \exp(-t) for a > 0,  x
# >= 0.          Note that Abramowitz & Stegun call P(a,x) the incomplete gamma
# function (section 6.5).
# 
#   Returns: Cint
function gsl_sf_gamma_inc_P_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_gamma_inc_P_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end