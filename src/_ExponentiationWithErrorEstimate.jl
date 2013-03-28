#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.16.3 Exponentiation With Error Estimate #
#############################################
export gsl_sf_exp_err_e, gsl_sf_exp_err_e10_e, gsl_sf_exp_mult_err_e,
       gsl_sf_exp_mult_err_e10_e


### Function uses unknown type; disabled
### # This function exponentiates x with an associated absolute error dx.
# 
### #   Exceptional Return Values: 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_exp_err_e (x::Cdouble, dx::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_exp_err_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), x, dx, result )
### end


### Function uses unknown type; disabled
### # This function exponentiates a quantity x with an associated absolute error dx
# using the gsl_sf_result_e10 type to return a result with extended range.
# 
### #   Exceptional Return Values: 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_exp_err_e10_e (x::Cdouble, dx::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_exp_err_e10_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result_e10}), x, dx, result )
### end


### Function uses unknown type; disabled
### # This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy.
# 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_exp_mult_err_e (x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_exp_mult_err_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Cdouble, Ptr{gsl_sf_result}), x, dx, y, dy, result )
### end


### Function uses unknown type; disabled
### # This routine computes the product y \exp(x) for the quantities x, y with
# associated absolute errors dx, dy using the gsl_sf_result_e10 type to return
# a result with extended range.
# 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_exp_mult_err_e10_e (x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_exp_mult_err_e10_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Cdouble, Ptr{gsl_sf_result_e10}), x, dx, y, dy, result )
### end