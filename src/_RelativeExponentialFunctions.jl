#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 7.16.2 Relative Exponential Functions #
#########################################
export gsl_sf_expm1, gsl_sf_expm1_e, gsl_sf_exprel, gsl_sf_exprel_e,
       gsl_sf_exprel_2, gsl_sf_exprel_2_e, gsl_sf_exprel_n, gsl_sf_exprel_n_e




# These routines compute the quantity \exp(x)-1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function gsl_sf_expm1 (x::Cdouble)
    ccall( (:gsl_sf_expm1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the quantity \exp(x)-1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function gsl_sf_expm1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_expm1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the quantity (\exp(x)-1)/x using an algorithm that is
# accurate for small x.  For small x the algorithm is based on the expansion
# (\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots.
# 
#   Returns: Cdouble
function gsl_sf_exprel (x::Cdouble)
    ccall( (:gsl_sf_exprel, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the quantity (\exp(x)-1)/x using an algorithm that is
# accurate for small x.  For small x the algorithm is based on the expansion
# (\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots.
# 
#   Returns: Cint
function gsl_sf_exprel_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_exprel_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the quantity 2(\exp(x)-1-x)/x^2 using an algorithm
# that is accurate for small x.  For small x the algorithm is based on the
# expansion 2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots.
# 
#   Returns: Cdouble
function gsl_sf_exprel_2 (x::Cdouble)
    ccall( (:gsl_sf_exprel_2, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the quantity 2(\exp(x)-1-x)/x^2 using an algorithm
# that is accurate for small x.  For small x the algorithm is based on the
# expansion 2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots.
# 
#   Returns: Cint
function gsl_sf_exprel_2_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_exprel_2_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the N-relative exponential, which is the n-th
# generalization of the functions gsl_sf_exprel and gsl_sf_exprel_2.  The
# N-relative exponential is given by,                 exprel_N(x) = N!/x^N
# (\exp(x) - \sum_{k=0}^{N-1} x^k/k!)                       = 1 + x/(N+1) +
# x^2/((N+1)(N+2)) + ...                       = 1F1 (1,1+N,x)
# 
#   Returns: Cdouble
function gsl_sf_exprel_n (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_exprel_n, "libgsl"), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the N-relative exponential, which is the n-th
# generalization of the functions gsl_sf_exprel and gsl_sf_exprel_2.  The
# N-relative exponential is given by,                 exprel_N(x) = N!/x^N
# (\exp(x) - \sum_{k=0}^{N-1} x^k/k!)                       = 1 + x/(N+1) +
# x^2/((N+1)(N+2)) + ...                       = 1F1 (1,1+N,x)
# 
#   Returns: Cint
function gsl_sf_exprel_n_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_exprel_n_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, x, result )
end
