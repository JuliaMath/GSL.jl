#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.32.1 Riemann Zeta Function #
################################
export gsl_sf_zeta_int, gsl_sf_zeta_int_e, gsl_sf_zeta, gsl_sf_zeta_e


# These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
#   Domain: n integer, n != 1 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_zeta_int (n::Cint)
    ccall( (:gsl_sf_zeta_int, "libgsl"), Cdouble, (Cint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the Riemann zeta function \zeta(n) for integer n, n
# \ne 1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_zeta_int_e (n::Cint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_zeta_int_e, "libgsl"), Cint, (Cint,
###         Ptr{gsl_sf_result}), n, result )
### end


# These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
#   Domain: s != 1.0 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_zeta (s::Cdouble)
    ccall( (:gsl_sf_zeta, "libgsl"), Cdouble, (Cdouble, ), s )
end


### Function uses unknown type; disabled
### # These routines compute the Riemann zeta function \zeta(s) for arbitrary s, s
# \ne 1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_zeta_e (s::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_zeta_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
###         s, result )
### end