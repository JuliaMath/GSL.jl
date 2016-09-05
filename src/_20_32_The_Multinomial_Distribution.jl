#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 20.32 The Multinomial Distribution #
######################################
export ran_multinomial, ran_multinomial_pdf, ran_multinomial_lnpdf




#  This function computes a random sample n[] from the multinomial distribution
# formed by N trials from an underlying distribution p[K]. The distribution
# function for n[] is,                 P(n_1, n_2, ..., n_K) =
# (N!/(n_1! n_2! ... n_K!)) p_1^n_1 p_2^n_2 ... p_K^n_K  where  (n_1, n_2, ...,
# n_K) are nonnegative integers with  sum_{k=1}^K n_k = N, and  (p_1, p_2, ...,
# p_K) is a probability distribution with \sum p_i = 1.  If the array p[K] is
# not normalized then its entries will be treated as weights and normalized
# appropriately.  The arrays n[] and p[] must both be of length K.
# Random variates are generated using the conditional binomial method (see C.S.
# Davis, The computer generation of multinomial random variates, Comp. Stat.
# Data Anal. 16 (1993) 205–217 for details).
# 
#   Returns: Void
function ran_multinomial(r::Ref{gsl_rng}, K::Integer, N::Integer, p::Real)
    ccall( (:gsl_ran_multinomial, libgsl), Void, (Ref{gsl_rng}, Csize_t,
        Cuint, Cdouble), r, K, N, p )
end


# This function computes the probability  P(n_1, n_2, ..., n_K) of sampling
# n[K] from a multinomial distribution with parameters p[K], using the formula
# given above.
# 
#   Returns: Cdouble
function ran_multinomial_pdf(K::Integer, p::Real)
    ccall( (:gsl_ran_multinomial_pdf, libgsl), Cdouble, (Csize_t,
        Cdouble), K, p )
end
Compat.@dep_vectorize_2arg Number ran_multinomial_pdf


# This function returns the logarithm of the probability for the multinomial
# distribution  P(n_1, n_2, ..., n_K) with parameters p[K].
# 
#   Returns: Cdouble
function ran_multinomial_lnpdf(K::Integer, p::Real)
    ccall( (:gsl_ran_multinomial_lnpdf, libgsl), Cdouble, (Csize_t,
        Cdouble), K, p )
end
Compat.@dep_vectorize_2arg Number ran_multinomial_lnpdf
