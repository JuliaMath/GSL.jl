#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.9 Dawson Function #
#######################
export gsl_sf_dawson, gsl_sf_dawson_e


# These routines compute the value of Dawson's integral for x.
# 
#   Returns: Cdouble
function gsl_sf_dawson (x::Cdouble)
    ccall( (:gsl_sf_dawson, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the value of Dawson's integral for x.
# 
#   Returns: Cint
function gsl_sf_dawson_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_dawson_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end
