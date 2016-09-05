#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 33.7 Search Stopping Parameters #
###################################
export root_test_interval, root_test_delta, root_test_residual










# This function tests for the convergence of the interval [x_lower, x_upper]
# with absolute error epsabs and relative error epsrel.  The test returns
# GSL_SUCCESS if the following condition is achieved,                 |a - b| <
# epsabs + epsrel min(|a|,|b|)  when the interval x = [a,b] does not include
# the origin.  If the interval includes the origin then \min(|a|,|b|) is
# replaced by zero (which is the minimum value of |x| over the interval).  This
# ensures that the relative error is accurately estimated for roots close to
# the origin.          This condition on the interval also implies that any
# estimate of the root r in the interval satisfies the same condition with
# respect to the true root r^*,                 |r - r^*| < epsabs + epsrel r^*
# assuming that the true root r^* is contained within the interval.
# 
#   Returns: Cint
function root_test_interval(x_lower::Real, x_upper::Real, epsabs::Real, epsrel::Real)
    errno = ccall( (:gsl_root_test_interval, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel )
    if gsl_errno(errno) != SUCCESS && gsl_errno(errno) != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return errno
end


# This function tests for the convergence of the sequence ..., x0, x1 with
# absolute error epsabs and relative error epsrel.  The test returns
# GSL_SUCCESS if the following condition is achieved,                 |x_1 -
# x_0| < epsabs + epsrel |x_1|  and returns GSL_CONTINUE otherwise.
# 
#   Returns: Cint
function root_test_delta(x1::Real, x0::Real, epsabs::Real, epsrel::Real)
    errno = ccall( (:gsl_root_test_delta, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble), x1, x0, epsabs, epsrel )
    if gsl_errno(errno) != SUCCESS && gsl_errno(errno) != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return errno
end


# This function tests the residual value f against the absolute error bound
# epsabs.  The test returns GSL_SUCCESS if the following condition is achieved,
# |f| < epsabs  and returns GSL_CONTINUE otherwise.  This criterion is suitable
# for situations where the precise location of the root, x, is unimportant
# provided a value can be found where the residual, |f(x)|, is small enough.
# 
#   Returns: Cint
function root_test_residual(f::Real, epsabs::Real)
    errno = ccall( (:gsl_root_test_residual, libgsl), Cint, (Cdouble,
        Cdouble), f, epsabs )
    if gsl_errno(errno) != SUCCESS && gsl_errno(errno) != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return errno
end
Compat.@dep_vectorize_2arg Number root_test_residual
