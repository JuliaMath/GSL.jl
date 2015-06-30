#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 20.13 The Levy skew alpha-Stable Distribution #
#################################################
export ran_levy_skew




# This function returns a random variate from the Levy skew stable distribution
# with scale c, exponent alpha and skewness parameter beta.  The skewness
# parameter must lie in the range [-1,1].  The Levy skew stable probability
# distribution is defined by a Fourier transform,                 p(x) = {1
# \over 2 \pi} \int_{-\infty}^{+\infty} dt \exp(-it x - |c t|^alpha (1-i beta
# sign(t) tan(pi alpha/2)))  When \alpha = 1 the term \tan(\pi \alpha/2) is
# replaced by -(2/\pi)\log|t|.  There is no explicit solution for the form of
# p(x) and the library does not define a corresponding pdf function.  For
# \alpha = 2 the distribution reduces to a Gaussian distribution with  \sigma =
# \sqrt{2} c and the skewness parameter has no effect.  For \alpha < 1 the
# tails of the distribution become extremely wide.  The symmetric distribution
# corresponds to \beta = 0.          The algorithm only works for  0 < alpha <=
# 2.
# 
#   Returns: Cdouble
function ran_levy_skew(r::Ptr{gsl_rng}, c::Real, alpha::Real, beta::Real)
    ccall( (:gsl_ran_levy_skew, libgsl), Cdouble, (Ptr{gsl_rng}, Cdouble,
        Cdouble, Cdouble), r, c, alpha, beta )
end
