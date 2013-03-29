#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 4.8 Approximate Comparison of Floating Point Numbers #
########################################################
export gsl_fcmp


# This function determines whether x and y are approximately equal to a
# relative accuracy epsilon.          The relative accuracy is measured using
# an interval of size 2 \delta, where \delta = 2^k \epsilon and k is the
# maximum base-2 exponent of x and y as computed by the function frexp.
# If x and y lie within this interval, they are considered approximately equal
# and the function returns 0. Otherwise if x < y, the function returns -1, or
# if x > y, the function returns +1.          Note that x and y are compared to
# relative accuracy, so this function is not suitable for testing whether a
# value is approximately zero.          The implementation is based on the
# package fcmp by T.C. Belding.
# 
#   Returns: Cint
function gsl_fcmp (x::Cdouble, y::Cdouble, epsilon::Cdouble)
    ccall( (:gsl_fcmp, "libgsl"), Cint, (Cdouble, Cdouble, Cdouble), x, y,
        epsilon )
end
