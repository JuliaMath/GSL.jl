#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################
# 7.22 Laguerre Functions #
###########################
export gsl_sf_laguerre_1, gsl_sf_laguerre_2, gsl_sf_laguerre_3,
       gsl_sf_laguerre_1_e, gsl_sf_laguerre_2_e, gsl_sf_laguerre_3_e,
       gsl_sf_laguerre_n, gsl_sf_laguerre_n_e


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_laguerre_1 (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_laguerre_1, "libgsl"), Cdouble, (Cdouble, Cdouble), a,
        x )
end


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_2 (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_laguerre_2, "libgsl"), Cdouble, (Cdouble, Cdouble), a,
        x )
end


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cdouble
function gsl_sf_laguerre_3 (a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_laguerre_3, "libgsl"), Cdouble, (Cdouble, Cdouble), a,
        x )
end


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_1_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_laguerre_1_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_2_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_laguerre_2_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end


# These routines evaluate the generalized Laguerre polynomials L^a_1(x),
# L^a_2(x), L^a_3(x) using explicit representations.
# 
#   Returns: Cint
function gsl_sf_laguerre_3_e (a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_laguerre_3_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), a, x, result )
end


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   {$n \ge 0$} 
#   Domain: a > -1.0, n >= 0 
#   Evaluate generalized Laguerre polynomials. 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_laguerre_n (n::Cint, a::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_laguerre_n, "libgsl"), Cdouble, (Cint, Cdouble,
        Cdouble), n, a, x )
end


# These routines evaluate the generalized Laguerre polynomials L^a_n(x) for a >
# -1,  n >= 0.
# 
#   Returns: Cint
function gsl_sf_laguerre_n_e (n::Cint, a::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_laguerre_n_e, "libgsl"), Cint, (Cint, Cdouble, Cdouble,
        Ptr{gsl_sf_result}), n, a, x, result )
end