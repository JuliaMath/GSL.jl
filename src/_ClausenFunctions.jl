#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 7.6 Clausen Functions #
#########################
export gsl_sf_clausen, gsl_sf_clausen_e


# These routines compute the Clausen integral Cl_2(x).
# 
#   Returns: Cdouble
function gsl_sf_clausen (x::Cdouble)
    ccall( (:gsl_sf_clausen, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the Clausen integral Cl_2(x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_clausen_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_clausen_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end