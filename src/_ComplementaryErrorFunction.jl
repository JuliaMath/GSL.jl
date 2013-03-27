#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 7.15.2 Complementary Error Function #
#######################################
export gsl_sf_erfc, gsl_sf_erfc_e


# These routines compute the complementary error function  erfc(x) = 1 - erf(x)
# = (2/\sqrt(\pi)) \int_x^\infty \exp(-t^2).
# 
#   {$\erfc(x) = 1 - \erf(x) = (2/\sqrt{\pi}) \int_x^\infty \exp(-t^2)$} 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_erfc (x::Cdouble)
    ccall( (:gsl_sf_erfc, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the complementary error function  erfc(x) = 1 - erf(x)
# = (2/\sqrt(\pi)) \int_x^\infty \exp(-t^2).
# 
#   Returns: Cint
function gsl_sf_erfc_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_erfc_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
        x, result )
end