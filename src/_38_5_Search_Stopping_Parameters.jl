#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 38.5 Search Stopping Parameters #
###################################
export multifit_test_delta, multifit_test_gradient, multifit_gradient






# This function tests for the convergence of the sequence by comparing the last
# step dx with the absolute error epsabs and relative error epsrel to the
# current position x.  The test returns GSL_SUCCESS if the following condition
# is achieved,                 |dx_i| < epsabs + epsrel |x_i|  for each
# component of x and returns GSL_CONTINUE otherwise.
# 
#   Returns: Cint
function multifit_test_delta(dx::Ptr{gsl_vector}, x::Ptr{gsl_vector}, epsabs::Real, epsrel::Real)
    errno = ccall( (:gsl_multifit_test_delta, libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}, Cdouble, Cdouble), dx, x, epsabs,
        epsrel )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function tests the residual gradient g against the absolute error bound
# epsabs.  Mathematically, the gradient should be exactly zero at the minimum.
# The test returns GSL_SUCCESS if the following condition is achieved,
# \sum_i |g_i| < epsabs  and returns GSL_CONTINUE otherwise.  This criterion is
# suitable for situations where the precise location of the minimum, x, is
# unimportant provided a value can be found where the gradient is small enough.
# 
#   Returns: Cint
function multifit_test_gradient(g::Ptr{gsl_vector}, epsabs::Real)
    errno = ccall( (:gsl_multifit_test_gradient, libgsl), Cint,
        (Ptr{gsl_vector}, Cdouble), g, epsabs )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function computes the gradient g of \Phi(x) = (1/2) ||F(x)||^2 from the
# Jacobian matrix J and the function values f, using the formula g = J^T f.
# 
#   Returns: Cint
function multifit_gradient(J::Ptr{gsl_matrix}, f::Ptr{gsl_vector})
    g = Ref{gsl_vector}()
    errno = ccall( (:gsl_multifit_gradient, libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), J, f, g )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(g)
end
