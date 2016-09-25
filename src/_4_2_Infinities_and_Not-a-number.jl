#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 4.2 Infinities and Not-a-number #
###################################
#############
# Footnotes #
#############
export isnan, isinf, finite


# This function returns 1 if x is not-a-number.
# 
#   Returns: Cint
function isnan(x::Real)
    errno = ccall( (:gsl_isnan, libgsl), Cint, (Cdouble, ), x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number isnan


# This function returns +1 if x is positive infinity, -1 if x is negative
# infinity and 0 otherwise.1
# 
#   Returns: Cint
function isinf(x::Real)
    errno = ccall( (:gsl_isinf, libgsl), Cint, (Cdouble, ), x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number isinf


# This function returns 1 if x is a real number, and 0 if it is infinite or
# not-a-number.
# 
#   Returns: Cint
function finite(x::Real)
    errno = ccall( (:gsl_finite, libgsl), Cint, (Cdouble, ), x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number finite
