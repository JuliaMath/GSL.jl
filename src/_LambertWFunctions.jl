#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.23 Lambert W Functions #
############################
export gsl_sf_lambert_W0, gsl_sf_lambert_W0_e, gsl_sf_lambert_Wm1,
       gsl_sf_lambert_Wm1_e


# These compute the principal branch of the Lambert W function, W_0(x).
# 
#   exceptions: GSL_EDOM, GSL_EMAXITER 
#   Returns: Cdouble
function gsl_sf_lambert_W0 (x::Cdouble)
    ccall( (:gsl_sf_lambert_W0, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These compute the principal branch of the Lambert W function, W_0(x).
# 
#   Returns: Cint
function gsl_sf_lambert_W0_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lambert_W0_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These compute the secondary real-valued branch of the Lambert W function,
# W_{-1}(x).
# 
#   {$W_{-1}(x)$} 
#   exceptions: GSL_EDOM, GSL_EMAXITER 
#   Returns: Cdouble
function gsl_sf_lambert_Wm1 (x::Cdouble)
    ccall( (:gsl_sf_lambert_Wm1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These compute the secondary real-valued branch of the Lambert W function,
# W_{-1}(x).
# 
#   Returns: Cint
function gsl_sf_lambert_Wm1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lambert_Wm1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end