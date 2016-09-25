#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 20.2 The Gaussian Distribution #
##################################
export ran_gaussian, ran_gaussian_pdf, ran_gaussian_ziggurat,
       ran_gaussian_ratio_method, ran_ugaussian, ran_ugaussian_pdf,
       ran_ugaussian_ratio_method, cdf_gaussian_P, cdf_gaussian_Q,
       cdf_gaussian_Pinv, cdf_gaussian_Qinv, cdf_ugaussian_P, cdf_ugaussian_Q,
       cdf_ugaussian_Pinv, cdf_ugaussian_Qinv




# This function returns a Gaussian random variate, with mean zero and standard
# deviation sigma.  The probability distribution for Gaussian random variates
# is,                 p(x) dx = {1 \over \sqrt{2 \pi \sigma^2}} \exp (-x^2 /
# 2\sigma^2) dx  for x in the range -\infty to +\infty.  Use the transformation
# z = \mu + x on the numbers returned by gsl_ran_gaussian to obtain a Gaussian
# distribution with mean \mu.  This function uses the Box-Muller algorithm
# which requires two calls to the random number generator r.
# 
#   Returns: Cdouble
function ran_gaussian(r::Ref{gsl_rng}, sigma::Real)
    ccall( (:gsl_ran_gaussian, libgsl), Cdouble, (Ref{gsl_rng}, Cdouble),
        r, sigma )
end


# This function computes the probability density p(x) at x for a Gaussian
# distribution with standard deviation sigma, using the formula given above.
# 
#   Returns: Cdouble
function ran_gaussian_pdf(x::Real, sigma::Real)
    ccall( (:gsl_ran_gaussian_pdf, libgsl), Cdouble, (Cdouble, Cdouble),
        x, sigma )
end
Compat.@dep_vectorize_2arg Number ran_gaussian_pdf


# This function computes a Gaussian random variate using the alternative
# Marsaglia-Tsang ziggurat and Kinderman-Monahan-Leva ratio methods.  The
# Ziggurat algorithm is the fastest available algorithm in most cases.
# 
#   Returns: Cdouble
function ran_gaussian_ziggurat(r::Ref{gsl_rng}, sigma::Real)
    ccall( (:gsl_ran_gaussian_ziggurat, libgsl), Cdouble, (Ref{gsl_rng},
        Cdouble), r, sigma )
end


# This function computes a Gaussian random variate using the alternative
# Marsaglia-Tsang ziggurat and Kinderman-Monahan-Leva ratio methods.  The
# Ziggurat algorithm is the fastest available algorithm in most cases.
# 
#   Returns: Cdouble
function ran_gaussian_ratio_method(r::Ref{gsl_rng}, sigma::Real)
    ccall( (:gsl_ran_gaussian_ratio_method, libgsl), Cdouble,
        (Ref{gsl_rng}, Cdouble), r, sigma )
end


# These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
#   Returns: Cdouble
function ran_ugaussian(r::Ref{gsl_rng})
    ccall( (:gsl_ran_ugaussian, libgsl), Cdouble, (Ref{gsl_rng}, ), r )
end


# These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
#   Returns: Cdouble
function ran_ugaussian_pdf(x::Real)
    ccall( (:gsl_ran_ugaussian_pdf, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number ran_ugaussian_pdf


# These functions compute results for the unit Gaussian distribution.  They are
# equivalent to the functions above with a standard deviation of one, sigma =
# 1.
# 
#   Returns: Cdouble
function ran_ugaussian_ratio_method(r::Ref{gsl_rng})
    ccall( (:gsl_ran_ugaussian_ratio_method, libgsl), Cdouble,
        (Ref{gsl_rng}, ), r )
end


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function cdf_gaussian_P(x::Real, sigma::Real)
    ccall( (:gsl_cdf_gaussian_P, libgsl), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end
Compat.@dep_vectorize_2arg Number cdf_gaussian_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function cdf_gaussian_Q(x::Real, sigma::Real)
    ccall( (:gsl_cdf_gaussian_Q, libgsl), Cdouble, (Cdouble, Cdouble), x,
        sigma )
end
Compat.@dep_vectorize_2arg Number cdf_gaussian_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function cdf_gaussian_Pinv(P::Real, sigma::Real)
    ccall( (:gsl_cdf_gaussian_Pinv, libgsl), Cdouble, (Cdouble, Cdouble),
        P, sigma )
end
Compat.@dep_vectorize_2arg Number cdf_gaussian_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the Gaussian distribution with standard deviation sigma.
# 
#   Returns: Cdouble
function cdf_gaussian_Qinv(Q::Real, sigma::Real)
    ccall( (:gsl_cdf_gaussian_Qinv, libgsl), Cdouble, (Cdouble, Cdouble),
        Q, sigma )
end
Compat.@dep_vectorize_2arg Number cdf_gaussian_Qinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function cdf_ugaussian_P(x::Real)
    ccall( (:gsl_cdf_ugaussian_P, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number cdf_ugaussian_P


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function cdf_ugaussian_Q(x::Real)
    ccall( (:gsl_cdf_ugaussian_Q, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number cdf_ugaussian_Q


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function cdf_ugaussian_Pinv(P::Real)
    ccall( (:gsl_cdf_ugaussian_Pinv, libgsl), Cdouble, (Cdouble, ), P )
end
Compat.@dep_vectorize_1arg Number cdf_ugaussian_Pinv


# These functions compute the cumulative distribution functions P(x), Q(x) and
# their inverses for the unit Gaussian distribution.
# 
#   Returns: Cdouble
function cdf_ugaussian_Qinv(Q::Real)
    ccall( (:gsl_cdf_ugaussian_Qinv, libgsl), Cdouble, (Cdouble, ), Q )
end
Compat.@dep_vectorize_1arg Number cdf_ugaussian_Qinv
