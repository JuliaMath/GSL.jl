#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 7.20 Gegenbauer Functions #
#############################
export gsl_sf_gegenpoly_1, gsl_sf_gegenpoly_2, gsl_sf_gegenpoly_3,
       gsl_sf_gegenpoly_1_e, gsl_sf_gegenpoly_2_e, gsl_sf_gegenpoly_3_e,
       gsl_sf_gegenpoly_n, gsl_sf_gegenpoly_n_e, gsl_sf_gegenpoly_array


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
#   {$C^{(\lambda)}_n(x)$} 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_gegenpoly_1 (lambda::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gegenpoly_1, "libgsl"), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
#   Returns: Cdouble
function gsl_sf_gegenpoly_2 (lambda::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gegenpoly_2, "libgsl"), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end


# These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
#   Returns: Cdouble
function gsl_sf_gegenpoly_3 (lambda::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gegenpoly_3, "libgsl"), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end


### Function uses unknown type; disabled
### # These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_gegenpoly_1_e (lambda::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_gegenpoly_1_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), lambda, x, result )
### end


### Function uses unknown type; disabled
### # These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_gegenpoly_2_e (lambda::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_gegenpoly_2_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), lambda, x, result )
### end


### Function uses unknown type; disabled
### # These functions evaluate the Gegenbauer polynomials  C^{(\lambda)}_n(x) using
# explicit representations for n =1, 2, 3.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_gegenpoly_3_e (lambda::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_gegenpoly_3_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), lambda, x, result )
### end


# These functions evaluate the Gegenbauer polynomial  C^{(\lambda)}_n(x) for a
# specific value of n, lambda, x subject to \lambda > -1/2,  n >= 0.
# 
#   {$C^{(\lambda)}_n(x)$} 
#   {$n \ge 0$} 
#   Domain: lambda > -1/2, n >= 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_gegenpoly_n (n::Cint, lambda::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_gegenpoly_n, "libgsl"), Cdouble, (Cint, Cdouble,
        Cdouble), n, lambda, x )
end


### Function uses unknown type; disabled
### # These functions evaluate the Gegenbauer polynomial  C^{(\lambda)}_n(x) for a
# specific value of n, lambda, x subject to \lambda > -1/2,  n >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_gegenpoly_n_e (n::Cint, lambda::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_gegenpoly_n_e, "libgsl"), Cint, (Cint, Cdouble,
###         Cdouble, Ptr{gsl_sf_result}), n, lambda, x, result )
### end


# This function computes an array of Gegenbauer polynomials  C^{(\lambda)}_n(x)
# for n = 0, 1, 2, \dots, nmax, subject to \lambda > -1/2,  nmax >= 0.
# 
#   {$C^{(\lambda)}_n(x)$} 
#   {$nmax \ge 0$} 
#   Conditions: n = 0, 1, 2, ... nmax 
#   Domain: lambda > -1/2, nmax >= 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cint
function gsl_sf_gegenpoly_array (nmax::Cint, lambda::Cdouble, x::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_gegenpoly_array, "libgsl"), Cint, (Cint, Cdouble,
        Cdouble, Cdouble), nmax, lambda, x, result_array )
end