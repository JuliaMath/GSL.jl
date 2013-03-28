#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 7.15.3 Log Complementary Error Function #
###########################################
export gsl_sf_log_erfc, gsl_sf_log_erfc_e


# These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_log_erfc (x::Cdouble)
    ccall( (:gsl_sf_log_erfc, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_log_erfc_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_log_erfc_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end