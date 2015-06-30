#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################################
# 38.8 Computing the covariance matrix of best fit parameters #
###############################################################
export multifit_covar






# This function uses the Jacobian matrix J to compute the covariance matrix of
# the best-fit parameters, covar.  The parameter epsrel is used to remove
# linear-dependent columns when J is rank deficient.          The covariance
# matrix is given by,                 covar = (J^T J)^{-1}  and is computed by
# QR decomposition of J with column-pivoting.  Any columns of R which satisfy
# |R_{kk}| <= epsrel |R_{11}|  are considered linearly-dependent and are
# excluded from the covariance matrix (the corresponding rows and columns of
# the covariance matrix are set to zero).          If the minimisation uses the
# weighted least-squares function f_i = (Y(x, t_i) - y_i) / \sigma_i then the
# covariance matrix above gives the statistical error on the best-fit
# parameters resulting from the Gaussian errors \sigma_i on the underlying data
# y_i.  This can be verified from the relation \delta f = J \delta c and the
# fact that the fluctuations in f from the data y_i are normalised by \sigma_i
# and so satisfy  <\delta f \delta f^T> = I.          For an unweighted least-
# squares function f_i = (Y(x, t_i) - y_i) the covariance matrix above should
# be multiplied by the variance of the residuals about the best-fit \sigma^2 =
# \sum (y_i - Y(x,t_i))^2 / (n-p) to give the variance-covariance matrix
# \sigma^2 C.  This estimates the statistical error on the best-fit parameters
# from the scatter of the underlying data.          For more information about
# covariance matrices see Fitting Overview.
# 
#   Returns: Cint
function multifit_covar(J::Ptr{gsl_matrix}, epsrel::Real)
    covar = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_multifit_covar, libgsl), Cint, (Ptr{gsl_matrix},
        Cdouble, Ptr{gsl_matrix}), J, epsrel, covar )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(covar)
end
