#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 36.6 Stopping Criteria #
##########################
export gsl_multimin_test_gradient, gsl_multimin_test_size




# This function tests the norm of the gradient g against the absolute tolerance
# epsabs. The gradient of a multidimensional function goes to zero at a
# minimum. The test returns GSL_SUCCESS if the following condition is achieved,
# |g| < epsabs  and returns GSL_CONTINUE otherwise.  A suitable choice of
# epsabs can be made from the desired accuracy in the function for small
# variations in x.  The relationship between these quantities is given by
# \delta f = g \delta x.
# 
#   Returns: Cint
function gsl_multimin_test_gradient(g::Ptr{gsl_vector}, epsabs::Real)
    gsl_errno = ccall( (:gsl_multimin_test_gradient, :libgsl), Cint,
        (Ptr{gsl_vector}, Cdouble), g, epsabs )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function tests the minimizer specific characteristic size (if applicable
# to the used minimizer) against absolute tolerance epsabs.  The test returns
# GSL_SUCCESS if the size is smaller than tolerance, otherwise GSL_CONTINUE is
# returned.
# 
#   Returns: Cint
function gsl_multimin_test_size(size::Real, epsabs::Real)
    gsl_errno = ccall( (:gsl_multimin_test_size, :libgsl), Cint, (Cdouble,
        Cdouble), size, epsabs )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end
@vectorize_2arg Number gsl_multimin_test_size
