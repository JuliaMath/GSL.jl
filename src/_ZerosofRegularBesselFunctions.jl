#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 7.5.13 Zeros of Regular Bessel Functions #
############################################
export gsl_sf_bessel_zero_J0, gsl_sf_bessel_zero_J0_e, gsl_sf_bessel_zero_J1,
       gsl_sf_bessel_zero_J1_e, gsl_sf_bessel_zero_Jnu,
       gsl_sf_bessel_zero_Jnu_e


# These routines compute the location of the s-th positive zero of the Bessel
# function J_0(x).
# 
#   Exceptional Return Values: 
#   Returns: Cdouble
function gsl_sf_bessel_zero_J0 (s::Cuint)
    ccall( (:gsl_sf_bessel_zero_J0, "libgsl"), Cdouble, (Cuint, ), s )
end


# These routines compute the location of the s-th positive zero of the Bessel
# function J_0(x).
# 
#   Returns: Cint
function gsl_sf_bessel_zero_J0_e (s::Cuint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_zero_J0_e, "libgsl"), Cint, (Cuint,
        Ptr{gsl_sf_result}), s, result )
end


# These routines compute the location of the s-th positive zero of the Bessel
# function J_1(x).
# 
#   Exceptional Return Values: 
#   Returns: Cdouble
function gsl_sf_bessel_zero_J1 (s::Cuint)
    ccall( (:gsl_sf_bessel_zero_J1, "libgsl"), Cdouble, (Cuint, ), s )
end


# These routines compute the location of the s-th positive zero of the Bessel
# function J_1(x).
# 
#   Returns: Cint
function gsl_sf_bessel_zero_J1_e (s::Cuint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_zero_J1_e, "libgsl"), Cint, (Cuint,
        Ptr{gsl_sf_result}), s, result )
end


# These routines compute the location of the s-th positive zero of the Bessel
# function J_\nu(x).  The current implementation does not support negative
# values of nu.
# 
#   Exceptional Return Values: 
#   Returns: Cdouble
function gsl_sf_bessel_zero_Jnu (nu::Cdouble, s::Cuint)
    ccall( (:gsl_sf_bessel_zero_Jnu, "libgsl"), Cdouble, (Cdouble, Cuint),
        nu, s )
end


# These routines compute the location of the s-th positive zero of the Bessel
# function J_\nu(x).  The current implementation does not support negative
# values of nu.
# 
#   Returns: Cint
function gsl_sf_bessel_zero_Jnu_e (nu::Cdouble, s::Cuint, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_zero_Jnu_e, "libgsl"), Cint, (Cdouble, Cuint,
        Ptr{gsl_sf_result}), nu, s, result )
end