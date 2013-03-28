#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 7.19.6 Incomplete Beta Function #
###################################
export gsl_sf_beta_inc, gsl_sf_beta_inc_e


# These routines compute the normalized incomplete Beta function
# I_x(a,b)=B_x(a,b)/B(a,b) where  B_x(a,b) = \int_0^x t^{a-1} (1-t)^{b-1} dt
# for  0 <= x <= 1.   For a > 0, b > 0 the value is computed using a continued
# fraction expansion.  For all other values it is computed using the relation
# I_x(a,b,x) = (1/a) x^a 2F1(a,1-b,a+1,x)/B(a,b).
# 
#   {$B_x(a,b) = \int_0^x t^{a-1} (1-t)^{b-1} dt$} 
#   {$0 \le x \le 1$} 
#   {$I_x(a,b,x) = (1/a) x^a {}_2F_1(a,1-b,a+1,x)/B(a,b)$} 
#   Returns: Cdouble
function gsl_sf_beta_inc (a::Cdouble, b::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_beta_inc, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end


### Function uses unknown type; disabled
### # These routines compute the normalized incomplete Beta function
# I_x(a,b)=B_x(a,b)/B(a,b) where  B_x(a,b) = \int_0^x t^{a-1} (1-t)^{b-1} dt
# for  0 <= x <= 1.   For a > 0, b > 0 the value is computed using a continued
# fraction expansion.  For all other values it is computed using the relation
# I_x(a,b,x) = (1/a) x^a 2F1(a,1-b,a+1,x)/B(a,b).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_beta_inc_e (a::Cdouble, b::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_beta_inc_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
### end