#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.16.1 Exponential Function #
###############################
export gsl_sf_exp, gsl_sf_exp_e, gsl_sf_exp_e10_e, gsl_sf_exp_mult,
       gsl_sf_exp_mult_e, gsl_sf_exp_mult_e10_e


# These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
#   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_exp (x::Cdouble)
    ccall( (:gsl_sf_exp, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines provide an exponential function \exp(x) using GSL semantics
# and error checking.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_exp_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_exp_e, "libgsl"), Cint, (Cdouble, Ptr{gsl_sf_result}),
###         x, result )
### end


### Function uses unknown type; disabled
### # This function computes the exponential \exp(x) using the gsl_sf_result_e10
# type to return a result with extended range.  This function may be useful if
# the value of \exp(x) would overflow the  numeric range of double.
# 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_exp_e10_e (x::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_exp_e10_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result_e10}), x, result )
### end


# These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
#   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_exp_mult (x::Cdouble, y::Cdouble)
    ccall( (:gsl_sf_exp_mult, "libgsl"), Cdouble, (Cdouble, Cdouble), x, y
        )
end


### Function uses unknown type; disabled
### # These routines exponentiate x and multiply by the factor y to return the
# product y \exp(x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_exp_mult_e (x::Cdouble, y::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_exp_mult_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), x, y, result )
### end


### Function uses unknown type; disabled
### # This function computes the product y \exp(x) using the gsl_sf_result_e10 type
# to return a result with extended numeric range.
# 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_exp_mult_e10_e (x::Cdouble, y::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_exp_mult_e10_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result_e10}), x, y, result )
### end