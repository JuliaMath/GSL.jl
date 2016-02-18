#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 35.5 Search Stopping Parameters #
###################################
export multiroot_test_delta, multiroot_test_residual

# This function tests for the convergence of the sequence by comparing the last
# step dx with the absolute error epsabs and relative error epsrel to the
# current position x.  The test returns GSL_SUCCESS if the following condition
# is achieved,                 |dx_i| < epsabs + epsrel |x_i|  for each
# component of x and returns GSL_CONTINUE otherwise.
#
#   Returns: Cint
function multiroot_test_delta(dx::Ptr{gsl_vector}, x::Ptr{gsl_vector}, epsabs::Real, epsrel::Real)
    errno = ccall( (:gsl_multiroot_test_delta, libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Cdouble, Cdouble), dx, x, epsabs,
        epsrel )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    gslerrno
end


# This function tests the residual value f against the absolute error bound
# epsabs.  The test returns GSL_SUCCESS if the following condition is achieved,
# \sum_i |f_i| < epsabs  and returns GSL_CONTINUE otherwise.  This criterion is
# suitable for situations where the precise location of the root, x, is
# unimportant provided a value can be found where the residual is small enough.
#
#   Returns: Cint
function multiroot_test_residual(f::Ptr{gsl_vector}, epsabs::Real)
    errno = ccall( (:gsl_multiroot_test_residual, libgsl), Cint,
        (Ptr{gsl_vector}, Cdouble), f, epsabs )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    gslerrno
end
