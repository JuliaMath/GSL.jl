#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.27 Power Function #
#######################
export gsl_sf_pow_int, gsl_sf_pow_int_e


# These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
#   Returns: Cdouble
function gsl_sf_pow_int (x::Cdouble, n::Cint)
    ccall( (:gsl_sf_pow_int, "libgsl"), Cdouble, (Cdouble, Cint), x, n )
end


### Function uses unknown type; disabled
### # These routines compute the power x^n for integer n.  The power is computed
# using the minimum number of multiplications. For example, x^8 is computed as
# ((x^2)^2)^2, requiring only 3 multiplications.  For reasons of efficiency,
# these functions do not check for overflow or underflow conditions.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_pow_int_e (x::Cdouble, n::Cint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_pow_int_e, "libgsl"), Cint, (Cdouble, Cint,
###         Ptr{gsl_sf_result}), x, n, result )
### end