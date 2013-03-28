#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 4.2 Infinities and Not-a-number #
###################################
#############
# Footnotes #
#############
export GSL_POSINF, GSL_NEGINF, GSL_NAN, gsl_isnan, gsl_isinf, gsl_finite


### Function uses unknown type; disabled
### # This macro contains the IEEE representation of positive infinity, +\infty. It
# is computed from the expression +1.0/0.0.
# 
### #   Returns: 
### #XXX Unknown output type 
### function GSL_POSINF ()
###     ccall( (:GSL_POSINF, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This macro contains the IEEE representation of negative infinity, -\infty. It
# is computed from the expression -1.0/0.0.
# 
### #   Returns: 
### #XXX Unknown output type 
### function GSL_NEGINF ()
###     ccall( (:GSL_NEGINF, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This macro contains the IEEE representation of the Not-a-Number symbol, NaN.
# It is computed from the ratio 0.0/0.0.
# 
### #   Returns: 
### #XXX Unknown output type 
### function GSL_NAN ()
###     ccall( (:GSL_NAN, "libgsl"), , () )
### end


# This function returns 1 if x is not-a-number.
# 
#   Returns: Cint
function gsl_isnan (x::Cdouble)
    ccall( (:gsl_isnan, "libgsl"), Cint, (Cdouble, ), x )
end


# This function returns +1 if x is positive infinity, -1 if x is negative
# infinity and 0 otherwise.1
# 
#   Returns: Cint
function gsl_isinf (x::Cdouble)
    ccall( (:gsl_isinf, "libgsl"), Cint, (Cdouble, ), x )
end


# This function returns 1 if x is a real number, and 0 if it is infinite or
# not-a-number.
# 
#   Returns: Cint
function gsl_finite (x::Cdouble)
    ccall( (:gsl_finite, "libgsl"), Cint, (Cdouble, ), x )
end