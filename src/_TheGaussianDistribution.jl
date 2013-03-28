#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.2 The Gaussian Distribution #
##################################
export gsl_ran_gaussian, gsl_ran_gaussian_pdf, gsl_ran_gaussian_ziggurat,
       gsl_ran_gaussian_ratio_method, gsl_ran_ugaussian, gsl_ran_ugaussian_pdf,
       gsl_ran_ugaussian_ratio_method, gsl_cdf_gaussian_P, gsl_cdf_gaussian_Q,
       gsl_cdf_gaussian_Pinv, gsl_cdf_gaussian_Qinv, gsl_cdf_ugaussian_P,
       gsl_cdf_ugaussian_Q, gsl_cdf_ugaussian_Pinv, gsl_cdf_ugaussian_Qinv


### Function uses unknown type; disabled
### # This function returns a Gaussian random variate, with mean zero and standard
# deviation sigma.  The probability distribution for Gaussian random variates
# is,                 p(x) dx = {1 \over \sqrt{2 \pi \sigma^2}} \exp (-x^2 /
# 2\sigma^2) dx  for x in the range -\infty to +\infty.  Use the transformation
# z = \mu + x on the numbers returned by gsl_ran_gaussian to obtain a Gaussian
# distribution with mean \mu.  This function uses the Box-Muller algorithm
# which requires two calls to the random number generator r.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_gaussian (r::Ptr{gsl_rng}, sigma::Cdouble)
###     ccall( (:gsl_ran_gaussian, "libgsl"), Cdouble, (Ptr{gsl_rng}, Cdouble),
###         r, sigma )
### end


# This function computes the probability density p(x) at x for a Gaussian
# distribution with standard deviation sigma, using the formula given above.
# 
#   Returns: Cdouble
function gsl_ran_gaussian_pdf (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_ran_gaussian_pdf, "libgsl"), Cdouble, (Cdouble, Cdouble),
        x, sigma )
end


### Function uses unknown type; disabled
### # This function computes a Gaussian random variate using the alternative
# Marsaglia-Tsang ziggurat and Kinderman-Monahan-Leva ratio methods.  The
# Ziggurat algorithm is the fastest available algorithm in most cases.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_gaussian_ziggurat (r::Ptr{gsl_rng}, sigma::Cdouble)
###     ccall( (:gsl_ran_gaussian_ziggurat, "libgsl"), Cdouble, (Ptr{gsl_rng},
###         Cdouble), r, sigma )
### end


### Function uses unknown type; disabled
### # This function computes a Gaussian random variate using the alternative
# Marsaglia-Tsang ziggurat and Kinderman-Monahan-Leva ratio methods.  The
# Ziggurat algorithm is the fastest available algorithm in most cases.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_gaussian_ratio_method (r::Ptr{gsl_rng}, sigma::Cdouble)
###     ccall( (:gsl_ran_gaussian_ratio_method, "libgsl"), Cdouble,
###         (Ptr{gsl_rng}, Cdouble), r, sigma )
### end


### Function uses unknown type; disabled
### # These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_ugaussian (r::Ptr{gsl_rng})
###     ccall( (:gsl_ran_ugaussian, "libgsl"), Cdouble, (Ptr{gsl_rng}, ), r )
### end


# These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
#   Returns: Cdouble
function gsl_ran_ugaussian_pdf (x::Cdouble)
    ccall( (:gsl_ran_ugaussian_pdf, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
### #   Returns: Cdouble
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_ugaussian_ratio_method (r::Ptr{gsl_rng})
###     ccall( (:gsl_ran_ugaussian_ratio_method, "libgsl"), Cdouble,
###         (Ptr{gsl_rng}, ), r )
### end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function gsl_cdf_gaussian_P (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_gaussian_P, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function gsl_cdf_gaussian_Q (x::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_gaussian_Q, "libgsl"), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function gsl_cdf_gaussian_Pinv (P::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_gaussian_Pinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        P, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function gsl_cdf_gaussian_Qinv (Q::Cdouble, sigma::Cdouble)
    ccall( (:gsl_cdf_gaussian_Qinv, "libgsl"), Cdouble, (Cdouble, Cdouble),
        Q, sigma )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function gsl_cdf_ugaussian_P (x::Cdouble)
    ccall( (:gsl_cdf_ugaussian_P, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function gsl_cdf_ugaussian_Q (x::Cdouble)
    ccall( (:gsl_cdf_ugaussian_Q, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function gsl_cdf_ugaussian_Pinv (P::Cdouble)
    ccall( (:gsl_cdf_ugaussian_Pinv, "libgsl"), Cdouble, (Cdouble, ), P )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function gsl_cdf_ugaussian_Qinv (Q::Cdouble)
    ccall( (:gsl_cdf_ugaussian_Qinv, "libgsl"), Cdouble, (Cdouble, ), Q )
end