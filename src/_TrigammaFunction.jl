#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.28.2 Trigamma Function #
############################
export gsl_sf_psi_1_int, gsl_sf_psi_1_int_e, gsl_sf_psi_1, gsl_sf_psi_1_e


# These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
#   Domain: n integer, n > 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_psi_1_int (n::Cint)
    ccall( (:gsl_sf_psi_1_int, "libgsl"), Cdouble, (Cint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the Trigamma function \psi'(n) for positive integer n.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_psi_1_int_e (n::Cint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_psi_1_int_e, "libgsl"), Cint, (Cint,
###         Ptr{gsl_sf_result}), n, result )
### end


# These routines compute the Trigamma function \psi'(x) for general x.
# 
#   Domain: x != 0.0, -1.0, -2.0, ... 
#   Exceptional Return Values: GSL_EDOM, GSL_ELOSS 
#   Returns: Cdouble
function gsl_sf_psi_1 (x::Cdouble)
    ccall( (:gsl_sf_psi_1, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the Trigamma function \psi'(x) for general x.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_psi_1_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_psi_1_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end