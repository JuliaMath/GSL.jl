#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 20.4 The Bivariate Gaussian Distribution #
############################################
export ran_bivariate_gaussian, ran_bivariate_gaussian_pdf




# This function generates a pair of correlated Gaussian variates, with mean
# zero, correlation coefficient rho and standard deviations sigma_x and sigma_y
# in the x and y directions.  The probability distribution for bivariate
# Gaussian random variates is,                 p(x,y) dx dy = {1 \over 2 \pi
# \sigma_x \sigma_y \sqrt{1-\rho^2}} \exp (-(x^2/\sigma_x^2 + y^2/\sigma_y^2 -
# 2 \rho x y/(\sigma_x\sigma_y))/2(1-\rho^2)) dx dy  for x,y in the range
# -\infty to +\infty.  The correlation coefficient rho should lie between 1 and
# -1.
# 
#   Returns: Void
function ran_bivariate_gaussian(r::Ptr{gsl_rng}, sigma_x::Real, sigma_y::Real, rho::Real)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_ran_bivariate_gaussian, :libgsl), Void, (Ptr{gsl_rng},
        Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), r, sigma_x,
        sigma_y, rho, x, y )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# This function computes the probability density p(x,y) at (x,y) for a
# bivariate Gaussian distribution with standard deviations sigma_x, sigma_y and
# correlation coefficient rho, using the formula given above.
# 
#   Returns: Cdouble
function ran_bivariate_gaussian_pdf(x::Real, y::Real, sigma_x::Real, sigma_y::Real, rho::Real)
    ccall( (:gsl_ran_bivariate_gaussian_pdf, :libgsl), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble, Cdouble), x, y, sigma_x, sigma_y, rho )
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number ran_bivariate_gaussian_pdf
