#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 34.6 Stopping Parameters #
############################
export min_test_interval

# This function tests for the convergence of the interval [x_lower, x_upper]
# with absolute error epsabs and relative error epsrel.  The test returns
# GSL_SUCCESS if the following condition is achieved,                 |a - b| <
# epsabs + epsrel min(|a|,|b|)  when the interval x = [a,b] does not include
# the origin.  If the interval includes the origin then \min(|a|,|b|) is
# replaced by zero (which is the minimum value of |x| over the interval).  This
# ensures that the relative error is accurately estimated for minima close to
# the origin.          This condition on the interval also implies that any
# estimate of the minimum x_m in the interval satisfies the same condition with
# respect to the true minimum x_m^*,                 |x_m - x_m^*| < epsabs +
# epsrel x_m^*  assuming that the true minimum x_m^* is contained within the
# interval.
# 
#   Returns: Cint
function min_test_interval(x_lower::Real, x_upper::Real, epsabs::Real, epsrel::Real)
    errno = ccall( (:gsl_min_test_interval, libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble), x_lower, x_upper, epsabs, epsrel )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end

