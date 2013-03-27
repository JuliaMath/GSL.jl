#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 7.28.3 Polygamma Function #
#############################
export gsl_sf_psi_n, gsl_sf_psi_n_e


# These routines compute the polygamma function  \psi^{(n)}(x) for  n >= 0, x >
# 0.
# 
#   {$\psi^{(n)}(x)$} 
#   {$n \ge 0$} 
#   Domain: n >= 0, x > 0.0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_psi_n (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_psi_n, "libgsl"), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the polygamma function  \psi^{(n)}(x) for  n >= 0, x >
# 0.
# 
#   Returns: Cint
function gsl_sf_psi_n_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_psi_n_e, "libgsl"), Cint, (Cint, Cdouble,
        Ptr{gsl_sf_result}), n, x, result )
end