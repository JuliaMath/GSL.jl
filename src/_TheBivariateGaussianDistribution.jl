#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 20.4 The Bivariate Gaussian Distribution #
############################################
export gsl_ran_bivariate_gaussian, gsl_ran_bivariate_gaussian_pdf


### Function uses unknown type; disabled
### # This function generates a pair of correlated Gaussian variates, with mean
# zero, correlation coefficient rho and standard deviations sigma_x and sigma_y
# in the x and y directions.  The probability distribution for bivariate
# Gaussian random variates is,                 p(x,y) dx dy = {1 \over 2 \pi
# \sigma_x \sigma_y \sqrt{1-\rho^2}} \exp (-(x^2/\sigma_x^2 + y^2/\sigma_y^2 -
# 2 \rho x y/(\sigma_x\sigma_y))/2(1-\rho^2)) dx dy  for x,y in the range
# -\infty to +\infty.  The correlation coefficient rho should lie between 1 and
# -1.
# 
### #   Returns: Void
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_bivariate_gaussian (r::Ptr{gsl_rng}, sigma_x::Cdouble, sigma_y::Cdouble, rho::Cdouble, x::Ptr{Cdouble}, y::Ptr{Cdouble})
###     ccall( (:gsl_ran_bivariate_gaussian, "libgsl"), Void, (Ptr{gsl_rng},
###         Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), r, sigma_x,
###         sigma_y, rho, x, y )
### end


# This function computes the probability density p(x,y) at (x,y) for a
# bivariate Gaussian distribution with standard deviations sigma_x, sigma_y and
# correlation coefficient rho, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_bivariate_gaussian_pdf (x::Cdouble, y::Cdouble, sigma_x::Cdouble, sigma_y::Cdouble, rho::Cdouble)
    ccall( (:gsl_ran_bivariate_gaussian_pdf, "libgsl"), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble), x, y, sigma_x, sigma_y, rho )
end