#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 6.2 Divided Difference Representation of Polynomials #
########################################################
export poly_dd_init, poly_dd_eval, poly_dd_taylor


# This function computes a divided-difference representation of the
# interpolating polynomial for the points (xa, ya) stored in the arrays xa and
# ya of length size.  On output the divided-differences of (xa,ya) are stored
# in the array dd, also of length size.
# 
#   Returns: Cint
function poly_dd_init(dd::Real)
    errno = ccall( (:gsl_poly_dd_init, libgsl), Cint, (Cdouble, ), dd )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number poly_dd_init


# This function evaluates the polynomial stored in divided-difference form in
# the arrays dd and xa of length size at the point x.  An inline version of
# this function is used when HAVE_INLINE is defined.
# 
#   Returns: Cdouble
function poly_dd_eval(dd::Real)
    ccall( (:gsl_poly_dd_eval, libgsl), Cdouble, (Cdouble, ), dd )
end
Compat.@dep_vectorize_1arg Number poly_dd_eval


# This function converts the divided-difference representation of a polynomial
# to a Taylor expansion.  The divided-difference representation is supplied in
# the arrays dd and xa of length size.  On output the Taylor coefficients of
# the polynomial expanded about the point xp are stored in the array c also of
# length size.  A workspace of length size must be provided in the array w.
# 
#   Returns: Cint
function poly_dd_taylor(c::Real)
    errno = ccall( (:gsl_poly_dd_taylor, libgsl), Cint, (Cdouble, ), c )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
Compat.@dep_vectorize_1arg Number poly_dd_taylor
